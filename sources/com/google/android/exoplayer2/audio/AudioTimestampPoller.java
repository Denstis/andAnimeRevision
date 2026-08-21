package com.google.android.exoplayer2.audio;

import android.annotation.TargetApi;
import android.media.AudioTimestamp;
import android.media.AudioTrack;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.util.Util;

/* JADX INFO: loaded from: classes.dex */
final class AudioTimestampPoller {
    private static final int ERROR_POLL_INTERVAL_US = 500000;
    private static final int FAST_POLL_INTERVAL_US = 5000;
    private static final int INITIALIZING_DURATION_US = 500000;
    private static final int SLOW_POLL_INTERVAL_US = 10000000;
    private static final int STATE_ERROR = 4;
    private static final int STATE_INITIALIZING = 0;
    private static final int STATE_NO_TIMESTAMP = 3;
    private static final int STATE_TIMESTAMP = 1;
    private static final int STATE_TIMESTAMP_ADVANCING = 2;
    private final AudioTimestampV19 audioTimestamp;
    private long initialTimestampPositionFrames;
    private long initializeSystemTimeUs;
    private long lastTimestampSampleTimeUs;
    private long sampleIntervalUs;
    private int state;

    @TargetApi(19)
    private static final class AudioTimestampV19 {
        private final AudioTimestamp audioTimestamp = new AudioTimestamp();
        private final AudioTrack audioTrack;
        private long lastTimestampPositionFrames;
        private long lastTimestampRawPositionFrames;
        private long rawTimestampFramePositionWrapCount;

        public AudioTimestampV19(AudioTrack audioTrack) {
            this.audioTrack = audioTrack;
        }

        public long getTimestampPositionFrames() {
            return this.lastTimestampPositionFrames;
        }

        public long getTimestampSystemTimeUs() {
            return this.audioTimestamp.nanoTime / 1000;
        }

        public boolean maybeUpdateTimestamp() {
            boolean timestamp = this.audioTrack.getTimestamp(this.audioTimestamp);
            if (timestamp) {
                long j2 = this.audioTimestamp.framePosition;
                if (this.lastTimestampRawPositionFrames > j2) {
                    this.rawTimestampFramePositionWrapCount++;
                }
                this.lastTimestampRawPositionFrames = j2;
                this.lastTimestampPositionFrames = j2 + (this.rawTimestampFramePositionWrapCount << 32);
            }
            return timestamp;
        }
    }

    public AudioTimestampPoller(AudioTrack audioTrack) {
        if (Util.SDK_INT >= 19) {
            this.audioTimestamp = new AudioTimestampV19(audioTrack);
            reset();
        } else {
            this.audioTimestamp = null;
            updateState(3);
        }
    }

    private void updateState(int i2) {
        this.state = i2;
        long j2 = DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS;
        if (i2 == 0) {
            this.lastTimestampSampleTimeUs = 0L;
            this.initialTimestampPositionFrames = -1L;
            this.initializeSystemTimeUs = System.nanoTime() / 1000;
        } else if (i2 != 1) {
            if (i2 == 2 || i2 == 3) {
                j2 = 10000000;
            } else {
                if (i2 != 4) {
                    throw new IllegalStateException();
                }
                j2 = 500000;
            }
        }
        this.sampleIntervalUs = j2;
    }

    public void acceptTimestamp() {
        if (this.state == 4) {
            reset();
        }
    }

    public long getTimestampPositionFrames() {
        AudioTimestampV19 audioTimestampV19 = this.audioTimestamp;
        if (audioTimestampV19 != null) {
            return audioTimestampV19.getTimestampPositionFrames();
        }
        return -1L;
    }

    public long getTimestampSystemTimeUs() {
        AudioTimestampV19 audioTimestampV19 = this.audioTimestamp;
        return audioTimestampV19 != null ? audioTimestampV19.getTimestampSystemTimeUs() : C.TIME_UNSET;
    }

    public boolean hasTimestamp() {
        int i2 = this.state;
        return i2 == 1 || i2 == 2;
    }

    public boolean isTimestampAdvancing() {
        return this.state == 2;
    }

    public boolean maybePollTimestamp(long j2) {
        AudioTimestampV19 audioTimestampV19 = this.audioTimestamp;
        if (audioTimestampV19 == null || j2 - this.lastTimestampSampleTimeUs < this.sampleIntervalUs) {
            return false;
        }
        this.lastTimestampSampleTimeUs = j2;
        boolean zMaybeUpdateTimestamp = audioTimestampV19.maybeUpdateTimestamp();
        int i2 = this.state;
        if (i2 == 0) {
            if (!zMaybeUpdateTimestamp) {
                if (j2 - this.initializeSystemTimeUs <= 500000) {
                    return zMaybeUpdateTimestamp;
                }
                updateState(3);
                return zMaybeUpdateTimestamp;
            }
            if (this.audioTimestamp.getTimestampSystemTimeUs() < this.initializeSystemTimeUs) {
                return false;
            }
            this.initialTimestampPositionFrames = this.audioTimestamp.getTimestampPositionFrames();
            updateState(1);
            return zMaybeUpdateTimestamp;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 == 4) {
                        return zMaybeUpdateTimestamp;
                    }
                    throw new IllegalStateException();
                }
                if (!zMaybeUpdateTimestamp) {
                    return zMaybeUpdateTimestamp;
                }
            } else if (zMaybeUpdateTimestamp) {
                return zMaybeUpdateTimestamp;
            }
        } else if (zMaybeUpdateTimestamp) {
            if (this.audioTimestamp.getTimestampPositionFrames() <= this.initialTimestampPositionFrames) {
                return zMaybeUpdateTimestamp;
            }
            updateState(2);
            return zMaybeUpdateTimestamp;
        }
        reset();
        return zMaybeUpdateTimestamp;
    }

    public void rejectTimestamp() {
        updateState(4);
    }

    public void reset() {
        if (this.audioTimestamp != null) {
            updateState(0);
        }
    }
}
