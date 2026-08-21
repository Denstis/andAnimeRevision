package com.google.android.exoplayer2.util;

/* JADX INFO: loaded from: classes.dex */
public final class FlacStreamInfo {
    public final int bitsPerSample;
    public final int channels;
    public final int maxBlockSize;
    public final int maxFrameSize;
    public final int minBlockSize;
    public final int minFrameSize;
    public final int sampleRate;
    public final long totalSamples;

    public FlacStreamInfo(int i2, int i3, int i4, int i5, int i6, int i7, int i8, long j2) {
        this.minBlockSize = i2;
        this.maxBlockSize = i3;
        this.minFrameSize = i4;
        this.maxFrameSize = i5;
        this.sampleRate = i6;
        this.channels = i7;
        this.bitsPerSample = i8;
        this.totalSamples = j2;
    }

    public FlacStreamInfo(byte[] bArr, int i2) {
        ParsableBitArray parsableBitArray = new ParsableBitArray(bArr);
        parsableBitArray.setPosition(i2 * 8);
        this.minBlockSize = parsableBitArray.readBits(16);
        this.maxBlockSize = parsableBitArray.readBits(16);
        this.minFrameSize = parsableBitArray.readBits(24);
        this.maxFrameSize = parsableBitArray.readBits(24);
        this.sampleRate = parsableBitArray.readBits(20);
        this.channels = parsableBitArray.readBits(3) + 1;
        this.bitsPerSample = parsableBitArray.readBits(5) + 1;
        this.totalSamples = ((((long) parsableBitArray.readBits(4)) & 15) << 32) | (((long) parsableBitArray.readBits(32)) & 4294967295L);
    }

    public int bitRate() {
        return this.bitsPerSample * this.sampleRate;
    }

    public long durationUs() {
        return (this.totalSamples * 1000000) / ((long) this.sampleRate);
    }

    public long getApproxBytesPerFrame() {
        long j2;
        long j3;
        int i2 = this.maxFrameSize;
        if (i2 > 0) {
            j2 = (((long) i2) + ((long) this.minFrameSize)) / 2;
            j3 = 1;
        } else {
            int i3 = this.minBlockSize;
            j2 = ((((i3 != this.maxBlockSize || i3 <= 0) ? 4096L : i3) * ((long) this.channels)) * ((long) this.bitsPerSample)) / 8;
            j3 = 64;
        }
        return j2 + j3;
    }

    public long getSampleIndex(long j2) {
        return Util.constrainValue((j2 * ((long) this.sampleRate)) / 1000000, 0L, this.totalSamples - 1);
    }

    public int maxDecodedFrameSize() {
        return this.maxBlockSize * this.channels * (this.bitsPerSample / 8);
    }
}
