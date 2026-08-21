package com.google.android.exoplayer2.source.hls;

import android.util.Pair;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.DefaultExtractorInput;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.Id3Decoder;
import com.google.android.exoplayer2.metadata.id3.PrivFrame;
import com.google.android.exoplayer2.source.chunk.MediaChunk;
import com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.TimestampAdjuster;
import com.google.android.exoplayer2.util.Util;
import java.io.EOFException;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
final class HlsMediaChunk extends MediaChunk {
    public static final String PRIV_TIMESTAMP_FRAME_OWNER = "com.apple.streaming.transportStreamTimestamp";
    private static final AtomicInteger uidSource = new AtomicInteger();
    public final int discontinuitySequenceNumber;
    private final DrmInitData drmInitData;
    private Extractor extractor;
    private final HlsExtractorFactory extractorFactory;
    private final boolean hasGapTag;
    public final HlsMasterPlaylist.HlsUrl hlsUrl;
    private final ParsableByteArray id3Data;
    private final Id3Decoder id3Decoder;
    private final DataSource initDataSource;
    private final DataSpec initDataSpec;
    private boolean initLoadCompleted;
    private int initSegmentBytesLoaded;
    private final boolean isEncrypted;
    private final boolean isMasterTimestampSource;
    private volatile boolean loadCanceled;
    private boolean loadCompleted;
    private final List<Format> muxedCaptionFormats;
    private int nextLoadPosition;
    private HlsSampleStreamWrapper output;
    private final Extractor previousExtractor;
    private final boolean shouldSpliceIn;
    private final TimestampAdjuster timestampAdjuster;
    public final int uid;

    public HlsMediaChunk(HlsExtractorFactory hlsExtractorFactory, DataSource dataSource, DataSpec dataSpec, DataSpec dataSpec2, HlsMasterPlaylist.HlsUrl hlsUrl, List<Format> list, int i2, Object obj, long j2, long j3, long j4, int i3, boolean z, boolean z2, TimestampAdjuster timestampAdjuster, HlsMediaChunk hlsMediaChunk, DrmInitData drmInitData, byte[] bArr, byte[] bArr2) {
        super(buildDataSource(dataSource, bArr, bArr2), dataSpec, hlsUrl.format, i2, obj, j2, j3, j4);
        this.discontinuitySequenceNumber = i3;
        this.initDataSpec = dataSpec2;
        this.hlsUrl = hlsUrl;
        this.isMasterTimestampSource = z2;
        this.timestampAdjuster = timestampAdjuster;
        boolean z3 = true;
        this.isEncrypted = bArr != null;
        this.hasGapTag = z;
        this.extractorFactory = hlsExtractorFactory;
        this.muxedCaptionFormats = list;
        this.drmInitData = drmInitData;
        Extractor extractor = null;
        if (hlsMediaChunk != null) {
            this.id3Decoder = hlsMediaChunk.id3Decoder;
            this.id3Data = hlsMediaChunk.id3Data;
            if (hlsMediaChunk.hlsUrl == hlsUrl && hlsMediaChunk.loadCompleted) {
                z3 = false;
            }
            this.shouldSpliceIn = z3;
            if (hlsMediaChunk.discontinuitySequenceNumber == i3 && !this.shouldSpliceIn) {
                extractor = hlsMediaChunk.extractor;
            }
        } else {
            this.id3Decoder = new Id3Decoder();
            this.id3Data = new ParsableByteArray(10);
            this.shouldSpliceIn = false;
        }
        this.previousExtractor = extractor;
        this.initDataSource = dataSource;
        this.uid = uidSource.getAndIncrement();
    }

