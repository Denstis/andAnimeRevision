package com.google.android.exoplayer2.extractor.ts;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.ts.TsPayloadReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableBitArray;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.TimestampAdjuster;
import com.google.android.exoplayer2.util.Util;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class TsExtractor implements Extractor {
    private static final int BUFFER_SIZE = 9400;
    private static final int MAX_PID_PLUS_ONE = 8192;
    public static final int MODE_HLS = 2;
    public static final int MODE_MULTI_PMT = 0;
    public static final int MODE_SINGLE_PMT = 1;
    private static final int SNIFF_TS_PACKET_COUNT = 5;
    public static final int TS_PACKET_SIZE = 188;
    private static final int TS_PAT_PID = 0;
    public static final int TS_STREAM_TYPE_AAC_ADTS = 15;
    public static final int TS_STREAM_TYPE_AAC_LATM = 17;
    public static final int TS_STREAM_TYPE_AC3 = 129;
    public static final int TS_STREAM_TYPE_DTS = 138;
    public static final int TS_STREAM_TYPE_DVBSUBS = 89;
    public static final int TS_STREAM_TYPE_E_AC3 = 135;
    public static final int TS_STREAM_TYPE_H262 = 2;
    public static final int TS_STREAM_TYPE_H264 = 27;
    public static final int TS_STREAM_TYPE_H265 = 36;
    public static final int TS_STREAM_TYPE_HDMV_DTS = 130;
    public static final int TS_STREAM_TYPE_ID3 = 21;
    public static final int TS_STREAM_TYPE_MPA = 3;
    public static final int TS_STREAM_TYPE_MPA_LSF = 4;
    public static final int TS_STREAM_TYPE_SPLICE_INFO = 134;
    public static final int TS_SYNC_BYTE = 71;
    private int bytesSinceLastSync;
    private final SparseIntArray continuityCounters;
    private final TsDurationReader durationReader;
    private boolean hasOutputSeekMap;
    private TsPayloadReader id3Reader;
    private final int mode;
    private ExtractorOutput output;
    private final TsPayloadReader.Factory payloadReaderFactory;
    private int pcrPid;
    private boolean pendingSeekToStart;
    private int remainingPmts;
    private final List<TimestampAdjuster> timestampAdjusters;
    private final SparseBooleanArray trackIds;
    private final SparseBooleanArray trackPids;
    private boolean tracksEnded;
    private TsBinarySearchSeeker tsBinarySearchSeeker;
    private final ParsableByteArray tsPacketBuffer;
    private final SparseArray<TsPayloadReader> tsPayloadReaders;
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: com.google.android.exoplayer2.extractor.ts.d
        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            return TsExtractor.a();
        }
    };
    private static final long AC3_FORMAT_IDENTIFIER = Util.getIntegerCodeForString("AC-3");
    private static final long E_AC3_FORMAT_IDENTIFIER = Util.getIntegerCodeForString("EAC3");
    private static final long HEVC_FORMAT_IDENTIFIER = Util.getIntegerCodeForString("HEVC");

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Mode {
    }

    private class PatReader implements SectionPayloadReader {
        private final ParsableBitArray patScratch = new ParsableBitArray(new byte[4]);

        public PatReader() {
        }

        @Override // com.google.android.exoplayer2.extractor.ts.SectionPayloadReader
        public void consume(ParsableByteArray parsableByteArray) {
            if (parsableByteArray.readUnsignedByte() != 0) {
                return;
            }
            parsableByteArray.skipBytes(7);
            int iBytesLeft = parsableByteArray.bytesLeft() / 4;
            for (int i2 = 0; i2 < iBytesLeft; i2++) {
                parsableByteArray.readBytes(this.patScratch, 4);
                int bits = this.patScratch.readBits(16);
                this.patScratch.skipBits(3);
                if (bits == 0) {
                    this.patScratch.skipBits(13);
                } else {
                    int bits2 = this.patScratch.readBits(13);
                    TsExtractor.this.tsPayloadReaders.put(bits2, new SectionReader(TsExtractor.this.new PmtReader(bits2)));
                    TsExtractor.access$108(TsExtractor.this);
                }
            }
            if (TsExtractor.this.mode != 2) {
                TsExtractor.this.tsPayloadReaders.remove(0);
            }
        }

        @Override // com.google.android.exoplayer2.extractor.ts.SectionPayloadReader
        public void init(TimestampAdjuster timestampAdjuster, ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        }
    }

    private class PmtReader implements SectionPayloadReader {
        private static final int TS_PMT_DESC_AC3 = 106;
        private static final int TS_PMT_DESC_DTS = 123;
        private static final int TS_PMT_DESC_DVBSUBS = 89;
        private static final int TS_PMT_DESC_EAC3 = 122;
        private static final int TS_PMT_DESC_ISO639_LANG = 10;
        private static final int TS_PMT_DESC_REGISTRATION = 5;
        private final int pid;
        private final ParsableBitArray pmtScratch = new ParsableBitArray(new byte[5]);
        private final SparseArray<TsPayloadReader> trackIdToReaderScratch = new SparseArray<>();
        private final SparseIntArray trackIdToPidScratch = new SparseIntArray();

        public PmtReader(int i2) {
            this.pid = i2;
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0049  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0050  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private com.google.android.exoplayer2.extractor.ts.TsPayloadReader.EsInfo readEsInfo(com.google.android.exoplayer2.util.ParsableByteArray r13, int r14) {
            /*
                r12 = this;
                int r0 = r13.getPosition()
                int r14 = r14 + r0
                r1 = 0
                r2 = -1
                r3 = r1
            L8:
                int r4 = r13.getPosition()
                if (r4 >= r14) goto L9e
                int r4 = r13.readUnsignedByte()
                int r5 = r13.readUnsignedByte()
                int r6 = r13.getPosition()
                int r6 = r6 + r5
                r5 = 5
                r7 = 89
                r8 = 135(0x87, float:1.89E-43)
                r9 = 129(0x81, float:1.81E-43)
                if (r4 != r5) goto L45
                long r4 = r13.readUnsignedInt()
                long r10 = com.google.android.exoplayer2.extractor.ts.TsExtractor.access$1100()
                int r7 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1))
                if (r7 != 0) goto L31
                goto L49
            L31:
                long r9 = com.google.android.exoplayer2.extractor.ts.TsExtractor.access$1200()
                int r7 = (r4 > r9 ? 1 : (r4 == r9 ? 0 : -1))
                if (r7 != 0) goto L3a
                goto L50
            L3a:
                long r7 = com.google.android.exoplayer2.extractor.ts.TsExtractor.access$1300()
                int r9 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1))
                if (r9 != 0) goto L94
                r2 = 36
                goto L94
            L45:
                r5 = 106(0x6a, float:1.49E-43)
                if (r4 != r5) goto L4c
            L49:
                r2 = 129(0x81, float:1.81E-43)
                goto L94
            L4c:
                r5 = 122(0x7a, float:1.71E-43)
                if (r4 != r5) goto L53
            L50:
                r2 = 135(0x87, float:1.89E-43)
                goto L94
            L53:
                r5 = 123(0x7b, float:1.72E-43)
                if (r4 != r5) goto L5a
                r2 = 138(0x8a, float:1.93E-43)
                goto L94
            L5a:
                r5 = 10
                r8 = 3
                if (r4 != r5) goto L68
                java.lang.String r1 = r13.readString(r8)
                java.lang.String r1 = r1.trim()
                goto L94
            L68:
                if (r4 != r7) goto L94
                java.util.ArrayList r2 = new java.util.ArrayList
                r2.<init>()
            L6f:
                int r3 = r13.getPosition()
                if (r3 >= r6) goto L91
                java.lang.String r3 = r13.readString(r8)
                java.lang.String r3 = r3.trim()
                int r4 = r13.readUnsignedByte()
                r5 = 4
                byte[] r9 = new byte[r5]
                r10 = 0
                r13.readBytes(r9, r10, r5)
                com.google.android.exoplayer2.extractor.ts.TsPayloadReader$DvbSubtitleInfo r5 = new com.google.android.exoplayer2.extractor.ts.TsPayloadReader$DvbSubtitleInfo
                r5.<init>(r3, r4, r9)
                r2.add(r5)
                goto L6f
            L91:
                r3 = r2
                r2 = 89
            L94:
                int r4 = r13.getPosition()
                int r6 = r6 - r4
                r13.skipBytes(r6)
                goto L8
            L9e:
                r13.setPosition(r14)
                com.google.android.exoplayer2.extractor.ts.TsPayloadReader$EsInfo r4 = new com.google.android.exoplayer2.extractor.ts.TsPayloadReader$EsInfo
                byte[] r13 = r13.data
                byte[] r13 = java.util.Arrays.copyOfRange(r13, r0, r14)
                r4.<init>(r2, r1, r3, r13)
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.ts.TsExtractor.PmtReader.readEsInfo(com.google.android.exoplayer2.util.ParsableByteArray, int):com.google.android.exoplayer2.extractor.ts.TsPayloadReader$EsInfo");
        }

        @Override // com.google.android.exoplayer2.extractor.ts.SectionPayloadReader
        public void consume(ParsableByteArray parsableByteArray) {
            TimestampAdjuster timestampAdjuster;
            if (parsableByteArray.readUnsignedByte() != 2) {
                return;
            }
            if (TsExtractor.this.mode == 1 || TsExtractor.this.mode == 2 || TsExtractor.this.remainingPmts == 1) {
                timestampAdjuster = (TimestampAdjuster) TsExtractor.this.timestampAdjusters.get(0);
            } else {
                timestampAdjuster = new TimestampAdjuster(((TimestampAdjuster) TsExtractor.this.timestampAdjusters.get(0)).getFirstSampleTimestampUs());
                TsExtractor.this.timestampAdjusters.add(timestampAdjuster);
            }
            parsableByteArray.skipBytes(2);
            int unsignedShort = parsableByteArray.readUnsignedShort();
            int i2 = 3;
            parsableByteArray.skipBytes(3);
            parsableByteArray.readBytes(this.pmtScratch, 2);
            this.pmtScratch.skipBits(3);
            int i3 = 13;
            TsExtractor.this.pcrPid = this.pmtScratch.readBits(13);
            parsableByteArray.readBytes(this.pmtScratch, 2);
            int i4 = 4;
            this.pmtScratch.skipBits(4);
            parsableByteArray.skipBytes(this.pmtScratch.readBits(12));
            if (TsExtractor.this.mode == 2 && TsExtractor.this.id3Reader == null) {
                TsPayloadReader.EsInfo esInfo = new TsPayloadReader.EsInfo(21, null, null, Util.EMPTY_BYTE_ARRAY);
                TsExtractor tsExtractor = TsExtractor.this;
                tsExtractor.id3Reader = tsExtractor.payloadReaderFactory.createPayloadReader(21, esInfo);
                TsExtractor.this.id3Reader.init(timestampAdjuster, TsExtractor.this.output, new TsPayloadReader.TrackIdGenerator(unsignedShort, 21, TsExtractor.MAX_PID_PLUS_ONE));
            }
            this.trackIdToReaderScratch.clear();
            this.trackIdToPidScratch.clear();
            int iBytesLeft = parsableByteArray.bytesLeft();
            while (iBytesLeft > 0) {
                parsableByteArray.readBytes(this.pmtScratch, 5);
                int bits = this.pmtScratch.readBits(8);
                this.pmtScratch.skipBits(i2);
                int bits2 = this.pmtScratch.readBits(i3);
                this.pmtScratch.skipBits(i4);
                int bits3 = this.pmtScratch.readBits(12);
                TsPayloadReader.EsInfo esInfo2 = readEsInfo(parsableByteArray, bits3);
                if (bits == 6) {
                    bits = esInfo2.streamType;
                }
                iBytesLeft -= bits3 + 5;
                int i5 = TsExtractor.this.mode == 2 ? bits : bits2;
                if (!TsExtractor.this.trackIds.get(i5)) {
                    TsPayloadReader tsPayloadReaderCreatePayloadReader = (TsExtractor.this.mode == 2 && bits == 21) ? TsExtractor.this.id3Reader : TsExtractor.this.payloadReaderFactory.createPayloadReader(bits, esInfo2);
                    if (TsExtractor.this.mode != 2 || bits2 < this.trackIdToPidScratch.get(i5, TsExtractor.MAX_PID_PLUS_ONE)) {
                        this.trackIdToPidScratch.put(i5, bits2);
                        this.trackIdToReaderScratch.put(i5, tsPayloadReaderCreatePayloadReader);
                    }
                }
                i2 = 3;
                i4 = 4;
                i3 = 13;
            }
            int size = this.trackIdToPidScratch.size();
            for (int i6 = 0; i6 < size; i6++) {
                int iKeyAt = this.trackIdToPidScratch.keyAt(i6);
                int iValueAt = this.trackIdToPidScratch.valueAt(i6);
                TsExtractor.this.trackIds.put(iKeyAt, true);
                TsExtractor.this.trackPids.put(iValueAt, true);
                TsPayloadReader tsPayloadReaderValueAt = this.trackIdToReaderScratch.valueAt(i6);
                if (tsPayloadReaderValueAt != null) {
                    if (tsPayloadReaderValueAt != TsExtractor.this.id3Reader) {
                        tsPayloadReaderValueAt.init(timestampAdjuster, TsExtractor.this.output, new TsPayloadReader.TrackIdGenerator(unsignedShort, iKeyAt, TsExtractor.MAX_PID_PLUS_ONE));
                    }
                    TsExtractor.this.tsPayloadReaders.put(iValueAt, tsPayloadReaderValueAt);
                }
            }
            if (TsExtractor.this.mode != 2) {
                TsExtractor.this.tsPayloadReaders.remove(this.pid);
                TsExtractor tsExtractor2 = TsExtractor.this;
                tsExtractor2.remainingPmts = tsExtractor2.mode != 1 ? TsExtractor.this.remainingPmts - 1 : 0;
                if (TsExtractor.this.remainingPmts != 0) {
                    return;
                } else {
                    TsExtractor.this.output.endTracks();
                }
            } else {
                if (TsExtractor.this.tracksEnded) {
                    return;
                }
                TsExtractor.this.output.endTracks();
                TsExtractor.this.remainingPmts = 0;
            }
            TsExtractor.this.tracksEnded = true;
        }

        @Override // com.google.android.exoplayer2.extractor.ts.SectionPayloadReader
        public void init(TimestampAdjuster timestampAdjuster, ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        }
    }

    public TsExtractor() {
        this(0);
    }

    public TsExtractor(int i2) {
        this(1, i2);
    }

    public TsExtractor(int i2, int i3) {
        this(i2, new TimestampAdjuster(0L), new DefaultTsPayloadReaderFactory(i3));
    }

    public TsExtractor(int i2, TimestampAdjuster timestampAdjuster, TsPayloadReader.Factory factory) {
        this.payloadReaderFactory = (TsPayloadReader.Factory) Assertions.checkNotNull(factory);
        this.mode = i2;
        if (i2 == 1 || i2 == 2) {
            this.timestampAdjusters = Collections.singletonList(timestampAdjuster);
        } else {
            this.timestampAdjusters = new ArrayList();
            this.timestampAdjusters.add(timestampAdjuster);
        }
        this.tsPacketBuffer = new ParsableByteArray(new byte[BUFFER_SIZE], 0);
        this.trackIds = new SparseBooleanArray();
        this.trackPids = new SparseBooleanArray();
        this.tsPayloadReaders = new SparseArray<>();
        this.continuityCounters = new SparseIntArray();
        this.durationReader = new TsDurationReader();
        this.pcrPid = -1;
        resetPayloadReaders();
    }

    static /* synthetic */ Extractor[] a() {
        return new Extractor[]{new TsExtractor()};
    }

    static /* synthetic */ int access$108(TsExtractor tsExtractor) {
        int i2 = tsExtractor.remainingPmts;
        tsExtractor.remainingPmts = i2 + 1;
        return i2;
    }

    private boolean fillBufferWithAtLeastOnePacket(ExtractorInput extractorInput) {
        ParsableByteArray parsableByteArray = this.tsPacketBuffer;
        byte[] bArr = parsableByteArray.data;
        if (9400 - parsableByteArray.getPosition() < 188) {
            int iBytesLeft = this.tsPacketBuffer.bytesLeft();
            if (iBytesLeft > 0) {
                System.arraycopy(bArr, this.tsPacketBuffer.getPosition(), bArr, 0, iBytesLeft);
            }
            this.tsPacketBuffer.reset(bArr, iBytesLeft);
        }
        while (this.tsPacketBuffer.bytesLeft() < 188) {
            int iLimit = this.tsPacketBuffer.limit();
            int i2 = extractorInput.read(bArr, iLimit, 9400 - iLimit);
            if (i2 == -1) {
                return false;
            }
            this.tsPacketBuffer.setLimit(iLimit + i2);
        }
        return true;
    }

    private int findEndOfFirstTsPacketInBuffer() throws ParserException {
        int position = this.tsPacketBuffer.getPosition();
        int iLimit = this.tsPacketBuffer.limit();
        int iFindSyncBytePosition = TsUtil.findSyncBytePosition(this.tsPacketBuffer.data, position, iLimit);
        this.tsPacketBuffer.setPosition(iFindSyncBytePosition);
        int i2 = iFindSyncBytePosition + TS_PACKET_SIZE;
        if (i2 > iLimit) {
            this.bytesSinceLastSync += iFindSyncBytePosition - position;
            if (this.mode == 2 && this.bytesSinceLastSync > 376) {
                throw new ParserException("Cannot find sync byte. Most likely not a Transport Stream.");
            }
        } else {
            this.bytesSinceLastSync = 0;
        }
        return i2;
    }

    private void maybeOutputSeekMap(long j2) {
        ExtractorOutput extractorOutput;
        SeekMap unseekable;
        if (this.hasOutputSeekMap) {
            return;
        }
        this.hasOutputSeekMap = true;
        if (this.durationReader.getDurationUs() != C.TIME_UNSET) {
            this.tsBinarySearchSeeker = new TsBinarySearchSeeker(this.durationReader.getPcrTimestampAdjuster(), this.durationReader.getDurationUs(), j2, this.pcrPid);
            extractorOutput = this.output;
            unseekable = this.tsBinarySearchSeeker.getSeekMap();
        } else {
            extractorOutput = this.output;
            unseekable = new SeekMap.Unseekable(this.durationReader.getDurationUs());
        }
        extractorOutput.seekMap(unseekable);
    }

    private void resetPayloadReaders() {
        this.trackIds.clear();
        this.tsPayloadReaders.clear();
        SparseArray<TsPayloadReader> sparseArrayCreateInitialPayloadReaders = this.payloadReaderFactory.createInitialPayloadReaders();
        int size = sparseArrayCreateInitialPayloadReaders.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.tsPayloadReaders.put(sparseArrayCreateInitialPayloadReaders.keyAt(i2), sparseArrayCreateInitialPayloadReaders.valueAt(i2));
        }
        this.tsPayloadReaders.put(0, new SectionReader(new PatReader()));
        this.id3Reader = null;
    }

    private boolean shouldConsumePacketPayload(int i2) {
        return this.mode == 2 || this.tracksEnded || !this.trackPids.get(i2, false);
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.output = extractorOutput;
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00ee  */
    @Override // com.google.android.exoplayer2.extractor.Extractor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int read(com.google.android.exoplayer2.extractor.ExtractorInput r17, com.google.android.exoplayer2.extractor.PositionHolder r18) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instruction units count: 273
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.ts.TsExtractor.read(com.google.android.exoplayer2.extractor.ExtractorInput, com.google.android.exoplayer2.extractor.PositionHolder):int");
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j2, long j3) {
        TsBinarySearchSeeker tsBinarySearchSeeker;
        Assertions.checkState(this.mode != 2);
        int size = this.timestampAdjusters.size();
        for (int i2 = 0; i2 < size; i2++) {
            TimestampAdjuster timestampAdjuster = this.timestampAdjusters.get(i2);
            if ((timestampAdjuster.getTimestampOffsetUs() == C.TIME_UNSET) || (timestampAdjuster.getTimestampOffsetUs() != 0 && timestampAdjuster.getFirstSampleTimestampUs() != j3)) {
                timestampAdjuster.reset();
                timestampAdjuster.setFirstSampleTimestampUs(j3);
            }
        }
        if (j3 != 0 && (tsBinarySearchSeeker = this.tsBinarySearchSeeker) != null) {
            tsBinarySearchSeeker.setSeekTargetUs(j3);
        }
        this.tsPacketBuffer.reset();
        this.continuityCounters.clear();
        for (int i3 = 0; i3 < this.tsPayloadReaders.size(); i3++) {
            this.tsPayloadReaders.valueAt(i3).seek();
        }
        this.bytesSinceLastSync = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) {
        boolean z;
        byte[] bArr = this.tsPacketBuffer.data;
        extractorInput.peekFully(bArr, 0, 940);
        for (int i2 = 0; i2 < 188; i2++) {
            int i3 = 0;
            while (true) {
                if (i3 >= 5) {
                    z = true;
                    break;
                }
                if (bArr[(i3 * TS_PACKET_SIZE) + i2] != 71) {
                    z = false;
                    break;
                }
                i3++;
            }
            if (z) {
                extractorInput.skipFully(i2);
                return true;
            }
        }
        return false;
    }
}
