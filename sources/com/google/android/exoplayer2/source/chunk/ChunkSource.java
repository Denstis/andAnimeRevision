package com.google.android.exoplayer2.source.chunk;

import com.google.android.exoplayer2.SeekParameters;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface ChunkSource {
    long getAdjustedSeekPositionUs(long j2, SeekParameters seekParameters);

    void getNextChunk(long j2, long j3, List<? extends MediaChunk> list, ChunkHolder chunkHolder);

    int getPreferredQueueSize(long j2, List<? extends MediaChunk> list);

    void maybeThrowError();

    void onChunkLoadCompleted(Chunk chunk);

    boolean onChunkLoadError(Chunk chunk, boolean z, Exception exc, long j2);
}