    private static DataSource buildDataSource(DataSource dataSource, byte[] bArr, byte[] bArr2) {
        return bArr != null ? new Aes128DataSource(dataSource, bArr, bArr2) : dataSource;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001b  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x003f A[Catch: all -> 0x0072, TRY_LEAVE, TryCatch #1 {all -> 0x0072, blocks: (B:15:0x0037, B:17:0x003f, B:26:0x0060, B:24:0x0053, B:25:0x005f, B:19:0x0046, B:21:0x004a), top: B:35:0x0037, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0046 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void loadMedia() {
        /*
            r8 = this;
            boolean r0 = r8.isEncrypted
            r1 = 0
            if (r0 == 0) goto Ld
            com.google.android.exoplayer2.upstream.DataSpec r0 = r8.dataSpec
            int r2 = r8.nextLoadPosition
            if (r2 == 0) goto L16
            r2 = 1
            goto L17
        Ld:
            com.google.android.exoplayer2.upstream.DataSpec r0 = r8.dataSpec
            int r2 = r8.nextLoadPosition
            long r2 = (long) r2
            com.google.android.exoplayer2.upstream.DataSpec r0 = r0.subrange(r2)
        L16:
            r2 = 0
        L17:
            boolean r3 = r8.isMasterTimestampSource
            if (r3 != 0) goto L21
            com.google.android.exoplayer2.util.TimestampAdjuster r3 = r8.timestampAdjuster
            r3.waitUntilInitialized()
            goto L37
        L21:
            com.google.android.exoplayer2.util.TimestampAdjuster r3 = r8.timestampAdjuster
            long r3 = r3.getFirstSampleTimestampUs()
            r5 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 != 0) goto L37
            com.google.android.exoplayer2.util.TimestampAdjuster r3 = r8.timestampAdjuster
            long r4 = r8.startTimeUs
            r3.setFirstSampleTimestampUs(r4)
        L37:
            com.google.android.exoplayer2.upstream.StatsDataSource r3 = r8.dataSource     // Catch: java.lang.Throwable -> L72
            com.google.android.exoplayer2.extractor.DefaultExtractorInput r0 = r8.prepareExtraction(r3, r0)     // Catch: java.lang.Throwable -> L72
            if (r2 == 0) goto L44
            int r2 = r8.nextLoadPosition     // Catch: java.lang.Throwable -> L72
            r0.skipFully(r2)     // Catch: java.lang.Throwable -> L72
        L44:
            if (r1 != 0) goto L60
            boolean r1 = r8.loadCanceled     // Catch: java.lang.Throwable -> L52
            if (r1 != 0) goto L60
            com.google.android.exoplayer2.extractor.Extractor r1 = r8.extractor     // Catch: java.lang.Throwable -> L52
            r2 = 0
            int r1 = r1.read(r0, r2)     // Catch: java.lang.Throwable -> L52
            goto L44
        L52:
            r1 = move-exception
            long r2 = r0.getPosition()     // Catch: java.lang.Throwable -> L72
            com.google.android.exoplayer2.upstream.DataSpec r0 = r8.dataSpec     // Catch: java.lang.Throwable -> L72
            long r4 = r0.absoluteStreamPosition     // Catch: java.lang.Throwable -> L72
            long r2 = r2 - r4
            int r0 = (int) r2     // Catch: java.lang.Throwable -> L72
            r8.nextLoadPosition = r0     // Catch: java.lang.Throwable -> L72
            throw r1     // Catch: java.lang.Throwable -> L72
        L60:
            long r0 = r0.getPosition()     // Catch: java.lang.Throwable -> L72
            com.google.android.exoplayer2.upstream.DataSpec r2 = r8.dataSpec     // Catch: java.lang.Throwable -> L72
            long r2 = r2.absoluteStreamPosition     // Catch: java.lang.Throwable -> L72
            long r0 = r0 - r2
            int r1 = (int) r0     // Catch: java.lang.Throwable -> L72
            r8.nextLoadPosition = r1     // Catch: java.lang.Throwable -> L72
            com.google.android.exoplayer2.upstream.StatsDataSource r0 = r8.dataSource
            com.google.android.exoplayer2.util.Util.closeQuietly(r0)
            return
        L72:
            r0 = move-exception
            com.google.android.exoplayer2.upstream.StatsDataSource r1 = r8.dataSource
            com.google.android.exoplayer2.util.Util.closeQuietly(r1)
            goto L7a
        L79:
            throw r0
        L7a:
            goto L79
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.hls.HlsMediaChunk.loadMedia():void");
    }

    private void maybeLoadInitData() {
        DataSpec dataSpec;
        if (this.initLoadCompleted || (dataSpec = this.initDataSpec) == null) {
            return;
        }
        try {
            DefaultExtractorInput defaultExtractorInputPrepareExtraction = prepareExtraction(this.initDataSource, dataSpec.subrange(this.initSegmentBytesLoaded));
            int i2 = 0;
            while (i2 == 0) {
                try {
                    if (this.loadCanceled) {
                        break;
                    } else {
                        i2 = this.extractor.read(defaultExtractorInputPrepareExtraction, null);
                    }
                } finally {
                    this.initSegmentBytesLoaded = (int) (defaultExtractorInputPrepareExtraction.getPosition() - this.initDataSpec.absoluteStreamPosition);
                }
            }
            Util.closeQuietly(this.initDataSource);
            this.initLoadCompleted = true;
        } catch (Throwable th) {
            Util.closeQuietly(this.initDataSource);
            throw th;
        }
    }

    private long peekId3PrivTimestamp(ExtractorInput extractorInput) {
        extractorInput.resetPeekPosition();
        try {
            extractorInput.peekFully(this.id3Data.data, 0, 10);
            this.id3Data.reset(10);
        } catch (EOFException unused) {
        }
        if (this.id3Data.readUnsignedInt24() != Id3Decoder.ID3_TAG) {
            return C.TIME_UNSET;
        }
        this.id3Data.skipBytes(3);
        int synchSafeInt = this.id3Data.readSynchSafeInt();
        int i2 = synchSafeInt + 10;
        if (i2 > this.id3Data.capacity()) {
            ParsableByteArray parsableByteArray = this.id3Data;
            byte[] bArr = parsableByteArray.data;
            parsableByteArray.reset(i2);
            System.arraycopy(bArr, 0, this.id3Data.data, 0, 10);
        }
        extractorInput.peekFully(this.id3Data.data, 10, synchSafeInt);
        Metadata metadataDecode = this.id3Decoder.decode(this.id3Data.data, synchSafeInt);
        if (metadataDecode == null) {
            return C.TIME_UNSET;
        }
        int length = metadataDecode.length();
        for (int i3 = 0; i3 < length; i3++) {
            Metadata.Entry entry = metadataDecode.get(i3);
            if (entry instanceof PrivFrame) {
                PrivFrame privFrame = (PrivFrame) entry;
                if (PRIV_TIMESTAMP_FRAME_OWNER.equals(privFrame.owner)) {
                    System.arraycopy(privFrame.privateData, 0, this.id3Data.data, 0, 8);
                    this.id3Data.reset(8);
                    return this.id3Data.readLong() & 8589934591L;
                }
            }
        }
        return C.TIME_UNSET;
    }

    private DefaultExtractorInput prepareExtraction(DataSource dataSource, DataSpec dataSpec) {
        DefaultExtractorInput defaultExtractorInput = new DefaultExtractorInput(dataSource, dataSpec.absoluteStreamPosition, dataSource.open(dataSpec));
        if (this.extractor != null) {
            return defaultExtractorInput;
        }
        long jPeekId3PrivTimestamp = peekId3PrivTimestamp(defaultExtractorInput);
        defaultExtractorInput.resetPeekPosition();
        Pair<Extractor, Boolean> pairCreateExtractor = this.extractorFactory.createExtractor(this.previousExtractor, dataSpec.uri, this.trackFormat, this.muxedCaptionFormats, this.drmInitData, this.timestampAdjuster, dataSource.getResponseHeaders(), defaultExtractorInput);
        this.extractor = (Extractor) pairCreateExtractor.first;
        boolean z = this.extractor == this.previousExtractor;
        if (((Boolean) pairCreateExtractor.second).booleanValue()) {
            this.output.setSampleOffsetUs(jPeekId3PrivTimestamp != C.TIME_UNSET ? this.timestampAdjuster.adjustTsTimestamp(jPeekId3PrivTimestamp) : this.startTimeUs);
        }
        this.initLoadCompleted = z && this.initDataSpec != null;
        this.output.init(this.uid, this.shouldSpliceIn, z);
        if (z) {
            return defaultExtractorInput;
        }
        this.extractor.init(this.output);
        return defaultExtractorInput;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public void cancelLoad() {
        this.loadCanceled = true;
    }

    public void init(HlsSampleStreamWrapper hlsSampleStreamWrapper) {
        this.output = hlsSampleStreamWrapper;
    }

    @Override // com.google.android.exoplayer2.source.chunk.MediaChunk
    public boolean isLoadCompleted() {
        return this.loadCompleted;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public void load() {
        maybeLoadInitData();
        if (this.loadCanceled) {
            return;
        }
        if (!this.hasGapTag) {
            loadMedia();
        }
        this.loadCompleted = true;
    }
}
