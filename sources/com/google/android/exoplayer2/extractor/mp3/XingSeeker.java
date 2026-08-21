package com.google.android.exoplayer2.extractor.mp3;

import com.google.android.exoplayer2.extractor.MpegAudioHeader;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.SeekPoint;
import com.google.android.exoplayer2.extractor.mp3.Mp3Extractor;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;

/* JADX INFO: loaded from: classes.dex */
final class XingSeeker implements Mp3Extractor.Seeker {
    private static final String TAG = "XingSeeker";
    private final long dataEndPosition;
    private final long dataSize;
    private final long dataStartPosition;
    private final long durationUs;
    private final long[] tableOfContents;
    private final int xingFrameSize;

    private XingSeeker(long j2, int i2, long j3) {
        this(j2, i2, j3, -1L, null);
    }

    private XingSeeker(long j2, int i2, long j3, long j4, long[] jArr) {
        this.dataStartPosition = j2;
        this.xingFrameSize = i2;
        this.durationUs = j3;
        this.tableOfContents = jArr;
        this.dataSize = j4;
        this.dataEndPosition = j4 != -1 ? j2 + j4 : -1L;
    }

    public static XingSeeker create(long j2, long j3, MpegAudioHeader mpegAudioHeader, ParsableByteArray parsableByteArray) {
        int unsignedIntToInt;
        int i2 = mpegAudioHeader.samplesPerFrame;
        int i3 = mpegAudioHeader.sampleRate;
        int i4 = parsableByteArray.readInt();
        if ((i4 & 1) != 1 || (unsignedIntToInt = parsableByteArray.readUnsignedIntToInt()) == 0) {
            return null;
        }
        long jScaleLargeTimestamp = Util.scaleLargeTimestamp(unsignedIntToInt, ((long) i2) * 1000000, i3);
        if ((i4 & 6) != 6) {
            return new XingSeeker(j3, mpegAudioHeader.frameSize, jScaleLargeTimestamp);
        }
        long unsignedIntToInt2 = parsableByteArray.readUnsignedIntToInt();
        long[] jArr = new long[100];
        for (int i5 = 0; i5 < 100; i5++) {
            jArr[i5] = parsableByteArray.readUnsignedByte();
        }
        if (j2 != -1) {
            long j4 = j3 + unsignedIntToInt2;
            if (j2 != j4) {
                Log.w(TAG, "XING data size mismatch: " + j2 + ", " + j4);
            }
        }
        return new XingSeeker(j3, mpegAudioHeader.frameSize, jScaleLargeTimestamp, unsignedIntToInt2, jArr);
    }

    private long getTimeUsForTableIndex(int i2) {
        return (this.durationUs * ((long) i2)) / 100;
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.Mp3Extractor.Seeker
    public long getDataEndPosition() {
        return this.dataEndPosition;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j2) {
        if (!isSeekable()) {
            return new SeekMap.SeekPoints(new SeekPoint(0L, this.dataStartPosition + ((long) this.xingFrameSize)));
        }
        long jConstrainValue = Util.constrainValue(j2, 0L, this.durationUs);
        double d2 = jConstrainValue;
        Double.isNaN(d2);
        double d3 = this.durationUs;
        Double.isNaN(d3);
        double d4 = (d2 * 100.0d) / d3;
        double d5 = 0.0d;
        if (d4 > 0.0d) {
            if (d4 >= 100.0d) {
                d5 = 256.0d;
            } else {
                int i2 = (int) d4;
                double d6 = ((long[]) Assertions.checkNotNull(this.tableOfContents))[i2];
                double d7 = i2 == 99 ? 256.0d : r3[i2 + 1];
                double d8 = i2;
                Double.isNaN(d8);
                Double.isNaN(d6);
                Double.isNaN(d6);
                d5 = d6 + ((d4 - d8) * (d7 - d6));
            }
        }
        double d9 = this.dataSize;
        Double.isNaN(d9);
        return new SeekMap.SeekPoints(new SeekPoint(jConstrainValue, this.dataStartPosition + Util.constrainValue(Math.round((d5 / 256.0d) * d9), this.xingFrameSize, this.dataSize - 1)));
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.Mp3Extractor.Seeker
    public long getTimeUs(long j2) {
        double d2;
        long j3 = j2 - this.dataStartPosition;
        if (!isSeekable() || j3 <= this.xingFrameSize) {
            return 0L;
        }
        long[] jArr = (long[]) Assertions.checkNotNull(this.tableOfContents);
        double d3 = j3;
        Double.isNaN(d3);
        double d4 = this.dataSize;
        Double.isNaN(d4);
        double d5 = (d3 * 256.0d) / d4;
        int iBinarySearchFloor = Util.binarySearchFloor(jArr, (long) d5, true, true);
        long timeUsForTableIndex = getTimeUsForTableIndex(iBinarySearchFloor);
        long j4 = jArr[iBinarySearchFloor];
        int i2 = iBinarySearchFloor + 1;
        long timeUsForTableIndex2 = getTimeUsForTableIndex(i2);
        long j5 = iBinarySearchFloor == 99 ? 256L : jArr[i2];
        if (j4 == j5) {
            d2 = 0.0d;
        } else {
            double d6 = j4;
            Double.isNaN(d6);
            double d7 = j5 - j4;
            Double.isNaN(d7);
            d2 = (d5 - d6) / d7;
        }
        double d8 = timeUsForTableIndex2 - timeUsForTableIndex;
        Double.isNaN(d8);
        return timeUsForTableIndex + Math.round(d2 * d8);
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        return this.tableOfContents != null;
    }
}
