package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.PlaybackParameters;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public interface AudioSink {
    public static final long CURRENT_POSITION_NOT_SET = Long.MIN_VALUE;

    public static final class ConfigurationException extends Exception {
        public ConfigurationException(String str) {
            super(str);
        }

        public ConfigurationException(Throwable th) {
            super(th);
        }
    }

    public static final class InitializationException extends Exception {
        public final int audioTrackState;

        public InitializationException(int i2, int i3, int i4, int i5) {
            super("AudioTrack init failed: " + i2 + ", Config(" + i3 + ", " + i4 + ", " + i5 + ")");
            this.audioTrackState = i2;
        }
    }

    public interface Listener {
        void onAudioSessionId(int i2);

        void onPositionDiscontinuity();

        void onUnderrun(int i2, long j2, long j3);
    }

    public static final class WriteException extends Exception {
        public final int errorCode;

        public WriteException(int i2) {
            super("AudioTrack write failed: " + i2);
            this.errorCode = i2;
        }
    }

    void configure(int i2, int i3, int i4, int i5, int[] iArr, int i6, int i7);

    void disableTunneling();

    void enableTunnelingV21(int i2);

    long getCurrentPositionUs(boolean z);

    PlaybackParameters getPlaybackParameters();

    boolean handleBuffer(ByteBuffer byteBuffer, long j2);

    void handleDiscontinuity();

    boolean hasPendingData();

    boolean isEnded();

    void pause();

    void play();

    void playToEndOfStream();

    void release();

    void reset();

    void setAudioAttributes(AudioAttributes audioAttributes);

    void setAudioSessionId(int i2);

    void setAuxEffectInfo(AuxEffectInfo auxEffectInfo);

    void setListener(Listener listener);

    PlaybackParameters setPlaybackParameters(PlaybackParameters playbackParameters);

    void setVolume(float f2);

    boolean supportsOutput(int i2, int i3);
}
