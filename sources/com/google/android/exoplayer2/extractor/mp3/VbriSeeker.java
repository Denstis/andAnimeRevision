package com.google.android.exoplayer2.extractor.mp3;

import com.google.android.exoplayer2.extractor.MpegAudioHeader;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.SeekPoint;
import com.google.android.exoplayer2.extractor.mp3.Mp3Extractor;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;

/* JADX INFO: loaded from: classes.dex */
final class VbriSeeker implements Mp3Extractor.Seeker {
    private static final String TAG = "VbriSeeker";
    private final long dataEndPosition;
    private final long durationUs;
    private final long[] positions;
    private final long[] timesUs;

    private VbriSeeker(long[] jArr, long[] jArr2, long j2, long j3) {
        this.timesUs = jArr;
        this.positions = jArr2;
        this.durationUs = j2;
        this.dataEndPosition = j3;
    }

    public static VbriSeeker create(long j2, long j3, MpegAudioHeader mpegAudioHeader, ParsableByteArray parsableByteArray) {
        int unsignedByte;
        parsableByteArray.skipBytes(10);
        int i2 = parsableByteArray.readInt();
        if (i2 <= 0) {
            return null;
        }
        int i3 = mpegAudioHeader.sampleRate;
        long jScaleLargeTimestamp = Util.scaleLargeTimestamp(i2, 1000000 * ((long) (i3 >= 32000 ? 1152 : 576)), i3);
        int unsignedShort = parsableByteArray.readUnsignedShort();
        int unsignedShort2 = parsableByteArray.readUnsignedShort();
        int unsignedShort3 = parsableByteArray.readUnsignedShort();
        parsableByteArray.skipBytes(2);
        long j4 = j3 + ((long) mpegAudioHeader.frameSize);
        long[] jArr = new long[unsignedShort];
        long[] jArr2 = new long[unsignedShort];
        int i4 = 0;
        long j5 = j3;
        while (i4 < unsignedShort) {
            int i5 = unsignedShort2;
            long j6 = j4;
            jArr[i4] = (((long) i4) * jScaleLargeTimestamp) / ((long) unsignedShort);
            jArr2[i4] = Math.max(j5, j6);
            if (unsignedShort3 == 1) {
                unsignedByte = parsableByteArray.readUnsignedByte();
            } else if (unsignedShort3 == 2) {
                unsignedByte = parsableByteArray.readUnsignedShort();
            } else if (unsignedShort3 == 3) {
                unsignedByte = parsableByteArray.readUnsignedInt24();
            } else {
                if (unsignedShort3 != 4) {
                    return null;
                }
                unsignedByte = parsableByteArray.readUnsignedIntToInt();
            }
            j5 += (long) (unsignedByte * i5);
            i4++;
            j4 = j6;
            unsignedShort2 = i5;
        }
        if (j2 != -1 && j2 != j5) {
            Log.w(TAG, "VBRI data size mismatch: " + j2 + ", " + j5);
        }
        return new VbriSeeker(jArr, jArr2, jScaleLargeTimestamp, j5);
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
        int iBinarySearchFloor = Util.binarySearchFloor(this.timesUs, j2, true, true);
        SeekPoint seekPoint = new SeekPoint(this.timesUs[iBinarySearchFloor], this.positions[iBinarySearchFloor]);
        if (seekPoint.timeUs < j2) {
            long[] jArr = this.timesUs;
            if (iBinarySearchFloor != jArr.length - 1) {
                int i2 = iBinarySearchFloor + 1;
                return new SeekMap.SeekPoints(seekPoint, new SeekPoint(jArr[i2], this.positions[i2]));
            }
        }
        return new SeekMap.SeekPoints(seekPoint);
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.Mp3Extractor.Seeker
    public long getTimeUs(long j2) {
        return this.timesUs[Util.binarySearchFloor(this.positions, j2, true, true)];
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }
}
