package com.google.android.exoplayer2.extractor.ts;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.ConstantBitrateSeekMap;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.ts.TsPayloadReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableBitArray;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public final class AdtsExtractor implements Extractor {
    public static final int FLAG_ENABLE_CONSTANT_BITRATE_SEEKING = 1;
    private static final int MAX_PACKET_SIZE = 2048;
    private static final int MAX_SNIFF_BYTES = 8192;
    private static final int NUM_FRAMES_FOR_AVERAGE_FRAME_SIZE = 1000;
    private int averageFrameSize;
    private ExtractorOutput extractorOutput;
    private long firstFramePosition;
    private long firstSampleTimestampUs;
    private final long firstStreamSampleTimestampUs;
    private final int flags;
    private boolean hasCalculatedAverageFrameSize;
    private boolean hasOutputSeekMap;
    private final ParsableByteArray packetBuffer;
    private final AdtsReader reader;
    private final ParsableByteArray scratch;
    private final ParsableBitArray scratchBits;
    private boolean startedPacket;
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: com.google.android.exoplayer2.extractor.ts.b
        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            return AdtsExtractor.a();
        }
    };
    private static final int ID3_TAG = Util.getIntegerCodeForString("ID3");

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    public AdtsExtractor() {
        this(0L);
    }

    public AdtsExtractor(long j2) {
        this(j2, 0);
    }

    public AdtsExtractor(long j2, int i2) {
        this.firstStreamSampleTimestampUs = j2;
        this.firstSampleTimestampUs = j2;
        this.flags = i2;
        this.reader = new AdtsReader(true);
        this.packetBuffer = new ParsableByteArray(MAX_PACKET_SIZE);
        this.averageFrameSize = -1;
        this.firstFramePosition = -1L;
        this.scratch = new ParsableByteArray(10);
        this.scratchBits = new ParsableBitArray(this.scratch.data);
    }

    static /* synthetic */ Extractor[] a() {
        return new Extractor[]{new AdtsExtractor()};
    }

    private void calculateAverageFrameSize(ExtractorInput extractorInput) throws ParserException {
        if (this.hasCalculatedAverageFrameSize) {
            return;
        }
        this.averageFrameSize = -1;
        extractorInput.resetPeekPosition();
        long j2 = 0;
        if (extractorInput.getPosition() == 0) {
            peekId3Header(extractorInput);
        }
        int i2 = 0;
        while (true) {
            if (!extractorInput.peekFully(this.scratch.data, 0, 2, true)) {
                break;
            }
            this.scratch.setPosition(0);
            if (!AdtsReader.isAdtsSyncWord(this.scratch.readUnsignedShort())) {
                i2 = 0;
                break;
            }
            if (!extractorInput.peekFully(this.scratch.data, 0, 4, true)) {
                break;
            }
            this.scratchBits.setPosition(14);
            int bits = this.scratchBits.readBits(13);
            if (bits <= 6) {
                this.hasCalculatedAverageFrameSize = true;
                throw new ParserException("Malformed ADTS stream");
            }
            j2 += (long) bits;
            i2++;
            if (i2 == NUM_FRAMES_FOR_AVERAGE_FRAME_SIZE || !extractorInput.advancePeekPosition(bits - 6, true)) {
                break;
            }
        }
        extractorInput.resetPeekPosition();
        if (i2 > 0) {
            this.averageFrameSize = (int) (j2 / ((long) i2));
        } else {
            this.averageFrameSize = -1;
        }
        this.hasCalculatedAverageFrameSize = true;
    }

    private static int getBitrateFromFrameSize(int i2, long j2) {
        return (int) ((((long) (i2 * 8)) * 1000000) / j2);
    }

    private SeekMap getConstantBitrateSeekMap(long j2) {
        return new ConstantBitrateSeekMap(j2, this.firstFramePosition, getBitrateFromFrameSize(this.averageFrameSize, this.reader.getSampleDurationUs()), this.averageFrameSize);
    }

    private void maybeOutputSeekMap(long j2, boolean z, boolean z2) {
        if (this.hasOutputSeekMap) {
            return;
        }
        boolean z3 = z && this.averageFrameSize > 0;
        if (z3 && this.reader.getSampleDurationUs() == C.TIME_UNSET && !z2) {
            return;
        }
        ((ExtractorOutput) Assertions.checkNotNull(this.extractorOutput)).seekMap((!z3 || this.reader.getSampleDurationUs() == C.TIME_UNSET) ? new SeekMap.Unseekable(C.TIME_UNSET) : getConstantBitrateSeekMap(j2));
        this.hasOutputSeekMap = true;
    }

    private int peekId3Header(ExtractorInput extractorInput) {
        int i2 = 0;
        while (true) {
            extractorInput.peekFully(this.scratch.data, 0, 10);
            this.scratch.setPosition(0);
            if (this.scratch.readUnsignedInt24() != ID3_TAG) {
                break;
            }
            this.scratch.skipBytes(3);
            int synchSafeInt = this.scratch.readSynchSafeInt();
            i2 += synchSafeInt + 10;
            extractorInput.advancePeekPosition(synchSafeInt);
        }
        extractorInput.resetPeekPosition();
        extractorInput.advancePeekPosition(i2);
        if (this.firstFramePosition == -1) {
            this.firstFramePosition = i2;
        }
        return i2;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
        this.reader.createTracks(extractorOutput, new TsPayloadReader.TrackIdGenerator(0, 1));
        extractorOutput.endTracks();
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws ParserException {
        long length = extractorInput.getLength();
        boolean z = ((this.flags & 1) == 0 || length == -1) ? false : true;
        if (z) {
            calculateAverageFrameSize(extractorInput);
        }
        int i2 = extractorInput.read(this.packetBuffer.data, 0, MAX_PACKET_SIZE);
        boolean z2 = i2 == -1;
        maybeOutputSeekMap(length, z, z2);
        if (z2) {
            return -1;
        }
        this.packetBuffer.setPosition(0);
        this.packetBuffer.setLimit(i2);
        if (!this.startedPacket) {
            this.reader.packetStarted(this.firstSampleTimestampUs, 4);
            this.startedPacket = true;
        }
        this.reader.consume(this.packetBuffer);
        return 0;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j2, long j3) {
        this.startedPacket = false;
        this.reader.seek();
        this.firstSampleTimestampUs = this.firstStreamSampleTimestampUs + j3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0021, code lost:
    
        r9.resetPeekPosition();
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x002a, code lost:
    
        if ((r3 - r0) < com.google.android.exoplayer2.extractor.ts.AdtsExtractor.MAX_SNIFF_BYTES) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x002c, code lost:
    
        return false;
     */
    @Override // com.google.android.exoplayer2.extractor.Extractor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean sniff(com.google.android.exoplayer2.extractor.ExtractorInput r9) {
        /*
            r8 = this;
            int r0 = r8.peekId3Header(r9)
            r1 = 0
            r3 = r0
        L6:
            r2 = 0
            r4 = 0
        L8:
            com.google.android.exoplayer2.util.ParsableByteArray r5 = r8.scratch
            byte[] r5 = r5.data
            r6 = 2
            r9.peekFully(r5, r1, r6)
            com.google.android.exoplayer2.util.ParsableByteArray r5 = r8.scratch
            r5.setPosition(r1)
            com.google.android.exoplayer2.util.ParsableByteArray r5 = r8.scratch
            int r5 = r5.readUnsignedShort()
            boolean r5 = com.google.android.exoplayer2.extractor.ts.AdtsReader.isAdtsSyncWord(r5)
            if (r5 != 0) goto L31
            r9.resetPeekPosition()
            int r3 = r3 + 1
            int r2 = r3 - r0
            r4 = 8192(0x2000, float:1.148E-41)
            if (r2 < r4) goto L2d
            return r1
        L2d:
            r9.advancePeekPosition(r3)
            goto L6
        L31:
            r5 = 1
            int r2 = r2 + r5
            r6 = 4
            if (r2 < r6) goto L3b
            r7 = 188(0xbc, float:2.63E-43)
            if (r4 <= r7) goto L3b
            return r5
        L3b:
            com.google.android.exoplayer2.util.ParsableByteArray r5 = r8.scratch
            byte[] r5 = r5.data
            r9.peekFully(r5, r1, r6)
            com.google.android.exoplayer2.util.ParsableBitArray r5 = r8.scratchBits
            r6 = 14
            r5.setPosition(r6)
            com.google.android.exoplayer2.util.ParsableBitArray r5 = r8.scratchBits
            r6 = 13
            int r5 = r5.readBits(r6)
            r6 = 6
            if (r5 > r6) goto L55
            return r1
        L55:
            int r6 = r5 + (-6)
            r9.advancePeekPosition(r6)
            int r4 = r4 + r5
            goto L8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.ts.AdtsExtractor.sniff(com.google.android.exoplayer2.extractor.ExtractorInput):boolean");
    }
}
