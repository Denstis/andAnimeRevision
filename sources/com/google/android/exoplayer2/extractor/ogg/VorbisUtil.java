package com.google.android.exoplayer2.extractor.ogg;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class VorbisUtil {
    private static final String TAG = "VorbisUtil";

    public static final class CodeBook {
        public final int dimensions;
        public final int entries;
        public final boolean isOrdered;
        public final long[] lengthMap;
        public final int lookupType;

        public CodeBook(int i2, int i3, long[] jArr, int i4, boolean z) {
            this.dimensions = i2;
            this.entries = i3;
            this.lengthMap = jArr;
            this.lookupType = i4;
            this.isOrdered = z;
        }
    }

    public static final class CommentHeader {
        public final String[] comments;
        public final int length;
        public final String vendor;

        public CommentHeader(String str, String[] strArr, int i2) {
            this.vendor = str;
            this.comments = strArr;
            this.length = i2;
        }
    }

    public static final class Mode {
        public final boolean blockFlag;
        public final int mapping;
        public final int transformType;
        public final int windowType;

        public Mode(boolean z, int i2, int i3, int i4) {
            this.blockFlag = z;
            this.windowType = i2;
            this.transformType = i3;
            this.mapping = i4;
        }
    }

    public static final class VorbisIdHeader {
        public final int bitrateMax;
        public final int bitrateMin;
        public final int bitrateNominal;
        public final int blockSize0;
        public final int blockSize1;
        public final int channels;
        public final byte[] data;
        public final boolean framingFlag;
        public final long sampleRate;
        public final long version;

        public VorbisIdHeader(long j2, int i2, long j3, int i3, int i4, int i5, int i6, int i7, boolean z, byte[] bArr) {
            this.version = j2;
            this.channels = i2;
            this.sampleRate = j3;
            this.bitrateMax = i3;
            this.bitrateNominal = i4;
            this.bitrateMin = i5;
            this.blockSize0 = i6;
            this.blockSize1 = i7;
            this.framingFlag = z;
            this.data = bArr;
        }

        public int getApproximateBitrate() {
            int i2 = this.bitrateNominal;
            return i2 == 0 ? (this.bitrateMin + this.bitrateMax) / 2 : i2;
        }
    }

    private VorbisUtil() {
    }

    public static int iLog(int i2) {
        int i3 = 0;
        while (i2 > 0) {
            i3++;
            i2 >>>= 1;
        }
        return i3;
    }

    private static long mapType1QuantValues(long j2, long j3) {
        double d2 = j3;
        Double.isNaN(d2);
        return (long) Math.floor(Math.pow(j2, 1.0d / d2));
    }

    private static CodeBook readBook(VorbisBitArray vorbisBitArray) throws ParserException {
        if (vorbisBitArray.readBits(24) != 5653314) {
            throw new ParserException("expected code book to start with [0x56, 0x43, 0x42] at " + vorbisBitArray.getPosition());
        }
        int bits = vorbisBitArray.readBits(16);
        int bits2 = vorbisBitArray.readBits(24);
        long[] jArr = new long[bits2];
        boolean bit = vorbisBitArray.readBit();
        long jMapType1QuantValues = 0;
        if (bit) {
            int bits3 = vorbisBitArray.readBits(5) + 1;
            int i2 = 0;
            while (i2 < jArr.length) {
                int bits4 = vorbisBitArray.readBits(iLog(bits2 - i2));
                int i3 = i2;
                for (int i4 = 0; i4 < bits4 && i3 < jArr.length; i4++) {
                    jArr[i3] = bits3;
                    i3++;
                }
                bits3++;
                i2 = i3;
            }
        } else {
            boolean bit2 = vorbisBitArray.readBit();
            for (int i5 = 0; i5 < jArr.length; i5++) {
                if (!bit2) {
                    jArr[i5] = vorbisBitArray.readBits(5) + 1;
                } else if (vorbisBitArray.readBit()) {
                    jArr[i5] = vorbisBitArray.readBits(5) + 1;
                } else {
                    jArr[i5] = 0;
                }
            }
        }
        int bits5 = vorbisBitArray.readBits(4);
        if (bits5 > 2) {
            throw new ParserException("lookup type greater than 2 not decodable: " + bits5);
        }
        if (bits5 == 1 || bits5 == 2) {
            vorbisBitArray.skipBits(32);
            vorbisBitArray.skipBits(32);
            int bits6 = vorbisBitArray.readBits(4) + 1;
            vorbisBitArray.skipBits(1);
            if (bits5 != 1) {
                jMapType1QuantValues = ((long) bits2) * ((long) bits);
            } else if (bits != 0) {
                jMapType1QuantValues = mapType1QuantValues(bits2, bits);
            }
            vorbisBitArray.skipBits((int) (jMapType1QuantValues * ((long) bits6)));
        }
        return new CodeBook(bits, bits2, jArr, bits5, bit);
    }

    private static void readFloors(VorbisBitArray vorbisBitArray) throws ParserException {
        int bits = vorbisBitArray.readBits(6) + 1;
        for (int i2 = 0; i2 < bits; i2++) {
            int bits2 = vorbisBitArray.readBits(16);
            if (bits2 == 0) {
                vorbisBitArray.skipBits(8);
                vorbisBitArray.skipBits(16);
                vorbisBitArray.skipBits(16);
                vorbisBitArray.skipBits(6);
                vorbisBitArray.skipBits(8);
                int bits3 = vorbisBitArray.readBits(4) + 1;
                for (int i3 = 0; i3 < bits3; i3++) {
                    vorbisBitArray.skipBits(8);
                }
            } else {
                if (bits2 != 1) {
                    throw new ParserException("floor type greater than 1 not decodable: " + bits2);
                }
                int bits4 = vorbisBitArray.readBits(5);
                int[] iArr = new int[bits4];
                int i4 = -1;
                for (int i5 = 0; i5 < bits4; i5++) {
                    iArr[i5] = vorbisBitArray.readBits(4);
                    if (iArr[i5] > i4) {
                        i4 = iArr[i5];
                    }
                }
                int[] iArr2 = new int[i4 + 1];
                for (int i6 = 0; i6 < iArr2.length; i6++) {
                    iArr2[i6] = vorbisBitArray.readBits(3) + 1;
                    int bits5 = vorbisBitArray.readBits(2);
                    if (bits5 > 0) {
                        vorbisBitArray.skipBits(8);
                    }
                    for (int i7 = 0; i7 < (1 << bits5); i7++) {
                        vorbisBitArray.skipBits(8);
                    }
                }
                vorbisBitArray.skipBits(2);
                int bits6 = vorbisBitArray.readBits(4);
                int i8 = 0;
                int i9 = 0;
                for (int i10 = 0; i10 < bits4; i10++) {
                    i8 += iArr2[iArr[i10]];
                    while (i9 < i8) {
                        vorbisBitArray.skipBits(bits6);
                        i9++;
                    }
                }
            }
        }
    }

    private static void readMappings(int i2, VorbisBitArray vorbisBitArray) throws ParserException {
        int bits = vorbisBitArray.readBits(6) + 1;
        for (int i3 = 0; i3 < bits; i3++) {
            int bits2 = vorbisBitArray.readBits(16);
            if (bits2 != 0) {
                Log.e(TAG, "mapping type other than 0 not supported: " + bits2);
            } else {
                int bits3 = vorbisBitArray.readBit() ? vorbisBitArray.readBits(4) + 1 : 1;
                if (vorbisBitArray.readBit()) {
                    int bits4 = vorbisBitArray.readBits(8) + 1;
                    for (int i4 = 0; i4 < bits4; i4++) {
                        int i5 = i2 - 1;
                        vorbisBitArray.skipBits(iLog(i5));
                        vorbisBitArray.skipBits(iLog(i5));
                    }
                }
                if (vorbisBitArray.readBits(2) != 0) {
                    throw new ParserException("to reserved bits must be zero after mapping coupling steps");
                }
                if (bits3 > 1) {
                    for (int i6 = 0; i6 < i2; i6++) {
                        vorbisBitArray.skipBits(4);
                    }
                }
                for (int i7 = 0; i7 < bits3; i7++) {
                    vorbisBitArray.skipBits(8);
                    vorbisBitArray.skipBits(8);
                    vorbisBitArray.skipBits(8);
                }
            }
        }
    }

    private static Mode[] readModes(VorbisBitArray vorbisBitArray) {
        int bits = vorbisBitArray.readBits(6) + 1;
        Mode[] modeArr = new Mode[bits];
        for (int i2 = 0; i2 < bits; i2++) {
            modeArr[i2] = new Mode(vorbisBitArray.readBit(), vorbisBitArray.readBits(16), vorbisBitArray.readBits(16), vorbisBitArray.readBits(8));
        }
        return modeArr;
    }

    private static void readResidues(VorbisBitArray vorbisBitArray) throws ParserException {
        int bits = vorbisBitArray.readBits(6) + 1;
        for (int i2 = 0; i2 < bits; i2++) {
            if (vorbisBitArray.readBits(16) > 2) {
                throw new ParserException("residueType greater than 2 is not decodable");
            }
            vorbisBitArray.skipBits(24);
            vorbisBitArray.skipBits(24);
            vorbisBitArray.skipBits(24);
            int bits2 = vorbisBitArray.readBits(6) + 1;
            vorbisBitArray.skipBits(8);
            int[] iArr = new int[bits2];
            for (int i3 = 0; i3 < bits2; i3++) {
                iArr[i3] = ((vorbisBitArray.readBit() ? vorbisBitArray.readBits(5) : 0) * 8) + vorbisBitArray.readBits(3);
            }
            for (int i4 = 0; i4 < bits2; i4++) {
                for (int i5 = 0; i5 < 8; i5++) {
                    if ((iArr[i4] & (1 << i5)) != 0) {
                        vorbisBitArray.skipBits(8);
                    }
                }
            }
        }
    }

    public static CommentHeader readVorbisCommentHeader(ParsableByteArray parsableByteArray) throws ParserException {
        verifyVorbisHeaderCapturePattern(3, parsableByteArray, false);
        String string = parsableByteArray.readString((int) parsableByteArray.readLittleEndianUnsignedInt());
        int length = 11 + string.length();
        long littleEndianUnsignedInt = parsableByteArray.readLittleEndianUnsignedInt();
        String[] strArr = new String[(int) littleEndianUnsignedInt];
        int length2 = length + 4;
        for (int i2 = 0; i2 < littleEndianUnsignedInt; i2++) {
            strArr[i2] = parsableByteArray.readString((int) parsableByteArray.readLittleEndianUnsignedInt());
            length2 = length2 + 4 + strArr[i2].length();
        }
        if ((parsableByteArray.readUnsignedByte() & 1) != 0) {
            return new CommentHeader(string, strArr, length2 + 1);
        }
        throw new ParserException("framing bit expected to be set");
    }

    public static VorbisIdHeader readVorbisIdentificationHeader(ParsableByteArray parsableByteArray) throws ParserException {
        verifyVorbisHeaderCapturePattern(1, parsableByteArray, false);
        long littleEndianUnsignedInt = parsableByteArray.readLittleEndianUnsignedInt();
        int unsignedByte = parsableByteArray.readUnsignedByte();
        long littleEndianUnsignedInt2 = parsableByteArray.readLittleEndianUnsignedInt();
        int littleEndianInt = parsableByteArray.readLittleEndianInt();
        int littleEndianInt2 = parsableByteArray.readLittleEndianInt();
        int littleEndianInt3 = parsableByteArray.readLittleEndianInt();
        int unsignedByte2 = parsableByteArray.readUnsignedByte();
        return new VorbisIdHeader(littleEndianUnsignedInt, unsignedByte, littleEndianUnsignedInt2, littleEndianInt, littleEndianInt2, littleEndianInt3, (int) Math.pow(2.0d, unsignedByte2 & 15), (int) Math.pow(2.0d, (unsignedByte2 & PsExtractor.VIDEO_STREAM_MASK) >> 4), (parsableByteArray.readUnsignedByte() & 1) > 0, Arrays.copyOf(parsableByteArray.data, parsableByteArray.limit()));
    }

    public static Mode[] readVorbisModes(ParsableByteArray parsableByteArray, int i2) throws ParserException {
        verifyVorbisHeaderCapturePattern(5, parsableByteArray, false);
        int unsignedByte = parsableByteArray.readUnsignedByte() + 1;
        VorbisBitArray vorbisBitArray = new VorbisBitArray(parsableByteArray.data);
        vorbisBitArray.skipBits(parsableByteArray.getPosition() * 8);
        for (int i3 = 0; i3 < unsignedByte; i3++) {
            readBook(vorbisBitArray);
        }
        int bits = vorbisBitArray.readBits(6) + 1;
        for (int i4 = 0; i4 < bits; i4++) {
            if (vorbisBitArray.readBits(16) != 0) {
                throw new ParserException("placeholder of time domain transforms not zeroed out");
            }
        }
        readFloors(vorbisBitArray);
        readResidues(vorbisBitArray);
        readMappings(i2, vorbisBitArray);
        Mode[] modes = readModes(vorbisBitArray);
        if (vorbisBitArray.readBit()) {
            return modes;
        }
        throw new ParserException("framing bit after modes not set as expected");
    }

    public static boolean verifyVorbisHeaderCapturePattern(int i2, ParsableByteArray parsableByteArray, boolean z) throws ParserException {
        if (parsableByteArray.bytesLeft() < 7) {
            if (z) {
                return false;
            }
            throw new ParserException("too short header: " + parsableByteArray.bytesLeft());
        }
        if (parsableByteArray.readUnsignedByte() != i2) {
            if (z) {
                return false;
            }
            throw new ParserException("expected header type " + Integer.toHexString(i2));
        }
        if (parsableByteArray.readUnsignedByte() == 118 && parsableByteArray.readUnsignedByte() == 111 && parsableByteArray.readUnsignedByte() == 114 && parsableByteArray.readUnsignedByte() == 98 && parsableByteArray.readUnsignedByte() == 105 && parsableByteArray.readUnsignedByte() == 115) {
            return true;
        }
        if (z) {
            return false;
        }
        throw new ParserException("expected characters 'vorbis'");
    }
}
