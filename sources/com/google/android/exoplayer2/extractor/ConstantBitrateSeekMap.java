package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.util.Util;

/* JADX INFO: loaded from: classes.dex */
public class ConstantBitrateSeekMap implements SeekMap {
    private final int bitrate;
    private final long dataSize;
    private final long durationUs;
    private final long firstFrameBytePosition;
    private final int frameSize;
    private final long inputLength;

    public ConstantBitrateSeekMap(long j2, long j3, int i2, int i3) {
        long timeUsAtPosition;
        this.inputLength = j2;
        this.firstFrameBytePosition = j3;
        this.frameSize = i3 == -1 ? 1 : i3;
        this.bitrate = i2;
        if (j2 == -1) {
            this.dataSize = -1L;
            timeUsAtPosition = C.TIME_UNSET;
        } else {
            this.dataSize = j2 - j3;
            timeUsAtPosition = getTimeUsAtPosition(j2, j3, i2);
        }
        this.durationUs = timeUsAtPosition;
    }

    private long getFramePositionForTimeUs(long j2) {
        long j3 = (j2 * ((long) this.bitrate)) / 8000000;
        int i2 = this.frameSize;
        return this.firstFrameBytePosition + Util.constrainValue((j3 / ((long) i2)) * ((long) i2), 0L, this.dataSize - ((long) i2));
    }

    private static long getTimeUsAtPosition(long j2, long j3, int i2) {
        return ((Math.max(0L, j2 - j3) * 8) * 1000000) / ((long) i2);
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j2) {
        if (this.dataSize == -1) {
            return new SeekMap.SeekPoints(new SeekPoint(0L, this.firstFrameBytePosition));
        }
        long framePositionForTimeUs = getFramePositionForTimeUs(j2);
        long timeUsAtPosition = getTimeUsAtPosition(framePositionForTimeUs);
        SeekPoint seekPoint = new SeekPoint(timeUsAtPosition, framePositionForTimeUs);
        if (timeUsAtPosition < j2) {
            int i2 = this.frameSize;
            if (((long) i2) + framePositionForTimeUs < this.inputLength) {
                long j3 = framePositionForTimeUs + ((long) i2);
                return new SeekMap.SeekPoints(seekPoint, new SeekPoint(getTimeUsAtPosition(j3), j3));
            }
        }
        return new SeekMap.SeekPoints(seekPoint);
    }

    public long getTimeUsAtPosition(long j2) {
        return getTimeUsAtPosition(j2, this.firstFrameBytePosition, this.bitrate);
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        return this.dataSize != -1;
    }
}
