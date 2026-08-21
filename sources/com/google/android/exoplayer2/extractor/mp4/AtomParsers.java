package com.google.android.exoplayer2.extractor.mp4;

import android.util.Pair;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.Ac3Util;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.GaplessInfoHolder;
import com.google.android.exoplayer2.extractor.mp4.Atom;
import com.google.android.exoplayer2.extractor.mp4.FixedSampleSizeRechunker;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.CodecSpecificDataUtil;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.AvcConfig;
import com.google.android.exoplayer2.video.HevcConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class AtomParsers {
    private static final int MAX_GAPLESS_TRIM_SIZE_SAMPLES = 3;
    private static final String TAG = "AtomParsers";
    private static final int TYPE_vide = Util.getIntegerCodeForString("vide");
    private static final int TYPE_soun = Util.getIntegerCodeForString("soun");
    private static final int TYPE_text = Util.getIntegerCodeForString(MimeTypes.BASE_TYPE_TEXT);
    private static final int TYPE_sbtl = Util.getIntegerCodeForString("sbtl");
    private static final int TYPE_subt = Util.getIntegerCodeForString("subt");
    private static final int TYPE_clcp = Util.getIntegerCodeForString("clcp");
    private static final int TYPE_meta = Util.getIntegerCodeForString("meta");
    private static final int TYPE_mdta = Util.getIntegerCodeForString("mdta");
    private static final byte[] opusMagic = Util.getUtf8Bytes("OpusHead");

    private static final class ChunkIterator {
        private final ParsableByteArray chunkOffsets;
        private final boolean chunkOffsetsAreLongs;
        public int index;
        public final int length;
        private int nextSamplesPerChunkChangeIndex;
        public int numSamples;
        public long offset;
        private int remainingSamplesPerChunkChanges;
        private final ParsableByteArray stsc;

        public ChunkIterator(ParsableByteArray parsableByteArray, ParsableByteArray parsableByteArray2, boolean z) {
            this.stsc = parsableByteArray;
            this.chunkOffsets = parsableByteArray2;
            this.chunkOffsetsAreLongs = z;
            parsableByteArray2.setPosition(12);
            this.length = parsableByteArray2.readUnsignedIntToInt();
            parsableByteArray.setPosition(12);
            this.remainingSamplesPerChunkChanges = parsableByteArray.readUnsignedIntToInt();
            Assertions.checkState(parsableByteArray.readInt() == 1, "first_chunk must be 1");
            this.index = -1;
        }

        public boolean moveNext() {
            int i2 = this.index + 1;
            this.index = i2;
            if (i2 == this.length) {
                return false;
            }
            this.offset = this.chunkOffsetsAreLongs ? this.chunkOffsets.readUnsignedLongToLong() : this.chunkOffsets.readUnsignedInt();
            if (this.index == this.nextSamplesPerChunkChangeIndex) {
                this.numSamples = this.stsc.readUnsignedIntToInt();
                this.stsc.skipBytes(4);
                int i3 = this.remainingSamplesPerChunkChanges - 1;
                this.remainingSamplesPerChunkChanges = i3;
                this.nextSamplesPerChunkChangeIndex = i3 > 0 ? this.stsc.readUnsignedIntToInt() - 1 : -1;
            }
            return true;
        }
    }

    private interface SampleSizeBox {
        int getSampleCount();

        boolean isFixedSampleSize();

        int readNextSampleSize();
    }

    private static final class StsdData {
        public static final int STSD_HEADER_SIZE = 8;
        public Format format;
        public int nalUnitLengthFieldLength;
        public int requiredSampleTransformation = 0;
        public final TrackEncryptionBox[] trackEncryptionBoxes;

        public StsdData(int i2) {
            this.trackEncryptionBoxes = new TrackEncryptionBox[i2];
        }
    }

    static final class StszSampleSizeBox implements SampleSizeBox {
        private final ParsableByteArray data;
        private final int fixedSampleSize;
        private final int sampleCount;

        public StszSampleSizeBox(Atom.LeafAtom leafAtom) {
            this.data = leafAtom.data;
            this.data.setPosition(12);
            this.fixedSampleSize = this.data.readUnsignedIntToInt();
            this.sampleCount = this.data.readUnsignedIntToInt();
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int getSampleCount() {
            return this.sampleCount;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public boolean isFixedSampleSize() {
            return this.fixedSampleSize != 0;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int readNextSampleSize() {
            int i2 = this.fixedSampleSize;
            return i2 == 0 ? this.data.readUnsignedIntToInt() : i2;
        }
    }

    static final class Stz2SampleSizeBox implements SampleSizeBox {
        private int currentByte;
        private final ParsableByteArray data;
        private final int fieldSize;
        private final int sampleCount;
        private int sampleIndex;

        public Stz2SampleSizeBox(Atom.LeafAtom leafAtom) {
            this.data = leafAtom.data;
            this.data.setPosition(12);
            this.fieldSize = this.data.readUnsignedIntToInt() & 255;
            this.sampleCount = this.data.readUnsignedIntToInt();
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int getSampleCount() {
            return this.sampleCount;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public boolean isFixedSampleSize() {
            return false;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.AtomParsers.SampleSizeBox
        public int readNextSampleSize() {
            int i2 = this.fieldSize;
            if (i2 == 8) {
                return this.data.readUnsignedByte();
            }
            if (i2 == 16) {
                return this.data.readUnsignedShort();
            }
            int i3 = this.sampleIndex;
            this.sampleIndex = i3 + 1;
            if (i3 % 2 != 0) {
                return this.currentByte & 15;
            }
            this.currentByte = this.data.readUnsignedByte();
            return (this.currentByte & PsExtractor.VIDEO_STREAM_MASK) >> 4;
        }
    }

    private static final class TkhdData {
        private final long duration;
        private final int id;
        private final int rotationDegrees;

        public TkhdData(int i2, long j2, int i3) {
            this.id = i2;
            this.duration = j2;
            this.rotationDegrees = i3;
        }
    }

    private AtomParsers() {
    }

    private static boolean canApplyEditWithGaplessInfo(long[] jArr, long j2, long j3, long j4) {
        int length = jArr.length - 1;
        return jArr[0] <= j3 && j3 < jArr[Util.constrainValue(3, 0, length)] && jArr[Util.constrainValue(jArr.length - 3, 0, length)] < j4 && j4 <= j2;
    }

    private static int findEsdsPosition(ParsableByteArray parsableByteArray, int i2, int i3) {
        int position = parsableByteArray.getPosition();
        while (position - i2 < i3) {
            parsableByteArray.setPosition(position);
            int i4 = parsableByteArray.readInt();
            Assertions.checkArgument(i4 > 0, "childAtomSize should be positive");
            if (parsableByteArray.readInt() == Atom.TYPE_esds) {
                return position;
            }
            position += i4;
        }
        return -1;
    }

    private static int getTrackTypeForHdlr(int i2) {
        if (i2 == TYPE_soun) {
            return 1;
        }
        if (i2 == TYPE_vide) {
            return 2;
        }
        if (i2 == TYPE_text || i2 == TYPE_sbtl || i2 == TYPE_subt || i2 == TYPE_clcp) {
            return 3;
        }
        return i2 == TYPE_meta ? 4 : -1;
    }

    private static void parseAudioSampleEntry(ParsableByteArray parsableByteArray, int i2, int i3, int i4, int i5, String str, boolean z, DrmInitData drmInitData, StsdData stsdData, int i6) {
        int unsignedShort;
        int unsignedShort2;
        int unsignedFixedPoint1616;
        int i7;
        String str2;
        int i8;
        String str3;
        DrmInitData drmInitData2;
        Format eAc3AnnexFFormat;
        int i9 = i3;
        DrmInitData drmInitDataCopyWithSchemeType = drmInitData;
        parsableByteArray.setPosition(i9 + 8 + 8);
        if (z) {
            unsignedShort = parsableByteArray.readUnsignedShort();
            parsableByteArray.skipBytes(6);
        } else {
            parsableByteArray.skipBytes(8);
            unsignedShort = 0;
        }
        if (unsignedShort == 0 || unsignedShort == 1) {
            unsignedShort2 = parsableByteArray.readUnsignedShort();
            parsableByteArray.skipBytes(6);
            unsignedFixedPoint1616 = parsableByteArray.readUnsignedFixedPoint1616();
            if (unsignedShort == 1) {
                parsableByteArray.skipBytes(16);
            }
        } else {
            if (unsignedShort != 2) {
                return;
            }
            parsableByteArray.skipBytes(16);
            int iRound = (int) Math.round(parsableByteArray.readDouble());
            int unsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
            parsableByteArray.skipBytes(20);
            unsignedShort2 = unsignedIntToInt;
            unsignedFixedPoint1616 = iRound;
        }
        int position = parsableByteArray.getPosition();
        int iIntValue = i2;
        if (iIntValue == Atom.TYPE_enca) {
            Pair<Integer, TrackEncryptionBox> sampleEntryEncryptionData = parseSampleEntryEncryptionData(parsableByteArray, i9, i4);
            if (sampleEntryEncryptionData != null) {
                iIntValue = ((Integer) sampleEntryEncryptionData.first).intValue();
                drmInitDataCopyWithSchemeType = drmInitDataCopyWithSchemeType == null ? null : drmInitDataCopyWithSchemeType.copyWithSchemeType(((TrackEncryptionBox) sampleEntryEncryptionData.second).schemeType);
                stsdData.trackEncryptionBoxes[i6] = (TrackEncryptionBox) sampleEntryEncryptionData.second;
            }
            parsableByteArray.setPosition(position);
        }
        DrmInitData drmInitData3 = drmInitDataCopyWithSchemeType;
        int i10 = Atom.TYPE_ac_3;
        String str4 = MimeTypes.AUDIO_RAW;
        String str5 = iIntValue == i10 ? MimeTypes.AUDIO_AC3 : iIntValue == Atom.TYPE_ec_3 ? MimeTypes.AUDIO_E_AC3 : iIntValue == Atom.TYPE_dtsc ? MimeTypes.AUDIO_DTS : (iIntValue == Atom.TYPE_dtsh || iIntValue == Atom.TYPE_dtsl) ? MimeTypes.AUDIO_DTS_HD : iIntValue == Atom.TYPE_dtse ? MimeTypes.AUDIO_DTS_EXPRESS : iIntValue == Atom.TYPE_samr ? MimeTypes.AUDIO_AMR_NB : iIntValue == Atom.TYPE_sawb ? MimeTypes.AUDIO_AMR_WB : (iIntValue == Atom.TYPE_lpcm || iIntValue == Atom.TYPE_sowt) ? MimeTypes.AUDIO_RAW : iIntValue == Atom.TYPE__mp3 ? MimeTypes.AUDIO_MPEG : iIntValue == Atom.TYPE_alac ? MimeTypes.AUDIO_ALAC : iIntValue == Atom.TYPE_alaw ? MimeTypes.AUDIO_ALAW : iIntValue == Atom.TYPE_ulaw ? MimeTypes.AUDIO_MLAW : iIntValue == Atom.TYPE_Opus ? MimeTypes.AUDIO_OPUS : iIntValue == Atom.TYPE_fLaC ? MimeTypes.AUDIO_FLAC : null;
        int iIntValue2 = unsignedFixedPoint1616;
        int i11 = position;
        int iIntValue3 = unsignedShort2;
        byte[] bArr = null;
        String str6 = str5;
        while (i11 - i9 < i4) {
            parsableByteArray.setPosition(i11);
            int i12 = parsableByteArray.readInt();
            Assertions.checkArgument(i12 > 0, "childAtomSize should be positive");
            int i13 = parsableByteArray.readInt();
            if (i13 == Atom.TYPE_esds || (z && i13 == Atom.TYPE_wave)) {
                i7 = i12;
                str2 = str6;
                i8 = i11;
                str3 = str4;
                drmInitData2 = drmInitData3;
                int iFindEsdsPosition = i13 == Atom.TYPE_esds ? i8 : findEsdsPosition(parsableByteArray, i8, i7);
                if (iFindEsdsPosition != -1) {
                    Pair<String, byte[]> esdsFromParent = parseEsdsFromParent(parsableByteArray, iFindEsdsPosition);
                    str6 = (String) esdsFromParent.first;
                    bArr = (byte[]) esdsFromParent.second;
                    if (MimeTypes.AUDIO_AAC.equals(str6)) {
                        Pair<Integer, Integer> aacAudioSpecificConfig = CodecSpecificDataUtil.parseAacAudioSpecificConfig(bArr);
                        iIntValue2 = ((Integer) aacAudioSpecificConfig.first).intValue();
                        iIntValue3 = ((Integer) aacAudioSpecificConfig.second).intValue();
                    }
                }
                i11 = i8 + i7;
                i9 = i3;
                drmInitData3 = drmInitData2;
                str4 = str3;
            } else {
                if (i13 == Atom.TYPE_dac3) {
                    parsableByteArray.setPosition(i11 + 8);
                    eAc3AnnexFFormat = Ac3Util.parseAc3AnnexFFormat(parsableByteArray, Integer.toString(i5), str, drmInitData3);
                } else if (i13 == Atom.TYPE_dec3) {
                    parsableByteArray.setPosition(i11 + 8);
                    eAc3AnnexFFormat = Ac3Util.parseEAc3AnnexFFormat(parsableByteArray, Integer.toString(i5), str, drmInitData3);
                } else if (i13 == Atom.TYPE_ddts) {
                    str2 = str6;
                    str3 = str4;
                    drmInitData2 = drmInitData3;
                    stsdData.format = Format.createAudioSampleFormat(Integer.toString(i5), str6, null, -1, -1, iIntValue3, iIntValue2, null, drmInitData2, 0, str);
                    i7 = i12;
                    i8 = i11;
                } else {
                    str2 = str6;
                    int i14 = i11;
                    str3 = str4;
                    drmInitData2 = drmInitData3;
                    i7 = i12;
                    if (i13 == Atom.TYPE_alac) {
                        byte[] bArr2 = new byte[i7];
                        i8 = i14;
                        parsableByteArray.setPosition(i8);
                        parsableByteArray.readBytes(bArr2, 0, i7);
                        bArr = bArr2;
                    } else {
                        i8 = i14;
                        if (i13 == Atom.TYPE_dOps) {
                            int i15 = i7 - 8;
                            byte[] bArr3 = opusMagic;
                            byte[] bArr4 = new byte[bArr3.length + i15];
                            System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
                            parsableByteArray.setPosition(i8 + 8);
                            parsableByteArray.readBytes(bArr4, opusMagic.length, i15);
                            bArr = bArr4;
                        } else if (i7 == Atom.TYPE_dfLa) {
                            int i16 = i7 - 12;
                            byte[] bArr5 = new byte[i16];
                            parsableByteArray.setPosition(i8 + 12);
                            parsableByteArray.readBytes(bArr5, 0, i16);
                            bArr = bArr5;
                        }
                    }
                }
                stsdData.format = eAc3AnnexFFormat;
                i7 = i12;
                str2 = str6;
                i8 = i11;
                str3 = str4;
                drmInitData2 = drmInitData3;
            }
            str6 = str2;
            i11 = i8 + i7;
            i9 = i3;
            drmInitData3 = drmInitData2;
            str4 = str3;
        }
        String str7 = str6;
        String str8 = str4;
        DrmInitData drmInitData4 = drmInitData3;
        if (stsdData.format != null || str7 == null) {
            return;
        }
        stsdData.format = Format.createAudioSampleFormat(Integer.toString(i5), str7, null, -1, -1, iIntValue3, iIntValue2, str8.equals(str7) ? 2 : -1, bArr == null ? null : Collections.singletonList(bArr), drmInitData4, 0, str);
    }

    static Pair<Integer, TrackEncryptionBox> parseCommonEncryptionSinfFromParent(ParsableByteArray parsableByteArray, int i2, int i3) {
        int i4 = i2 + 8;
        String string = null;
        Integer numValueOf = null;
        int i5 = -1;
        int i6 = 0;
        while (i4 - i2 < i3) {
            parsableByteArray.setPosition(i4);
            int i7 = parsableByteArray.readInt();
            int i8 = parsableByteArray.readInt();
            if (i8 == Atom.TYPE_frma) {
                numValueOf = Integer.valueOf(parsableByteArray.readInt());
            } else if (i8 == Atom.TYPE_schm) {
                parsableByteArray.skipBytes(4);
                string = parsableByteArray.readString(4);
            } else if (i8 == Atom.TYPE_schi) {
                i5 = i4;
                i6 = i7;
            }
            i4 += i7;
        }
        if (!C.CENC_TYPE_cenc.equals(string) && !C.CENC_TYPE_cbc1.equals(string) && !C.CENC_TYPE_cens.equals(string) && !C.CENC_TYPE_cbcs.equals(string)) {
            return null;
        }
        Assertions.checkArgument(numValueOf != null, "frma atom is mandatory");
        Assertions.checkArgument(i5 != -1, "schi atom is mandatory");
        TrackEncryptionBox schiFromParent = parseSchiFromParent(parsableByteArray, i5, i6, string);
        Assertions.checkArgument(schiFromParent != null, "tenc atom is mandatory");
        return Pair.create(numValueOf, schiFromParent);
    }

    private static Pair<long[], long[]> parseEdts(Atom.ContainerAtom containerAtom) {
        Atom.LeafAtom leafAtomOfType;
        if (containerAtom == null || (leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_elst)) == null) {
            return Pair.create(null, null);
        }
        ParsableByteArray parsableByteArray = leafAtomOfType.data;
        parsableByteArray.setPosition(8);
        int fullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        int unsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        long[] jArr = new long[unsignedIntToInt];
        long[] jArr2 = new long[unsignedIntToInt];
        for (int i2 = 0; i2 < unsignedIntToInt; i2++) {
            jArr[i2] = fullAtomVersion == 1 ? parsableByteArray.readUnsignedLongToLong() : parsableByteArray.readUnsignedInt();
            jArr2[i2] = fullAtomVersion == 1 ? parsableByteArray.readLong() : parsableByteArray.readInt();
            if (parsableByteArray.readShort() != 1) {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
            parsableByteArray.skipBytes(2);
        }
        return Pair.create(jArr, jArr2);
    }

    private static Pair<String, byte[]> parseEsdsFromParent(ParsableByteArray parsableByteArray, int i2) {
        parsableByteArray.setPosition(i2 + 8 + 4);
        parsableByteArray.skipBytes(1);
        parseExpandableClassSize(parsableByteArray);
        parsableByteArray.skipBytes(2);
        int unsignedByte = parsableByteArray.readUnsignedByte();
        if ((unsignedByte & 128) != 0) {
            parsableByteArray.skipBytes(2);
        }
        if ((unsignedByte & 64) != 0) {
            parsableByteArray.skipBytes(parsableByteArray.readUnsignedShort());
        }
        if ((unsignedByte & 32) != 0) {
            parsableByteArray.skipBytes(2);
        }
        parsableByteArray.skipBytes(1);
        parseExpandableClassSize(parsableByteArray);
        String mimeTypeFromMp4ObjectType = MimeTypes.getMimeTypeFromMp4ObjectType(parsableByteArray.readUnsignedByte());
        if (MimeTypes.AUDIO_MPEG.equals(mimeTypeFromMp4ObjectType) || MimeTypes.AUDIO_DTS.equals(mimeTypeFromMp4ObjectType) || MimeTypes.AUDIO_DTS_HD.equals(mimeTypeFromMp4ObjectType)) {
            return Pair.create(mimeTypeFromMp4ObjectType, null);
        }
        parsableByteArray.skipBytes(12);
        parsableByteArray.skipBytes(1);
        int expandableClassSize = parseExpandableClassSize(parsableByteArray);
        byte[] bArr = new byte[expandableClassSize];
        parsableByteArray.readBytes(bArr, 0, expandableClassSize);
        return Pair.create(mimeTypeFromMp4ObjectType, bArr);
    }

    private static int parseExpandableClassSize(ParsableByteArray parsableByteArray) {
        int unsignedByte = parsableByteArray.readUnsignedByte();
        int i2 = unsignedByte & 127;
        while ((unsignedByte & 128) == 128) {
            unsignedByte = parsableByteArray.readUnsignedByte();
            i2 = (i2 << 7) | (unsignedByte & 127);
        }
        return i2;
    }

    private static int parseHdlr(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(16);
        return parsableByteArray.readInt();
    }

    private static Metadata parseIlst(ParsableByteArray parsableByteArray, int i2) {
        parsableByteArray.skipBytes(8);
        ArrayList arrayList = new ArrayList();
        while (parsableByteArray.getPosition() < i2) {
            Metadata.Entry ilstElement = MetadataUtil.parseIlstElement(parsableByteArray);
            if (ilstElement != null) {
                arrayList.add(ilstElement);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static Pair<Long, String> parseMdhd(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        int fullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        parsableByteArray.skipBytes(fullAtomVersion == 0 ? 8 : 16);
        long unsignedInt = parsableByteArray.readUnsignedInt();
        parsableByteArray.skipBytes(fullAtomVersion == 0 ? 4 : 8);
        int unsignedShort = parsableByteArray.readUnsignedShort();
        return Pair.create(Long.valueOf(unsignedInt), "" + ((char) (((unsignedShort >> 10) & 31) + 96)) + ((char) (((unsignedShort >> 5) & 31) + 96)) + ((char) ((unsignedShort & 31) + 96)));
    }

    public static Metadata parseMdtaFromMeta(Atom.ContainerAtom containerAtom) {
        Atom.LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_hdlr);
        Atom.LeafAtom leafAtomOfType2 = containerAtom.getLeafAtomOfType(Atom.TYPE_keys);
        Atom.LeafAtom leafAtomOfType3 = containerAtom.getLeafAtomOfType(Atom.TYPE_ilst);
        if (leafAtomOfType == null || leafAtomOfType2 == null || leafAtomOfType3 == null || parseHdlr(leafAtomOfType.data) != TYPE_mdta) {
            return null;
        }
        ParsableByteArray parsableByteArray = leafAtomOfType2.data;
        parsableByteArray.setPosition(12);
        int i2 = parsableByteArray.readInt();
        String[] strArr = new String[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = parsableByteArray.readInt();
            parsableByteArray.skipBytes(4);
            strArr[i3] = parsableByteArray.readString(i4 - 8);
        }
        ParsableByteArray parsableByteArray2 = leafAtomOfType3.data;
        parsableByteArray2.setPosition(8);
        ArrayList arrayList = new ArrayList();
        while (parsableByteArray2.bytesLeft() > 8) {
            int position = parsableByteArray2.getPosition();
            int i5 = parsableByteArray2.readInt();
            int i6 = parsableByteArray2.readInt() - 1;
            if (i6 < 0 || i6 >= strArr.length) {
                Log.w(TAG, "Skipped metadata with unknown key index: " + i6);
            } else {
                MdtaMetadataEntry mdtaMetadataEntryFromIlst = MetadataUtil.parseMdtaMetadataEntryFromIlst(parsableByteArray2, position + i5, strArr[i6]);
                if (mdtaMetadataEntryFromIlst != null) {
                    arrayList.add(mdtaMetadataEntryFromIlst);
                }
            }
            parsableByteArray2.setPosition(position + i5);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static long parseMvhd(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        parsableByteArray.skipBytes(Atom.parseFullAtomVersion(parsableByteArray.readInt()) != 0 ? 16 : 8);
        return parsableByteArray.readUnsignedInt();
    }

    private static float parsePaspFromParent(ParsableByteArray parsableByteArray, int i2) {
        parsableByteArray.setPosition(i2 + 8);
        return parsableByteArray.readUnsignedIntToInt() / parsableByteArray.readUnsignedIntToInt();
    }

    private static byte[] parseProjFromParent(ParsableByteArray parsableByteArray, int i2, int i3) {
        int i4 = i2 + 8;
        while (i4 - i2 < i3) {
            parsableByteArray.setPosition(i4);
            int i5 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == Atom.TYPE_proj) {
                return Arrays.copyOfRange(parsableByteArray.data, i4, i5 + i4);
            }
            i4 += i5;
        }
        return null;
    }

    private static Pair<Integer, TrackEncryptionBox> parseSampleEntryEncryptionData(ParsableByteArray parsableByteArray, int i2, int i3) {
        Pair<Integer, TrackEncryptionBox> commonEncryptionSinfFromParent;
        int position = parsableByteArray.getPosition();
        while (position - i2 < i3) {
            parsableByteArray.setPosition(position);
            int i4 = parsableByteArray.readInt();
            Assertions.checkArgument(i4 > 0, "childAtomSize should be positive");
            if (parsableByteArray.readInt() == Atom.TYPE_sinf && (commonEncryptionSinfFromParent = parseCommonEncryptionSinfFromParent(parsableByteArray, position, i4)) != null) {
                return commonEncryptionSinfFromParent;
            }
            position += i4;
        }
        return null;
    }

    private static TrackEncryptionBox parseSchiFromParent(ParsableByteArray parsableByteArray, int i2, int i3, String str) {
        int i4;
        int i5;
        int i6 = i2 + 8;
        while (true) {
            byte[] bArr = null;
            if (i6 - i2 >= i3) {
                return null;
            }
            parsableByteArray.setPosition(i6);
            int i7 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == Atom.TYPE_tenc) {
                int fullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
                parsableByteArray.skipBytes(1);
                if (fullAtomVersion == 0) {
                    parsableByteArray.skipBytes(1);
                    i5 = 0;
                    i4 = 0;
                } else {
                    int unsignedByte = parsableByteArray.readUnsignedByte();
                    i4 = unsignedByte & 15;
                    i5 = (unsignedByte & PsExtractor.VIDEO_STREAM_MASK) >> 4;
                }
                boolean z = parsableByteArray.readUnsignedByte() == 1;
                int unsignedByte2 = parsableByteArray.readUnsignedByte();
                byte[] bArr2 = new byte[16];
                parsableByteArray.readBytes(bArr2, 0, bArr2.length);
                if (z && unsignedByte2 == 0) {
                    int unsignedByte3 = parsableByteArray.readUnsignedByte();
                    bArr = new byte[unsignedByte3];
                    parsableByteArray.readBytes(bArr, 0, unsignedByte3);
                }
                return new TrackEncryptionBox(z, str, unsignedByte2, bArr2, i5, i4, bArr);
            }
            i6 += i7;
        }
    }

    public static TrackSampleTable parseStbl(Track track, Atom.ContainerAtom containerAtom, GaplessInfoHolder gaplessInfoHolder) throws ParserException {
        SampleSizeBox stz2SampleSizeBox;
        boolean z;
        int unsignedIntToInt;
        int unsignedIntToInt2;
        int i2;
        long[] jArr;
        int[] iArr;
        int i3;
        long[] jArr2;
        int[] iArrCopyOf;
        long j2;
        int[] iArr2;
        int i4;
        long[] jArr3;
        int[] iArr3;
        int[] iArr4;
        int i5;
        boolean z2;
        int i6;
        int i7;
        boolean z3;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        Track track2 = track;
        Atom.LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_stsz);
        if (leafAtomOfType != null) {
            stz2SampleSizeBox = new StszSampleSizeBox(leafAtomOfType);
        } else {
            Atom.LeafAtom leafAtomOfType2 = containerAtom.getLeafAtomOfType(Atom.TYPE_stz2);
            if (leafAtomOfType2 == null) {
                throw new ParserException("Track has no sample table size information");
            }
            stz2SampleSizeBox = new Stz2SampleSizeBox(leafAtomOfType2);
        }
        int sampleCount = stz2SampleSizeBox.getSampleCount();
        if (sampleCount == 0) {
            return new TrackSampleTable(track, new long[0], new int[0], 0, new long[0], new int[0], C.TIME_UNSET);
        }
        Atom.LeafAtom leafAtomOfType3 = containerAtom.getLeafAtomOfType(Atom.TYPE_stco);
        if (leafAtomOfType3 == null) {
            leafAtomOfType3 = containerAtom.getLeafAtomOfType(Atom.TYPE_co64);
            z = true;
        } else {
            z = false;
        }
        ParsableByteArray parsableByteArray = leafAtomOfType3.data;
        ParsableByteArray parsableByteArray2 = containerAtom.getLeafAtomOfType(Atom.TYPE_stsc).data;
        ParsableByteArray parsableByteArray3 = containerAtom.getLeafAtomOfType(Atom.TYPE_stts).data;
        Atom.LeafAtom leafAtomOfType4 = containerAtom.getLeafAtomOfType(Atom.TYPE_stss);
        ParsableByteArray parsableByteArray4 = leafAtomOfType4 != null ? leafAtomOfType4.data : null;
        Atom.LeafAtom leafAtomOfType5 = containerAtom.getLeafAtomOfType(Atom.TYPE_ctts);
        ParsableByteArray parsableByteArray5 = leafAtomOfType5 != null ? leafAtomOfType5.data : null;
        ChunkIterator chunkIterator = new ChunkIterator(parsableByteArray2, parsableByteArray, z);
        parsableByteArray3.setPosition(12);
        int unsignedIntToInt3 = parsableByteArray3.readUnsignedIntToInt() - 1;
        int unsignedIntToInt4 = parsableByteArray3.readUnsignedIntToInt();
        int unsignedIntToInt5 = parsableByteArray3.readUnsignedIntToInt();
        if (parsableByteArray5 != null) {
            parsableByteArray5.setPosition(12);
            unsignedIntToInt = parsableByteArray5.readUnsignedIntToInt();
        } else {
            unsignedIntToInt = 0;
        }
        int unsignedIntToInt6 = -1;
        if (parsableByteArray4 != null) {
            parsableByteArray4.setPosition(12);
            unsignedIntToInt2 = parsableByteArray4.readUnsignedIntToInt();
            if (unsignedIntToInt2 > 0) {
                unsignedIntToInt6 = parsableByteArray4.readUnsignedIntToInt() - 1;
            } else {
                parsableByteArray4 = null;
            }
        } else {
            unsignedIntToInt2 = 0;
        }
        if (stz2SampleSizeBox.isFixedSampleSize() && MimeTypes.AUDIO_RAW.equals(track2.format.sampleMimeType) && unsignedIntToInt3 == 0 && unsignedIntToInt == 0 && unsignedIntToInt2 == 0) {
            i2 = sampleCount;
            int i13 = chunkIterator.length;
            long[] jArr4 = new long[i13];
            int[] iArr5 = new int[i13];
            while (chunkIterator.moveNext()) {
                int i14 = chunkIterator.index;
                jArr4[i14] = chunkIterator.offset;
                iArr5[i14] = chunkIterator.numSamples;
            }
            Format format = track2.format;
            FixedSampleSizeRechunker.Results resultsRechunk = FixedSampleSizeRechunker.rechunk(Util.getPcmFrameSize(format.pcmEncoding, format.channelCount), jArr4, iArr5, unsignedIntToInt5);
            jArr = resultsRechunk.offsets;
            iArr = resultsRechunk.sizes;
            i3 = resultsRechunk.maximumSize;
            jArr2 = resultsRechunk.timestamps;
            iArrCopyOf = resultsRechunk.flags;
            j2 = resultsRechunk.duration;
        } else {
            long[] jArrCopyOf = new long[sampleCount];
            int[] iArrCopyOf2 = new int[sampleCount];
            long[] jArrCopyOf2 = new long[sampleCount];
            int i15 = unsignedIntToInt2;
            iArrCopyOf = new int[sampleCount];
            int i16 = unsignedIntToInt3;
            int i17 = unsignedIntToInt5;
            long j3 = 0;
            long j4 = 0;
            int i18 = 0;
            int i19 = 0;
            int unsignedIntToInt7 = 0;
            int i20 = 0;
            int i21 = i15;
            int i22 = unsignedIntToInt;
            int i23 = unsignedIntToInt4;
            int unsignedIntToInt8 = unsignedIntToInt6;
            int i24 = 0;
            while (true) {
                if (i19 >= sampleCount) {
                    i2 = sampleCount;
                    i6 = i21;
                    i7 = i23;
                    break;
                }
                long j5 = j4;
                boolean zMoveNext = true;
                while (i24 == 0) {
                    zMoveNext = chunkIterator.moveNext();
                    if (!zMoveNext) {
                        break;
                    }
                    int i25 = i21;
                    long j6 = chunkIterator.offset;
                    i24 = chunkIterator.numSamples;
                    j5 = j6;
                    i21 = i25;
                    i23 = i23;
                    sampleCount = sampleCount;
                }
                int i26 = sampleCount;
                i6 = i21;
                i7 = i23;
                if (!zMoveNext) {
                    Log.w(TAG, "Unexpected end of chunk data");
                    jArrCopyOf = Arrays.copyOf(jArrCopyOf, i19);
                    iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, i19);
                    jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i19);
                    iArrCopyOf = Arrays.copyOf(iArrCopyOf, i19);
                    i2 = i19;
                    break;
                }
                if (parsableByteArray5 != null) {
                    int i27 = i22;
                    while (unsignedIntToInt7 == 0 && i27 > 0) {
                        unsignedIntToInt7 = parsableByteArray5.readUnsignedIntToInt();
                        i20 = parsableByteArray5.readInt();
                        i27--;
                    }
                    unsignedIntToInt7--;
                    i10 = i27;
                } else {
                    i10 = i22;
                }
                int i28 = i20;
                jArrCopyOf[i19] = j5;
                iArrCopyOf2[i19] = stz2SampleSizeBox.readNextSampleSize();
                if (iArrCopyOf2[i19] > i18) {
                    i18 = iArrCopyOf2[i19];
                }
                jArrCopyOf2[i19] = j3 + ((long) i28);
                iArrCopyOf[i19] = parsableByteArray4 == null ? 1 : 0;
                if (i19 == unsignedIntToInt8) {
                    iArrCopyOf[i19] = 1;
                    int i29 = i6 - 1;
                    if (i29 > 0) {
                        unsignedIntToInt8 = parsableByteArray4.readUnsignedIntToInt() - 1;
                    }
                    i11 = i18;
                    i21 = i29;
                    i12 = i28;
                } else {
                    i11 = i18;
                    i12 = i28;
                    i21 = i6;
                }
                j3 += (long) i17;
                int unsignedIntToInt9 = i7 - 1;
                if (unsignedIntToInt9 == 0 && i16 > 0) {
                    unsignedIntToInt9 = parsableByteArray3.readUnsignedIntToInt();
                    i16--;
                    i17 = parsableByteArray3.readInt();
                }
                int i30 = unsignedIntToInt9;
                long j7 = j5 + ((long) iArrCopyOf2[i19]);
                i24--;
                i19++;
                i20 = i12;
                i23 = i30;
                j4 = j7;
                i18 = i11;
                i22 = i10;
                sampleCount = i26;
            }
            int i31 = i24;
            j2 = j3 + ((long) i20);
            int i32 = i22;
            while (true) {
                if (i32 <= 0) {
                    z3 = true;
                    break;
                }
                if (parsableByteArray5.readUnsignedIntToInt() != 0) {
                    z3 = false;
                    break;
                }
                parsableByteArray5.readInt();
                i32--;
            }
            if (i6 == 0 && i7 == 0 && i31 == 0 && i16 == 0) {
                i8 = unsignedIntToInt7;
                if (i8 == 0 && z3) {
                    i9 = i18;
                    track2 = track;
                }
                jArr = jArrCopyOf;
                jArr2 = jArrCopyOf2;
                i3 = i9;
                iArr = iArrCopyOf2;
            } else {
                i8 = unsignedIntToInt7;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Inconsistent stbl box for track ");
            i9 = i18;
            track2 = track;
            sb.append(track2.id);
            sb.append(": remainingSynchronizationSamples ");
            sb.append(i6);
            sb.append(", remainingSamplesAtTimestampDelta ");
            sb.append(i7);
            sb.append(", remainingSamplesInChunk ");
            sb.append(i31);
            sb.append(", remainingTimestampDeltaChanges ");
            sb.append(i16);
            sb.append(", remainingSamplesAtTimestampOffset ");
            sb.append(i8);
            sb.append(!z3 ? ", ctts invalid" : "");
            Log.w(TAG, sb.toString());
            jArr = jArrCopyOf;
            jArr2 = jArrCopyOf2;
            i3 = i9;
            iArr = iArrCopyOf2;
        }
        int i33 = i2;
        long jScaleLargeTimestamp = Util.scaleLargeTimestamp(j2, 1000000L, track2.timescale);
        if (track2.editListDurations == null || gaplessInfoHolder.hasGaplessInfo()) {
            Util.scaleLargeTimestampsInPlace(jArr2, 1000000L, track2.timescale);
            return new TrackSampleTable(track, jArr, iArr, i3, jArr2, iArrCopyOf, jScaleLargeTimestamp);
        }
        long[] jArr5 = track2.editListDurations;
        if (jArr5.length == 1 && track2.type == 1 && jArr2.length >= 2) {
            long j8 = track2.editListMediaTimes[0];
            long jScaleLargeTimestamp2 = j8 + Util.scaleLargeTimestamp(jArr5[0], track2.timescale, track2.movieTimescale);
            iArr2 = iArr;
            i4 = i3;
            if (canApplyEditWithGaplessInfo(jArr2, j2, j8, jScaleLargeTimestamp2)) {
                long j9 = j2 - jScaleLargeTimestamp2;
                long jScaleLargeTimestamp3 = Util.scaleLargeTimestamp(j8 - jArr2[0], track2.format.sampleRate, track2.timescale);
                long jScaleLargeTimestamp4 = Util.scaleLargeTimestamp(j9, track2.format.sampleRate, track2.timescale);
                if ((jScaleLargeTimestamp3 != 0 || jScaleLargeTimestamp4 != 0) && jScaleLargeTimestamp3 <= 2147483647L && jScaleLargeTimestamp4 <= 2147483647L) {
                    gaplessInfoHolder.encoderDelay = (int) jScaleLargeTimestamp3;
                    gaplessInfoHolder.encoderPadding = (int) jScaleLargeTimestamp4;
                    Util.scaleLargeTimestampsInPlace(jArr2, 1000000L, track2.timescale);
                    return new TrackSampleTable(track, jArr, iArr2, i4, jArr2, iArrCopyOf, Util.scaleLargeTimestamp(track2.editListDurations[0], 1000000L, track2.movieTimescale));
                }
            }
        } else {
            iArr2 = iArr;
            i4 = i3;
        }
        long[] jArr6 = track2.editListDurations;
        if (jArr6.length == 1 && jArr6[0] == 0) {
            long j10 = track2.editListMediaTimes[0];
            for (int i34 = 0; i34 < jArr2.length; i34++) {
                jArr2[i34] = Util.scaleLargeTimestamp(jArr2[i34] - j10, 1000000L, track2.timescale);
            }
            return new TrackSampleTable(track, jArr, iArr2, i4, jArr2, iArrCopyOf, Util.scaleLargeTimestamp(j2 - j10, 1000000L, track2.timescale));
        }
        boolean z4 = track2.type == 1;
        long[] jArr7 = track2.editListDurations;
        int[] iArr6 = new int[jArr7.length];
        int[] iArr7 = new int[jArr7.length];
        int i35 = 0;
        boolean z5 = false;
        int i36 = 0;
        int i37 = 0;
        while (true) {
            long[] jArr8 = track2.editListDurations;
            if (i35 >= jArr8.length) {
                break;
            }
            long j11 = track2.editListMediaTimes[i35];
            if (j11 != -1) {
                boolean z6 = z5;
                int i38 = i36;
                long jScaleLargeTimestamp5 = Util.scaleLargeTimestamp(jArr8[i35], track2.timescale, track2.movieTimescale);
                iArr6[i35] = Util.binarySearchCeil(jArr2, j11, true, true);
                iArr7[i35] = Util.binarySearchCeil(jArr2, j11 + jScaleLargeTimestamp5, z4, false);
                while (iArr6[i35] < iArr7[i35] && (iArrCopyOf[iArr6[i35]] & 1) == 0) {
                    iArr6[i35] = iArr6[i35] + 1;
                }
                i36 = i38 + (iArr7[i35] - iArr6[i35]);
                z2 = z6 | (i37 != iArr6[i35]);
                i5 = iArr7[i35];
            } else {
                i5 = i37;
                z2 = z5;
            }
            i35++;
            z5 = z2;
            i37 = i5;
        }
        boolean z7 = z5;
        int i39 = 0;
        boolean z8 = z7 | (i36 != i33);
        long[] jArr9 = z8 ? new long[i36] : jArr;
        int[] iArr8 = z8 ? new int[i36] : iArr2;
        int i40 = z8 ? 0 : i4;
        int[] iArr9 = z8 ? new int[i36] : iArrCopyOf;
        long[] jArr10 = new long[i36];
        int i41 = i40;
        long j12 = 0;
        int i42 = 0;
        while (i39 < track2.editListDurations.length) {
            long j13 = track2.editListMediaTimes[i39];
            int i43 = iArr6[i39];
            int[] iArr10 = iArr6;
            int i44 = iArr7[i39];
            if (z8) {
                iArr3 = iArr7;
                int i45 = i44 - i43;
                System.arraycopy(jArr, i43, jArr9, i42, i45);
                jArr3 = jArr;
                iArr4 = iArr2;
                System.arraycopy(iArr4, i43, iArr8, i42, i45);
                System.arraycopy(iArrCopyOf, i43, iArr9, i42, i45);
            } else {
                jArr3 = jArr;
                iArr3 = iArr7;
                iArr4 = iArr2;
            }
            int i46 = i41;
            while (i43 < i44) {
                int[] iArr11 = iArrCopyOf;
                int i47 = i44;
                int[] iArr12 = iArr9;
                long j14 = j12;
                jArr10[i42] = Util.scaleLargeTimestamp(j12, 1000000L, track2.movieTimescale) + Util.scaleLargeTimestamp(jArr2[i43] - j13, 1000000L, track2.timescale);
                if (z8 && iArr8[i42] > i46) {
                    i46 = iArr4[i43];
                }
                i42++;
                i43++;
                i44 = i47;
                iArrCopyOf = iArr11;
                j12 = j14;
                iArr9 = iArr12;
            }
            j12 += track2.editListDurations[i39];
            i39++;
            i41 = i46;
            iArrCopyOf = iArrCopyOf;
            iArr6 = iArr10;
            iArr7 = iArr3;
            iArr9 = iArr9;
            iArr2 = iArr4;
            jArr = jArr3;
        }
        return new TrackSampleTable(track, jArr9, iArr8, i41, jArr10, iArr9, Util.scaleLargeTimestamp(j12, 1000000L, track2.movieTimescale));
    }

    private static StsdData parseStsd(ParsableByteArray parsableByteArray, int i2, int i3, String str, DrmInitData drmInitData, boolean z) throws ParserException {
        parsableByteArray.setPosition(12);
        int i4 = parsableByteArray.readInt();
        StsdData stsdData = new StsdData(i4);
        for (int i5 = 0; i5 < i4; i5++) {
            int position = parsableByteArray.getPosition();
            int i6 = parsableByteArray.readInt();
            Assertions.checkArgument(i6 > 0, "childAtomSize should be positive");
            int i7 = parsableByteArray.readInt();
            if (i7 == Atom.TYPE_avc1 || i7 == Atom.TYPE_avc3 || i7 == Atom.TYPE_encv || i7 == Atom.TYPE_mp4v || i7 == Atom.TYPE_hvc1 || i7 == Atom.TYPE_hev1 || i7 == Atom.TYPE_s263 || i7 == Atom.TYPE_vp08 || i7 == Atom.TYPE_vp09) {
                parseVideoSampleEntry(parsableByteArray, i7, position, i6, i2, i3, drmInitData, stsdData, i5);
            } else if (i7 == Atom.TYPE_mp4a || i7 == Atom.TYPE_enca || i7 == Atom.TYPE_ac_3 || i7 == Atom.TYPE_ec_3 || i7 == Atom.TYPE_dtsc || i7 == Atom.TYPE_dtse || i7 == Atom.TYPE_dtsh || i7 == Atom.TYPE_dtsl || i7 == Atom.TYPE_samr || i7 == Atom.TYPE_sawb || i7 == Atom.TYPE_lpcm || i7 == Atom.TYPE_sowt || i7 == Atom.TYPE__mp3 || i7 == Atom.TYPE_alac || i7 == Atom.TYPE_alaw || i7 == Atom.TYPE_ulaw || i7 == Atom.TYPE_Opus || i7 == Atom.TYPE_fLaC) {
                parseAudioSampleEntry(parsableByteArray, i7, position, i6, i2, str, z, drmInitData, stsdData, i5);
            } else if (i7 == Atom.TYPE_TTML || i7 == Atom.TYPE_tx3g || i7 == Atom.TYPE_wvtt || i7 == Atom.TYPE_stpp || i7 == Atom.TYPE_c608) {
                parseTextSampleEntry(parsableByteArray, i7, position, i6, i2, str, stsdData);
            } else if (i7 == Atom.TYPE_camm) {
                stsdData.format = Format.createSampleFormat(Integer.toString(i2), MimeTypes.APPLICATION_CAMERA_MOTION, null, -1, null);
            }
            parsableByteArray.setPosition(position + i6);
        }
        return stsdData;
    }

    private static void parseTextSampleEntry(ParsableByteArray parsableByteArray, int i2, int i3, int i4, int i5, String str, StsdData stsdData) {
        parsableByteArray.setPosition(i3 + 8 + 8);
        int i6 = Atom.TYPE_TTML;
        String str2 = MimeTypes.APPLICATION_TTML;
        List listSingletonList = null;
        long j2 = Long.MAX_VALUE;
        if (i2 != i6) {
            if (i2 == Atom.TYPE_tx3g) {
                int i7 = (i4 - 8) - 8;
                byte[] bArr = new byte[i7];
                parsableByteArray.readBytes(bArr, 0, i7);
                listSingletonList = Collections.singletonList(bArr);
                str2 = MimeTypes.APPLICATION_TX3G;
            } else if (i2 == Atom.TYPE_wvtt) {
                str2 = MimeTypes.APPLICATION_MP4VTT;
            } else if (i2 == Atom.TYPE_stpp) {
                j2 = 0;
            } else {
                if (i2 != Atom.TYPE_c608) {
                    throw new IllegalStateException();
                }
                stsdData.requiredSampleTransformation = 1;
                str2 = MimeTypes.APPLICATION_MP4CEA608;
            }
        }
        stsdData.format = Format.createTextSampleFormat(Integer.toString(i5), str2, null, -1, 0, str, -1, null, j2, listSingletonList);
    }

    private static TkhdData parseTkhd(ParsableByteArray parsableByteArray) {
        boolean z;
        parsableByteArray.setPosition(8);
        int fullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        parsableByteArray.skipBytes(fullAtomVersion == 0 ? 8 : 16);
        int i2 = parsableByteArray.readInt();
        parsableByteArray.skipBytes(4);
        int position = parsableByteArray.getPosition();
        int i3 = fullAtomVersion == 0 ? 4 : 8;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            if (i5 >= i3) {
                z = true;
                break;
            }
            if (parsableByteArray.data[position + i5] != -1) {
                z = false;
                break;
            }
            i5++;
        }
        long j2 = C.TIME_UNSET;
        if (z) {
            parsableByteArray.skipBytes(i3);
        } else {
            long unsignedInt = fullAtomVersion == 0 ? parsableByteArray.readUnsignedInt() : parsableByteArray.readUnsignedLongToLong();
            if (unsignedInt != 0) {
                j2 = unsignedInt;
            }
        }
        parsableByteArray.skipBytes(16);
        int i6 = parsableByteArray.readInt();
        int i7 = parsableByteArray.readInt();
        parsableByteArray.skipBytes(4);
        int i8 = parsableByteArray.readInt();
        int i9 = parsableByteArray.readInt();
        if (i6 == 0 && i7 == 65536 && i8 == -65536 && i9 == 0) {
            i4 = 90;
        } else if (i6 == 0 && i7 == -65536 && i8 == 65536 && i9 == 0) {
            i4 = 270;
        } else if (i6 == -65536 && i7 == 0 && i8 == 0 && i9 == -65536) {
            i4 = 180;
        }
        return new TkhdData(i2, j2, i4);
    }

    public static Track parseTrak(Atom.ContainerAtom containerAtom, Atom.LeafAtom leafAtom, long j2, DrmInitData drmInitData, boolean z, boolean z2) {
        Atom.LeafAtom leafAtom2;
        long j3;
        long[] jArr;
        long[] jArr2;
        Atom.ContainerAtom containerAtomOfType = containerAtom.getContainerAtomOfType(Atom.TYPE_mdia);
        int trackTypeForHdlr = getTrackTypeForHdlr(parseHdlr(containerAtomOfType.getLeafAtomOfType(Atom.TYPE_hdlr).data));
        if (trackTypeForHdlr == -1) {
            return null;
        }
        TkhdData tkhd = parseTkhd(containerAtom.getLeafAtomOfType(Atom.TYPE_tkhd).data);
        long jScaleLargeTimestamp = C.TIME_UNSET;
        if (j2 == C.TIME_UNSET) {
            j3 = tkhd.duration;
            leafAtom2 = leafAtom;
        } else {
            leafAtom2 = leafAtom;
            j3 = j2;
        }
        long mvhd = parseMvhd(leafAtom2.data);
        if (j3 != C.TIME_UNSET) {
            jScaleLargeTimestamp = Util.scaleLargeTimestamp(j3, 1000000L, mvhd);
        }
        long j4 = jScaleLargeTimestamp;
        Atom.ContainerAtom containerAtomOfType2 = containerAtomOfType.getContainerAtomOfType(Atom.TYPE_minf).getContainerAtomOfType(Atom.TYPE_stbl);
        Pair<Long, String> mdhd = parseMdhd(containerAtomOfType.getLeafAtomOfType(Atom.TYPE_mdhd).data);
        StsdData stsd = parseStsd(containerAtomOfType2.getLeafAtomOfType(Atom.TYPE_stsd).data, tkhd.id, tkhd.rotationDegrees, (String) mdhd.second, drmInitData, z2);
        if (z) {
            jArr = null;
            jArr2 = null;
        } else {
            Pair<long[], long[]> edts = parseEdts(containerAtom.getContainerAtomOfType(Atom.TYPE_edts));
            long[] jArr3 = (long[]) edts.first;
            jArr2 = (long[]) edts.second;
            jArr = jArr3;
        }
        if (stsd.format == null) {
            return null;
        }
        return new Track(tkhd.id, trackTypeForHdlr, ((Long) mdhd.first).longValue(), mvhd, j4, stsd.format, stsd.requiredSampleTransformation, stsd.trackEncryptionBoxes, stsd.nalUnitLengthFieldLength, jArr, jArr2);
    }

    public static Metadata parseUdta(Atom.LeafAtom leafAtom, boolean z) {
        if (z) {
            return null;
        }
        ParsableByteArray parsableByteArray = leafAtom.data;
        parsableByteArray.setPosition(8);
        while (parsableByteArray.bytesLeft() >= 8) {
            int position = parsableByteArray.getPosition();
            int i2 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == Atom.TYPE_meta) {
                parsableByteArray.setPosition(position);
                return parseUdtaMeta(parsableByteArray, position + i2);
            }
            parsableByteArray.setPosition(position + i2);
        }
        return null;
    }

    private static Metadata parseUdtaMeta(ParsableByteArray parsableByteArray, int i2) {
        parsableByteArray.skipBytes(12);
        while (parsableByteArray.getPosition() < i2) {
            int position = parsableByteArray.getPosition();
            int i3 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == Atom.TYPE_ilst) {
                parsableByteArray.setPosition(position);
                return parseIlst(parsableByteArray, position + i3);
            }
            parsableByteArray.setPosition(position + i3);
        }
        return null;
    }

    private static void parseVideoSampleEntry(ParsableByteArray parsableByteArray, int i2, int i3, int i4, int i5, int i6, DrmInitData drmInitData, StsdData stsdData, int i7) throws ParserException {
        DrmInitData drmInitDataCopyWithSchemeType = drmInitData;
        parsableByteArray.setPosition(i3 + 8 + 8);
        parsableByteArray.skipBytes(16);
        int unsignedShort = parsableByteArray.readUnsignedShort();
        int unsignedShort2 = parsableByteArray.readUnsignedShort();
        parsableByteArray.skipBytes(50);
        int position = parsableByteArray.getPosition();
        String str = null;
        int iIntValue = i2;
        if (iIntValue == Atom.TYPE_encv) {
            Pair<Integer, TrackEncryptionBox> sampleEntryEncryptionData = parseSampleEntryEncryptionData(parsableByteArray, i3, i4);
            if (sampleEntryEncryptionData != null) {
                iIntValue = ((Integer) sampleEntryEncryptionData.first).intValue();
                drmInitDataCopyWithSchemeType = drmInitDataCopyWithSchemeType == null ? null : drmInitDataCopyWithSchemeType.copyWithSchemeType(((TrackEncryptionBox) sampleEntryEncryptionData.second).schemeType);
                stsdData.trackEncryptionBoxes[i7] = (TrackEncryptionBox) sampleEntryEncryptionData.second;
            }
            parsableByteArray.setPosition(position);
        }
        DrmInitData drmInitData2 = drmInitDataCopyWithSchemeType;
        List<byte[]> listSingletonList = null;
        byte[] projFromParent = null;
        boolean z = false;
        float paspFromParent = 1.0f;
        int i8 = -1;
        while (position - i3 < i4) {
            parsableByteArray.setPosition(position);
            int position2 = parsableByteArray.getPosition();
            int i9 = parsableByteArray.readInt();
            if (i9 == 0 && parsableByteArray.getPosition() - i3 == i4) {
                break;
            }
            Assertions.checkArgument(i9 > 0, "childAtomSize should be positive");
            int i10 = parsableByteArray.readInt();
            if (i10 == Atom.TYPE_avcC) {
                Assertions.checkState(str == null);
                parsableByteArray.setPosition(position2 + 8);
                AvcConfig avcConfig = AvcConfig.parse(parsableByteArray);
                listSingletonList = avcConfig.initializationData;
                stsdData.nalUnitLengthFieldLength = avcConfig.nalUnitLengthFieldLength;
                if (!z) {
                    paspFromParent = avcConfig.pixelWidthAspectRatio;
                }
                str = MimeTypes.VIDEO_H264;
            } else if (i10 == Atom.TYPE_hvcC) {
                Assertions.checkState(str == null);
                parsableByteArray.setPosition(position2 + 8);
                HevcConfig hevcConfig = HevcConfig.parse(parsableByteArray);
                listSingletonList = hevcConfig.initializationData;
                stsdData.nalUnitLengthFieldLength = hevcConfig.nalUnitLengthFieldLength;
                str = MimeTypes.VIDEO_H265;
            } else if (i10 == Atom.TYPE_vpcC) {
                Assertions.checkState(str == null);
                str = iIntValue == Atom.TYPE_vp08 ? MimeTypes.VIDEO_VP8 : MimeTypes.VIDEO_VP9;
            } else if (i10 == Atom.TYPE_d263) {
                Assertions.checkState(str == null);
                str = MimeTypes.VIDEO_H263;
            } else if (i10 == Atom.TYPE_esds) {
                Assertions.checkState(str == null);
                Pair<String, byte[]> esdsFromParent = parseEsdsFromParent(parsableByteArray, position2);
                str = (String) esdsFromParent.first;
                listSingletonList = Collections.singletonList(esdsFromParent.second);
            } else if (i10 == Atom.TYPE_pasp) {
                paspFromParent = parsePaspFromParent(parsableByteArray, position2);
                z = true;
            } else if (i10 == Atom.TYPE_sv3d) {
                projFromParent = parseProjFromParent(parsableByteArray, position2, i9);
            } else if (i10 == Atom.TYPE_st3d) {
                int unsignedByte = parsableByteArray.readUnsignedByte();
                parsableByteArray.skipBytes(3);
                if (unsignedByte == 0) {
                    int unsignedByte2 = parsableByteArray.readUnsignedByte();
                    if (unsignedByte2 == 0) {
                        i8 = 0;
                    } else if (unsignedByte2 == 1) {
                        i8 = 1;
                    } else if (unsignedByte2 == 2) {
                        i8 = 2;
                    } else if (unsignedByte2 == 3) {
                        i8 = 3;
                    }
                }
            }
            position += i9;
        }
        if (str == null) {
            return;
        }
        stsdData.format = Format.createVideoSampleFormat(Integer.toString(i5), str, null, -1, -1, unsignedShort, unsignedShort2, -1.0f, listSingletonList, i6, paspFromParent, projFromParent, i8, null, drmInitData2);
    }
}
