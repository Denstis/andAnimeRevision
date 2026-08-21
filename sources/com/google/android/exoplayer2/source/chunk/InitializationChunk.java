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
public final class InitializationChunk extends Chunk {
    private static final PositionHolder DUMMY_POSITION_HOLDER = new PositionHolder();
    private final ChunkExtractorWrapper extractorWrapper;
    private volatile boolean loadCanceled;
    private long nextLoadPosition;

    public InitializationChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i2, Object obj, ChunkExtractorWrapper chunkExtractorWrapper) {
        super(dataSource, dataSpec, 2, format, i2, obj, C.TIME_UNSET, C.TIME_UNSET);
        this.extractorWrapper = chunkExtractorWrapper;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public void cancelLoad() {
        this.loadCanceled = true;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public void load() {
        DataSpec dataSpecSubrange = this.dataSpec.subrange(this.nextLoadPosition);
        try {
            DefaultExtractorInput defaultExtractorInput = new DefaultExtractorInput(this.dataSource, dataSpecSubrange.absoluteStreamPosition, this.dataSource.open(dataSpecSubrange));
            if (this.nextLoadPosition == 0) {
                this.extractorWrapper.init(null, C.TIME_UNSET, C.TIME_UNSET);
            }
            try {
                Extractor extractor = this.extractorWrapper.extractor;
                int i2 = 0;
                while (i2 == 0 && !this.loadCanceled) {
                    i2 = extractor.read(defaultExtractorInput, DUMMY_POSITION_HOLDER);
                }
                boolean z = true;
                if (i2 == 1) {
                    z = false;
                }
                Assertions.checkState(z);
            } finally {
                this.nextLoadPosition = defaultExtractorInput.getPosition() - this.dataSpec.absoluteStreamPosition;
            }
        } finally {
            Util.closeQuietly(this.dataSource);
        }
    }
}
