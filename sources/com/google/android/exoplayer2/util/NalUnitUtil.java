package com.google.android.exoplayer2.util;

import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class NalUnitUtil {
    public static final int EXTENDED_SAR = 255;
    private static final int H264_NAL_UNIT_TYPE_SEI = 6;
    private static final int H264_NAL_UNIT_TYPE_SPS = 7;
    private static final int H265_NAL_UNIT_TYPE_PREFIX_SEI = 39;
    private static final String TAG = "NalUnitUtil";
    public static final byte[] NAL_START_CODE = {0, 0, 0, 1};
    public static final float[] ASPECT_RATIO_IDC_VALUES = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};
    private static final Object scratchEscapePositionsLock = new Object();
    private static int[] scratchEscapePositions = new int[10];

    public static final class PpsData {
        public final boolean bottomFieldPicOrderInFramePresentFlag;
        public final int picParameterSetId;
        public final int seqParameterSetId;

        public PpsData(int i2, int i3, boolean z) {
            this.picParameterSetId = i2;
            this.seqParameterSetId = i3;
            this.bottomFieldPicOrderInFramePresentFlag = z;
        }
    }

    public static final class SpsData {
        public final int constraintsFlagsAndReservedZero2Bits;
        public final boolean deltaPicOrderAlwaysZeroFlag;
        public final boolean frameMbsOnlyFlag;
        public final int frameNumLength;
        public final int height;
        public final int levelIdc;
        public final int picOrderCntLsbLength;
        public final int picOrderCountType;
        public final float pixelWidthAspectRatio;
        public final int profileIdc;
        public final boolean separateColorPlaneFlag;
        public final int seqParameterSetId;
        public final int width;

        public SpsData(int i2, int i3, int i4, int i5, int i6, int i7, float f2, boolean z, boolean z2, int i8, int i9, int i10, boolean z3) {
            this.profileIdc = i2;
            this.constraintsFlagsAndReservedZero2Bits = i3;
            this.levelIdc = i4;
            this.seqParameterSetId = i5;
            this.width = i6;
            this.height = i7;
            this.pixelWidthAspectRatio = f2;
            this.separateColorPlaneFlag = z;
            this.frameMbsOnlyFlag = z2;
            this.frameNumLength = i8;
            this.picOrderCountType = i9;
            this.picOrderCntLsbLength = i10;
            this.deltaPicOrderAlwaysZeroFlag = z3;
        }
    }

    private NalUnitUtil() {
    }

    public static void clearPrefixFlags(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    public static void discardToSps(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i2 + 1;
            if (i4 >= iPosition) {
                byteBuffer.clear();
                return;
            }
            int i5 = byteBuffer.get(i2) & 255;
            if (i3 == 3) {
                if (i5 == 1 && (byteBuffer.get(i4) & 31) == 7) {
                    ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
                    byteBufferDuplicate.position(i2 - 3);
                    byteBufferDuplicate.limit(iPosition);
                    byteBuffer.position(0);
                    byteBuffer.put(byteBufferDuplicate);
                    return;
                }
            } else if (i5 == 0) {
                i3++;
            }
            if (i5 != 0) {
                i3 = 0;
            }
            i2 = i4;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x0097, code lost:
    
        r8 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int findNalUnit(byte[] r7, int r8, int r9, boolean[] r10) {
        /*
            int r0 = r9 - r8
            r1 = 0
            r2 = 1
            if (r0 < 0) goto L8
            r3 = 1
            goto L9
        L8:
            r3 = 0
        L9:
            com.google.android.exoplayer2.util.Assertions.checkState(r3)
            if (r0 != 0) goto Lf
            return r9
        Lf:
            r3 = 2
            if (r10 == 0) goto L40
            boolean r4 = r10[r1]
            if (r4 == 0) goto L1c
            clearPrefixFlags(r10)
            int r8 = r8 + (-3)
            return r8
        L1c:
            if (r0 <= r2) goto L2b
            boolean r4 = r10[r2]
            if (r4 == 0) goto L2b
            r4 = r7[r8]
            if (r4 != r2) goto L2b
            clearPrefixFlags(r10)
            int r8 = r8 - r3
            return r8
        L2b:
            if (r0 <= r3) goto L40
            boolean r4 = r10[r3]
            if (r4 == 0) goto L40
            r4 = r7[r8]
            if (r4 != 0) goto L40
            int r4 = r8 + 1
            r4 = r7[r4]
            if (r4 != r2) goto L40
            clearPrefixFlags(r10)
            int r8 = r8 - r2
            return r8
        L40:
            int r4 = r9 + (-1)
            int r8 = r8 + r3
        L43:
            if (r8 >= r4) goto L67
            r5 = r7[r8]
            r5 = r5 & 254(0xfe, float:3.56E-43)
            if (r5 == 0) goto L4c
            goto L64
        L4c:
            int r5 = r8 + (-2)
            r6 = r7[r5]
            if (r6 != 0) goto L62
            int r6 = r8 + (-1)
            r6 = r7[r6]
            if (r6 != 0) goto L62
            r6 = r7[r8]
            if (r6 != r2) goto L62
            if (r10 == 0) goto L61
            clearPrefixFlags(r10)
        L61:
            return r5
        L62:
            int r8 = r8 + (-2)
        L64:
            int r8 = r8 + 3
            goto L43
        L67:
            if (r10 == 0) goto Lbb
            if (r0 <= r3) goto L7e
            int r8 = r9 + (-3)
            r8 = r7[r8]
            if (r8 != 0) goto L7c
            int r8 = r9 + (-2)
            r8 = r7[r8]
            if (r8 != 0) goto L7c
            r8 = r7[r4]
            if (r8 != r2) goto L7c
            goto L97
        L7c:
            r8 = 0
            goto L98
        L7e:
            if (r0 != r3) goto L8f
            boolean r8 = r10[r3]
            if (r8 == 0) goto L7c
            int r8 = r9 + (-2)
            r8 = r7[r8]
            if (r8 != 0) goto L7c
            r8 = r7[r4]
            if (r8 != r2) goto L7c
            goto L97
        L8f:
            boolean r8 = r10[r2]
            if (r8 == 0) goto L7c
            r8 = r7[r4]
            if (r8 != r2) goto L7c
        L97:
            r8 = 1
        L98:
            r10[r1] = r8
            if (r0 <= r2) goto La7
            int r8 = r9 + (-2)
            r8 = r7[r8]
            if (r8 != 0) goto Lb1
            r8 = r7[r4]
            if (r8 != 0) goto Lb1
            goto Laf
        La7:
            boolean r8 = r10[r3]
            if (r8 == 0) goto Lb1
            r8 = r7[r4]
            if (r8 != 0) goto Lb1
        Laf:
            r8 = 1
            goto Lb2
        Lb1:
            r8 = 0
        Lb2:
            r10[r2] = r8
            r7 = r7[r4]
            if (r7 != 0) goto Lb9
            r1 = 1
        Lb9:
            r10[r3] = r1
        Lbb:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.util.NalUnitUtil.findNalUnit(byte[], int, int, boolean[]):int");
    }

    private static int findNextUnescapeIndex(byte[] bArr, int i2, int i3) {
        while (i2 < i3 - 2) {
            if (bArr[i2] == 0 && bArr[i2 + 1] == 0 && bArr[i2 + 2] == 3) {
                return i2;
            }
            i2++;
        }
        return i3;
    }

    public static int getH265NalUnitType(byte[] bArr, int i2) {
        return (bArr[i2 + 3] & 126) >> 1;
    }

    public static int getNalUnitType(byte[] bArr, int i2) {
        return bArr[i2 + 3] & 31;
    }

    public static boolean isNalUnitSei(String str, byte b2) {
        if (MimeTypes.VIDEO_H264.equals(str) && (b2 & 31) == 6) {
            return true;
        }
        return MimeTypes.VIDEO_H265.equals(str) && ((b2 & 126) >> 1) == 39;
    }

    public static PpsData parsePpsNalUnit(byte[] bArr, int i2, int i3) {
        ParsableNalUnitBitArray parsableNalUnitBitArray = new ParsableNalUnitBitArray(bArr, i2, i3);
        parsableNalUnitBitArray.skipBits(8);
        int unsignedExpGolombCodedInt = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        int unsignedExpGolombCodedInt2 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        parsableNalUnitBitArray.skipBit();
        return new PpsData(unsignedExpGolombCodedInt, unsignedExpGolombCodedInt2, parsableNalUnitBitArray.readBit());
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0164  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.android.exoplayer2.util.NalUnitUtil.SpsData parseSpsNalUnit(byte[] r20, int r21, int r22) {
        /*
            Method dump skipped, instruction units count: 368
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.util.NalUnitUtil.parseSpsNalUnit(byte[], int, int):com.google.android.exoplayer2.util.NalUnitUtil$SpsData");
    }

    private static void skipScalingList(ParsableNalUnitBitArray parsableNalUnitBitArray, int i2) {
        int signedExpGolombCodedInt = 8;
        int i3 = 8;
        for (int i4 = 0; i4 < i2; i4++) {
            if (signedExpGolombCodedInt != 0) {
                signedExpGolombCodedInt = ((parsableNalUnitBitArray.readSignedExpGolombCodedInt() + i3) + 256) % 256;
            }
            if (signedExpGolombCodedInt != 0) {
                i3 = signedExpGolombCodedInt;
            }
        }
    }

    public static int unescapeStream(byte[] bArr, int i2) {
        int i3;
        synchronized (scratchEscapePositionsLock) {
            int iFindNextUnescapeIndex = 0;
            int i4 = 0;
            while (iFindNextUnescapeIndex < i2) {
                try {
                    iFindNextUnescapeIndex = findNextUnescapeIndex(bArr, iFindNextUnescapeIndex, i2);
                    if (iFindNextUnescapeIndex < i2) {
                        if (scratchEscapePositions.length <= i4) {
                            scratchEscapePositions = Arrays.copyOf(scratchEscapePositions, scratchEscapePositions.length * 2);
                        }
                        scratchEscapePositions[i4] = iFindNextUnescapeIndex;
                        iFindNextUnescapeIndex += 3;
                        i4++;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            i3 = i2 - i4;
            int i5 = 0;
            int i6 = 0;
            for (int i7 = 0; i7 < i4; i7++) {
                int i8 = scratchEscapePositions[i7] - i6;
                System.arraycopy(bArr, i6, bArr, i5, i8);
                int i9 = i5 + i8;
                int i10 = i9 + 1;
                bArr[i9] = 0;
                i5 = i10 + 1;
                bArr[i10] = 0;
                i6 += i8 + 3;
            }
            System.arraycopy(bArr, i6, bArr, i5, i3 - i5);
        }
        return i3;
    }
}
