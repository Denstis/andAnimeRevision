package com.google.android.exoplayer2.extractor.ts;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.Ac3Util;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.extractor.ts.TsPayloadReader;
import com.google.android.exoplayer2.util.ParsableBitArray;
import com.google.android.exoplayer2.util.ParsableByteArray;

/* JADX INFO: loaded from: classes.dex */
public final class Ac3Reader implements ElementaryStreamReader {
    private static final int HEADER_SIZE = 128;
    private static final int STATE_FINDING_SYNC = 0;
    private static final int STATE_READING_HEADER = 1;
    private static final int STATE_READING_SAMPLE = 2;
    private int bytesRead;
    private Format format;
    private final ParsableBitArray headerScratchBits;
    private final ParsableByteArray headerScratchBytes;
    private final String language;
    private boolean lastByteWas0B;
    private TrackOutput output;
    private long sampleDurationUs;
    private int sampleSize;
    private int state;
    private long timeUs;
    private String trackFormatId;

    public Ac3Reader() {
        this(null);
    }

    public Ac3Reader(String str) {
        this.headerScratchBits = new ParsableBitArray(new byte[HEADER_SIZE]);
        this.headerScratchBytes = new ParsableByteArray(this.headerScratchBits.data);
        this.state = 0;
        this.language = str;
    }

    private boolean continueRead(ParsableByteArray parsableByteArray, byte[] bArr, int i2) {
        int iMin = Math.min(parsableByteArray.bytesLeft(), i2 - this.bytesRead);
        parsableByteArray.readBytes(bArr, this.bytesRead, iMin);
        this.bytesRead += iMin;
        return this.bytesRead == i2;
    }

    private void parseHeader() {
        this.headerScratchBits.setPosition(0);
        Ac3Util.SyncFrameInfo ac3SyncframeInfo = Ac3Util.parseAc3SyncframeInfo(this.headerScratchBits);
        Format format = this.format;
        if (format == null || ac3SyncframeInfo.channelCount != format.channelCount || ac3SyncframeInfo.sampleRate != format.sampleRate || ac3SyncframeInfo.mimeType != format.sampleMimeType) {
            this.format = Format.createAudioSampleFormat(this.trackFormatId, ac3SyncframeInfo.mimeType, null, -1, -1, ac3SyncframeInfo.channelCount, ac3SyncframeInfo.sampleRate, null, null, 0, this.language);
            this.output.format(this.format);
        }
        this.sampleSize = ac3SyncframeInfo.frameSize;
        this.sampleDurationUs = (((long) ac3SyncframeInfo.sampleCount) * 1000000) / ((long) this.format.sampleRate);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean skipToNextSync(com.google.android.exoplayer2.util.ParsableByteArray r6) {
        /*
            r5 = this;
        L0:
            int r0 = r6.bytesLeft()
            r1 = 0
            if (r0 <= 0) goto L26
            boolean r0 = r5.lastByteWas0B
            r2 = 11
            r3 = 1
            if (r0 != 0) goto L18
            int r0 = r6.readUnsignedByte()
            if (r0 != r2) goto L15
        L14:
            r1 = 1
        L15:
            r5.lastByteWas0B = r1
            goto L0
        L18:
            int r0 = r6.readUnsignedByte()
            r4 = 119(0x77, float:1.67E-43)
            if (r0 != r4) goto L23
            r5.lastByteWas0B = r1
            return r3
        L23:
            if (r0 != r2) goto L15
            goto L14
        L26:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.ts.Ac3Reader.skipToNextSync(com.google.android.exoplayer2.util.ParsableByteArray):boolean");
    }

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void consume(ParsableByteArray parsableByteArray) {
        while (parsableByteArray.bytesLeft() > 0) {
            int i2 = this.state;
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 == 2) {
                        int iMin = Math.min(parsableByteArray.bytesLeft(), this.sampleSize - this.bytesRead);
                        this.output.sampleData(parsableByteArray, iMin);
                        this.bytesRead += iMin;
                        int i3 = this.bytesRead;
                        int i4 = this.sampleSize;
                        if (i3 == i4) {
                            this.output.sampleMetadata(this.timeUs, 1, i4, 0, null);
                            this.timeUs += this.sampleDurationUs;
                            this.state = 0;
                        }
                    }
                } else if (continueRead(parsableByteArray, this.headerScratchBytes.data, HEADER_SIZE)) {
                    parseHeader();
                    this.headerScratchBytes.setPosition(0);
                    this.output.sampleData(this.headerScratchBytes, HEADER_SIZE);
                    this.state = 2;
                }
            } else if (skipToNextSync(parsableByteArray)) {
                this.state = 1;
                byte[] bArr = this.headerScratchBytes.data;
                bArr[0] = 11;
                bArr[1] = 119;
                this.bytesRead = 2;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void createTracks(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.generateNewId();
        this.trackFormatId = trackIdGenerator.getFormatId();
        this.output = extractorOutput.track(trackIdGenerator.getTrackId(), 1);
    }

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void packetFinished() {
    }

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void packetStarted(long j2, int i2) {
        this.timeUs = j2;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void seek() {
        this.state = 0;
        this.bytesRead = 0;
        this.lastByteWas0B = false;
    }
}
