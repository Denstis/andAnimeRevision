package com.google.android.exoplayer2.extractor.wav;

import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.SeekPoint;
import com.google.android.exoplayer2.util.Util;

/* JADX INFO: loaded from: classes.dex */
final class WavHeader implements SeekMap {
    private final int averageBytesPerSecond;
    private final int bitsPerSample;
    private final int blockAlignment;
    private long dataSize;
    private long dataStartPosition;
    private final int encoding;
    private final int numChannels;
    private final int sampleRateHz;

    public WavHeader(int i2, int i3, int i4, int i5, int i6, int i7) {
        this.numChannels = i2;
        this.sampleRateHz = i3;
        this.averageBytesPerSecond = i4;
        this.blockAlignment = i5;
        this.bitsPerSample = i6;
        this.encoding = i7;
    }

    public int getBitrate() {
        return this.sampleRateHz * this.bitsPerSample * this.numChannels;
    }

    public int getBytesPerFrame() {
        return this.blockAlignment;
    }

    public long getDataLimit() {
        if (hasDataBounds()) {
            return this.dataStartPosition + this.dataSize;
        }
        return -1L;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public long getDurationUs() {
        return ((this.dataSize / ((long) this.blockAlignment)) * 1000000) / ((long) this.sampleRateHz);
    }

    public int getEncoding() {
        return this.encoding;
    }

    public int getNumChannels() {
        return this.numChannels;
    }

    public int getSampleRateHz() {
        return this.sampleRateHz;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j2) {
        long j3 = (((long) this.averageBytesPerSecond) * j2) / 1000000;
        int i2 = this.blockAlignment;
        long jConstrainValue = Util.constrainValue((j3 / ((long) i2)) * ((long) i2), 0L, this.dataSize - ((long) i2));
        long j4 = this.dataStartPosition + jConstrainValue;
        long timeUs = getTimeUs(j4);
        SeekPoint seekPoint = new SeekPoint(timeUs, j4);
        if (timeUs < j2) {
            long j5 = this.dataSize;
            int i3 = this.blockAlignment;
            if (jConstrainValue != j5 - ((long) i3)) {
                long j6 = j4 + ((long) i3);
                return new SeekMap.SeekPoints(seekPoint, new SeekPoint(getTimeUs(j6), j6));
            }
        }
        return new SeekMap.SeekPoints(seekPoint);
    }

    public long getTimeUs(long j2) {
        return (Math.max(0L, j2 - this.dataStartPosition) * 1000000) / ((long) this.averageBytesPerSecond);
    }

    public boolean hasDataBounds() {
        return (this.dataStartPosition == 0 || this.dataSize == 0) ? false : true;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }

    public void setDataBounds(long j2, long j3) {
        this.dataStartPosition = j2;
        this.dataSize = j3;
    }
}
