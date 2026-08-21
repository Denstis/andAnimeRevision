package com.google.android.exoplayer2.extractor.mp3;

import android.util.Pair;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.SeekPoint;
import com.google.android.exoplayer2.extractor.mp3.Mp3Extractor;
import com.google.android.exoplayer2.metadata.id3.MlltFrame;
import com.google.android.exoplayer2.util.Util;

/* JADX INFO: loaded from: classes.dex */
final class MlltSeeker implements Mp3Extractor.Seeker {
    private final long durationUs;
    private final long[] referencePositions;
    private final long[] referenceTimesMs;

    private MlltSeeker(long[] jArr, long[] jArr2) {
        this.referencePositions = jArr;
        this.referenceTimesMs = jArr2;
        this.durationUs = C.msToUs(jArr2[jArr2.length - 1]);
    }

    public static MlltSeeker create(long j2, MlltFrame mlltFrame) {
        int length = mlltFrame.bytesDeviations.length;
        int i2 = length + 1;
        long[] jArr = new long[i2];
        long[] jArr2 = new long[i2];
        jArr[0] = j2;
        long j3 = 0;
        jArr2[0] = 0;
        for (int i3 = 1; i3 <= length; i3++) {
            int i4 = i3 - 1;
            j2 += (long) (mlltFrame.bytesBetweenReference + mlltFrame.bytesDeviations[i4]);
            j3 += (long) (mlltFrame.millisecondsBetweenReference + mlltFrame.millisecondsDeviations[i4]);
            jArr[i3] = j2;
            jArr2[i3] = j3;
        }
        return new MlltSeeker(jArr, jArr2);
    }

    private static Pair<Long, Long> linearlyInterpolate(long j2, long[] jArr, long[] jArr2) {
        double d2;
        Long lValueOf;
        Long lValueOf2;
        int iBinarySearchFloor = Util.binarySearchFloor(jArr, j2, true, true);
        long j3 = jArr[iBinarySearchFloor];
        long j4 = jArr2[iBinarySearchFloor];
        int i2 = iBinarySearchFloor + 1;
        if (i2 == jArr.length) {
            lValueOf = Long.valueOf(j3);
            lValueOf2 = Long.valueOf(j4);
        } else {
            long j5 = jArr[i2];
            long j6 = jArr2[i2];
            if (j5 == j3) {
                d2 = 0.0d;
            } else {
                double d3 = j2;
                double d4 = j3;
                Double.isNaN(d3);
                Double.isNaN(d4);
                double d5 = j5 - j3;
                Double.isNaN(d5);
                d2 = (d3 - d4) / d5;
            }
            double d6 = j6 - j4;
            Double.isNaN(d6);
            lValueOf = Long.valueOf(j2);
            lValueOf2 = Long.valueOf(((long) (d2 * d6)) + j4);
        }
        return Pair.create(lValueOf, lValueOf2);
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.Mp3Extractor.Seeker
    public long getDataEndPosition() {
        return -1L;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j2) {
        Pair<Long, Long> pairLinearlyInterpolate = linearlyInterpolate(C.usToMs(Util.constrainValue(j2, 0L, this.durationUs)), this.referenceTimesMs, this.referencePositions);
        return new SeekMap.SeekPoints(new SeekPoint(C.msToUs(((Long) pairLinearlyInterpolate.first).longValue()), ((Long) pairLinearlyInterpolate.second).longValue()));
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.Mp3Extractor.Seeker
    public long getTimeUs(long j2) {
        return C.msToUs(((Long) linearlyInterpolate(j2, this.referencePositions, this.referenceTimesMs).second).longValue());
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }
}
