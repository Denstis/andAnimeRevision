package com.google.android.exoplayer2.source.chunk;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.DefaultExtractorInput;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;

/* JADX INFO: loaded from: classes.dex */
public class ContainerMediaChunk extends BaseMediaChunk {
    private static final PositionHolder DUMMY_POSITION_HOLDER = new PositionHolder();
    private final int chunkCount;
    private final ChunkExtractorWrapper extractorWrapper;
    private volatile boolean loadCanceled;
    private boolean loadCompleted;
    private long nextLoadPosition;
    private final long sampleOffsetUs;

    public ContainerMediaChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i2, Object obj, long j2, long j3, long j4, long j5, long j6, int i3, long j7, ChunkExtractorWrapper chunkExtractorWrapper) {
        super(dataSource, dataSpec, format, i2, obj, j2, j3, j4, j5, j6);
        this.chunkCount = i3;
        this.sampleOffsetUs = j7;
        this.extractorWrapper = chunkExtractorWrapper;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public final void cancelLoad() {
        this.loadCanceled = true;
    }

    @Override // com.google.android.exoplayer2.source.chunk.MediaChunk
    public long getNextChunkIndex() {
        return this.chunkIndex + ((long) this.chunkCount);
    }

    @Override // com.google.android.exoplayer2.source.chunk.MediaChunk
    public boolean isLoadCompleted() {
        return this.loadCompleted;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public final void load() {
        DataSpec dataSpecSubrange = this.dataSpec.subrange(this.nextLoadPosition);
        try {
            DefaultExtractorInput defaultExtractorInput = new DefaultExtractorInput(this.dataSource, dataSpecSubrange.absoluteStreamPosition, this.dataSource.open(dataSpecSubrange));
            if (this.nextLoadPosition == 0) {
                BaseMediaChunkOutput output = getOutput();
                output.setSampleOffsetUs(this.sampleOffsetUs);
                this.extractorWrapper.init(output, this.clippedStartTimeUs == C.TIME_UNSET ? -9223372036854775807L : this.clippedStartTimeUs - this.sampleOffsetUs, this.clippedEndTimeUs == C.TIME_UNSET ? -9223372036854775807L : this.clippedEndTimeUs - this.sampleOffsetUs);
            }
            try {
                Extractor extractor = this.extractorWrapper.extractor;
                int i2 = 0;
                while (i2 == 0 && !this.loadCanceled) {
                    i2 = extractor.read(defaultExtractorInput, DUMMY_POSITION_HOLDER);
                }
                Assertions.checkState(i2 != 1);
                Util.closeQuietly(this.dataSource);
                this.loadCompleted = true;
            } finally {
                this.nextLoadPosition = defaultExtractorInput.getPosition() - this.dataSpec.absoluteStreamPosition;
            }
        } catch (Throwable th) {
            Util.closeQuietly(this.dataSource);
            throw th;
        }
    }
}
