package com.google.android.exoplayer2.extractor.mp4;

import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.util.ParsableByteArray;

/* JADX INFO: loaded from: classes.dex */
final class TrackFragment {
    public long atomPosition;
    public long auxiliaryDataPosition;
    public long dataPosition;
    public boolean definesEncryptionData;
    public DefaultSampleValues header;
    public long nextFragmentDecodeTime;
    public int[] sampleCompositionTimeOffsetTable;
    public int sampleCount;
    public long[] sampleDecodingTimeTable;
    public ParsableByteArray sampleEncryptionData;
    public int sampleEncryptionDataLength;
    public boolean sampleEncryptionDataNeedsFill;
    public boolean[] sampleHasSubsampleEncryptionTable;
    public boolean[] sampleIsSyncFrameTable;
    public int[] sampleSizeTable;
    public TrackEncryptionBox trackEncryptionBox;
    public int trunCount;
    public long[] trunDataPosition;
    public int[] trunLength;

    TrackFragment() {
    }

    public void fillEncryptionData(ExtractorInput extractorInput) {
        extractorInput.readFully(this.sampleEncryptionData.data, 0, this.sampleEncryptionDataLength);
        this.sampleEncryptionData.setPosition(0);
        this.sampleEncryptionDataNeedsFill = false;
    }

    public void fillEncryptionData(ParsableByteArray parsableByteArray) {
        parsableByteArray.readBytes(this.sampleEncryptionData.data, 0, this.sampleEncryptionDataLength);
        this.sampleEncryptionData.setPosition(0);
        this.sampleEncryptionDataNeedsFill = false;
    }

    public long getSamplePresentationTime(int i2) {
        return this.sampleDecodingTimeTable[i2] + ((long) this.sampleCompositionTimeOffsetTable[i2]);
    }

    public void initEncryptionData(int i2) {
        ParsableByteArray parsableByteArray = this.sampleEncryptionData;
        if (parsableByteArray == null || parsableByteArray.limit() < i2) {
            this.sampleEncryptionData = new ParsableByteArray(i2);
        }
        this.sampleEncryptionDataLength = i2;
        this.definesEncryptionData = true;
        this.sampleEncryptionDataNeedsFill = true;
    }

    public void initTables(int i2, int i3) {
        this.trunCount = i2;
        this.sampleCount = i3;
        int[] iArr = this.trunLength;
        if (iArr == null || iArr.length < i2) {
            this.trunDataPosition = new long[i2];
            this.trunLength = new int[i2];
        }
        int[] iArr2 = this.sampleSizeTable;
        if (iArr2 == null || iArr2.length < i3) {
            int i4 = (i3 * 125) / 100;
            this.sampleSizeTable = new int[i4];
            this.sampleCompositionTimeOffsetTable = new int[i4];
            this.sampleDecodingTimeTable = new long[i4];
            this.sampleIsSyncFrameTable = new boolean[i4];
            this.sampleHasSubsampleEncryptionTable = new boolean[i4];
        }
    }

    public void reset() {
        this.trunCount = 0;
        this.nextFragmentDecodeTime = 0L;
        this.definesEncryptionData = false;
        this.sampleEncryptionDataNeedsFill = false;
        this.trackEncryptionBox = null;
    }

    public boolean sampleHasSubsampleEncryptionTable(int i2) {
        return this.definesEncryptionData && this.sampleHasSubsampleEncryptionTable[i2];
    }
}
