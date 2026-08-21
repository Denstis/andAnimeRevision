package com.google.android.exoplayer2.source.chunk;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.SeekParameters;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.source.MediaSourceEventListener;
import com.google.android.exoplayer2.source.SampleQueue;
import com.google.android.exoplayer2.source.SampleStream;
import com.google.android.exoplayer2.source.SequenceableLoader;
import com.google.android.exoplayer2.source.chunk.ChunkSource;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ChunkSampleStream<T extends ChunkSource> implements SampleStream, SequenceableLoader, Loader.Callback<Chunk>, Loader.ReleaseCallback {
    private static final String TAG = "ChunkSampleStream";
    private final SequenceableLoader.Callback<ChunkSampleStream<T>> callback;
    private final T chunkSource;
    long decodeOnlyUntilPositionUs;
    private final SampleQueue[] embeddedSampleQueues;
    private final Format[] embeddedTrackFormats;
    private final int[] embeddedTrackTypes;
    private final boolean[] embeddedTracksSelected;
    private final MediaSourceEventListener.EventDispatcher eventDispatcher;
    private long lastSeekPositionUs;
    private final LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    private final Loader loader;
    boolean loadingFinished;
    private final BaseMediaChunkOutput mediaChunkOutput;
    private final ArrayList<BaseMediaChunk> mediaChunks;
    private final ChunkHolder nextChunkHolder;
    private int nextNotifyPrimaryFormatMediaChunkIndex;
    private long pendingResetPositionUs;
    private Format primaryDownstreamTrackFormat;
    private final SampleQueue primarySampleQueue;
    public final int primaryTrackType;
    private final List<BaseMediaChunk> readOnlyMediaChunks;
    private ReleaseCallback<T> releaseCallback;

    public final class EmbeddedSampleStream implements SampleStream {
        private final int index;
        private boolean notifiedDownstreamFormat;
        public final ChunkSampleStream<T> parent;
        private final SampleQueue sampleQueue;

        public EmbeddedSampleStream(ChunkSampleStream<T> chunkSampleStream, SampleQueue sampleQueue, int i2) {
            this.parent = chunkSampleStream;
            this.sampleQueue = sampleQueue;
            this.index = i2;
        }

        private void maybeNotifyDownstreamFormat() {
            if (this.notifiedDownstreamFormat) {
                return;
            }
            ChunkSampleStream.this.eventDispatcher.downstreamFormatChanged(ChunkSampleStream.this.embeddedTrackTypes[this.index], ChunkSampleStream.this.embeddedTrackFormats[this.index], 0, null, ChunkSampleStream.this.lastSeekPositionUs);
            this.notifiedDownstreamFormat = true;
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public boolean isReady() {
            ChunkSampleStream chunkSampleStream = ChunkSampleStream.this;
            return chunkSampleStream.loadingFinished || (!chunkSampleStream.isPendingReset() && this.sampleQueue.hasNextSample());
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public void maybeThrowError() {
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, boolean z) {
            if (ChunkSampleStream.this.isPendingReset()) {
                return -3;
            }
            maybeNotifyDownstreamFormat();
            SampleQueue sampleQueue = this.sampleQueue;
            ChunkSampleStream chunkSampleStream = ChunkSampleStream.this;
            return sampleQueue.read(formatHolder, decoderInputBuffer, z, chunkSampleStream.loadingFinished, chunkSampleStream.decodeOnlyUntilPositionUs);
        }

        public void release() {
            Assertions.checkState(ChunkSampleStream.this.embeddedTracksSelected[this.index]);
            ChunkSampleStream.this.embeddedTracksSelected[this.index] = false;
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public int skipData(long j2) {
            if (ChunkSampleStream.this.isPendingReset()) {
                return 0;
            }
            maybeNotifyDownstreamFormat();
            if (ChunkSampleStream.this.loadingFinished && j2 > this.sampleQueue.getLargestQueuedTimestampUs()) {
                return this.sampleQueue.advanceToEnd();
            }
            int iAdvanceTo = this.sampleQueue.advanceTo(j2, true, true);
            if (iAdvanceTo == -1) {
                return 0;
            }
            return iAdvanceTo;
        }
    }

    public interface ReleaseCallback<T extends ChunkSource> {
        void onSampleStreamReleased(ChunkSampleStream<T> chunkSampleStream);
    }

    @Deprecated
    public ChunkSampleStream(int i2, int[] iArr, Format[] formatArr, T t, SequenceableLoader.Callback<ChunkSampleStream<T>> callback, Allocator allocator, long j2, int i3, MediaSourceEventListener.EventDispatcher eventDispatcher) {
        this(i2, iArr, formatArr, t, callback, allocator, j2, new DefaultLoadErrorHandlingPolicy(i3), eventDispatcher);
    }

    public ChunkSampleStream(int i2, int[] iArr, Format[] formatArr, T t, SequenceableLoader.Callback<ChunkSampleStream<T>> callback, Allocator allocator, long j2, LoadErrorHandlingPolicy loadErrorHandlingPolicy, MediaSourceEventListener.EventDispatcher eventDispatcher) {
        this.primaryTrackType = i2;
        this.embeddedTrackTypes = iArr;
        this.embeddedTrackFormats = formatArr;
        this.chunkSource = t;
        this.callback = callback;
        this.eventDispatcher = eventDispatcher;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.loader = new Loader("Loader:ChunkSampleStream");
        this.nextChunkHolder = new ChunkHolder();
        this.mediaChunks = new ArrayList<>();
        this.readOnlyMediaChunks = Collections.unmodifiableList(this.mediaChunks);
        int i3 = 0;
        int length = iArr == null ? 0 : iArr.length;
        this.embeddedSampleQueues = new SampleQueue[length];
        this.embeddedTracksSelected = new boolean[length];
        int i4 = length + 1;
        int[] iArr2 = new int[i4];
        SampleQueue[] sampleQueueArr = new SampleQueue[i4];
        this.primarySampleQueue = new SampleQueue(allocator);
        iArr2[0] = i2;
        sampleQueueArr[0] = this.primarySampleQueue;
        while (i3 < length) {
            SampleQueue sampleQueue = new SampleQueue(allocator);
            this.embeddedSampleQueues[i3] = sampleQueue;
            int i5 = i3 + 1;
            sampleQueueArr[i5] = sampleQueue;
            iArr2[i5] = iArr[i3];
            i3 = i5;
        }
        this.mediaChunkOutput = new BaseMediaChunkOutput(iArr2, sampleQueueArr);
        this.pendingResetPositionUs = j2;
        this.lastSeekPositionUs = j2;
    }

    private void discardDownstreamMediaChunks(int i2) {
        int iMin = Math.min(primarySampleIndexToMediaChunkIndex(i2, 0), this.nextNotifyPrimaryFormatMediaChunkIndex);
        if (iMin > 0) {
            Util.removeRange(this.mediaChunks, 0, iMin);
            this.nextNotifyPrimaryFormatMediaChunkIndex -= iMin;
        }
    }

    private BaseMediaChunk discardUpstreamMediaChunksFromIndex(int i2) {
        BaseMediaChunk baseMediaChunk = this.mediaChunks.get(i2);
        ArrayList<BaseMediaChunk> arrayList = this.mediaChunks;
        Util.removeRange(arrayList, i2, arrayList.size());
        this.nextNotifyPrimaryFormatMediaChunkIndex = Math.max(this.nextNotifyPrimaryFormatMediaChunkIndex, this.mediaChunks.size());
        SampleQueue sampleQueue = this.primarySampleQueue;
        int i3 = 0;
        while (true) {
            sampleQueue.discardUpstreamSamples(baseMediaChunk.getFirstSampleIndex(i3));
            SampleQueue[] sampleQueueArr = this.embeddedSampleQueues;
            if (i3 >= sampleQueueArr.length) {
                return baseMediaChunk;
            }
            sampleQueue = sampleQueueArr[i3];
            i3++;
        }
    }

    private BaseMediaChunk getLastMediaChunk() {
        return this.mediaChunks.get(r0.size() - 1);
    }

    private boolean haveReadFromMediaChunk(int i2) {
        int readIndex;
        BaseMediaChunk baseMediaChunk = this.mediaChunks.get(i2);
        if (this.primarySampleQueue.getReadIndex() > baseMediaChunk.getFirstSampleIndex(0)) {
            return true;
        }
        int i3 = 0;
        do {
            SampleQueue[] sampleQueueArr = this.embeddedSampleQueues;
            if (i3 >= sampleQueueArr.length) {
                return false;
            }
            readIndex = sampleQueueArr[i3].getReadIndex();
            i3++;
        } while (readIndex <= baseMediaChunk.getFirstSampleIndex(i3));
        return true;
    }

    private boolean isMediaChunk(Chunk chunk) {
        return chunk instanceof BaseMediaChunk;
    }

    private void maybeNotifyPrimaryTrackFormatChanged() {
        int iPrimarySampleIndexToMediaChunkIndex = primarySampleIndexToMediaChunkIndex(this.primarySampleQueue.getReadIndex(), this.nextNotifyPrimaryFormatMediaChunkIndex - 1);
        while (true) {
            int i2 = this.nextNotifyPrimaryFormatMediaChunkIndex;
            if (i2 > iPrimarySampleIndexToMediaChunkIndex) {
                return;
            }
            this.nextNotifyPrimaryFormatMediaChunkIndex = i2 + 1;
            maybeNotifyPrimaryTrackFormatChanged(i2);
        }
    }

    private void maybeNotifyPrimaryTrackFormatChanged(int i2) {
        BaseMediaChunk baseMediaChunk = this.mediaChunks.get(i2);
        Format format = baseMediaChunk.trackFormat;
        if (!format.equals(this.primaryDownstreamTrackFormat)) {
            this.eventDispatcher.downstreamFormatChanged(this.primaryTrackType, format, baseMediaChunk.trackSelectionReason, baseMediaChunk.trackSelectionData, baseMediaChunk.startTimeUs);
        }
        this.primaryDownstreamTrackFormat = format;
    }

    private int primarySampleIndexToMediaChunkIndex(int i2, int i3) {
        do {
            i3++;
            if (i3 >= this.mediaChunks.size()) {
                return this.mediaChunks.size() - 1;
            }
        } while (this.mediaChunks.get(i3).getFirstSampleIndex(0) <= i2);
        return i3 - 1;
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader
    public boolean continueLoading(long j2) {
        List<BaseMediaChunk> listEmptyList;
        long j3;
        if (this.loadingFinished || this.loader.isLoading()) {
            return false;
        }
        boolean zIsPendingReset = isPendingReset();
        if (zIsPendingReset) {
            listEmptyList = Collections.emptyList();
            j3 = this.pendingResetPositionUs;
        } else {
            listEmptyList = this.readOnlyMediaChunks;
            j3 = getLastMediaChunk().endTimeUs;
        }
        this.chunkSource.getNextChunk(j2, j3, listEmptyList, this.nextChunkHolder);
        ChunkHolder chunkHolder = this.nextChunkHolder;
        boolean z = chunkHolder.endOfStream;
        Chunk chunk = chunkHolder.chunk;
        chunkHolder.clear();
        if (z) {
            this.pendingResetPositionUs = C.TIME_UNSET;
            this.loadingFinished = true;
            return true;
        }
        if (chunk == null) {
            return false;
        }
        if (isMediaChunk(chunk)) {
            BaseMediaChunk baseMediaChunk = (BaseMediaChunk) chunk;
            if (zIsPendingReset) {
                this.decodeOnlyUntilPositionUs = baseMediaChunk.startTimeUs == this.pendingResetPositionUs ? 0L : this.pendingResetPositionUs;
                this.pendingResetPositionUs = C.TIME_UNSET;
            }
            baseMediaChunk.init(this.mediaChunkOutput);
            this.mediaChunks.add(baseMediaChunk);
        }
        this.eventDispatcher.loadStarted(chunk.dataSpec, chunk.type, this.primaryTrackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs, this.loader.startLoading(chunk, this, this.loadErrorHandlingPolicy.getMinimumLoadableRetryCount(chunk.type)));
        return true;
    }

    public void discardBuffer(long j2, boolean z) {
        if (isPendingReset()) {
            return;
        }
        int firstIndex = this.primarySampleQueue.getFirstIndex();
        this.primarySampleQueue.discardTo(j2, z, true);
        int firstIndex2 = this.primarySampleQueue.getFirstIndex();
        if (firstIndex2 > firstIndex) {
            long firstTimestampUs = this.primarySampleQueue.getFirstTimestampUs();
            int i2 = 0;
            while (true) {
                SampleQueue[] sampleQueueArr = this.embeddedSampleQueues;
                if (i2 >= sampleQueueArr.length) {
                    break;
                }
                sampleQueueArr[i2].discardTo(firstTimestampUs, z, this.embeddedTracksSelected[i2]);
                i2++;
            }
        }
        discardDownstreamMediaChunks(firstIndex2);
    }

    public long getAdjustedSeekPositionUs(long j2, SeekParameters seekParameters) {
        return this.chunkSource.getAdjustedSeekPositionUs(j2, seekParameters);
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader
    public long getBufferedPositionUs() {
        if (this.loadingFinished) {
            return Long.MIN_VALUE;
        }
        if (isPendingReset()) {
            return this.pendingResetPositionUs;
        }
        long jMax = this.lastSeekPositionUs;
        BaseMediaChunk lastMediaChunk = getLastMediaChunk();
        if (!lastMediaChunk.isLoadCompleted()) {
            if (this.mediaChunks.size() > 1) {
                lastMediaChunk = this.mediaChunks.get(r2.size() - 2);
            } else {
                lastMediaChunk = null;
            }
        }
        if (lastMediaChunk != null) {
            jMax = Math.max(jMax, lastMediaChunk.endTimeUs);
        }
        return Math.max(jMax, this.primarySampleQueue.getLargestQueuedTimestampUs());
    }

    public T getChunkSource() {
        return this.chunkSource;
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        if (isPendingReset()) {
            return this.pendingResetPositionUs;
        }
        if (this.loadingFinished) {
            return Long.MIN_VALUE;
        }
        return getLastMediaChunk().endTimeUs;
    }

    boolean isPendingReset() {
        return this.pendingResetPositionUs != C.TIME_UNSET;
    }

    @Override // com.google.android.exoplayer2.source.SampleStream
    public boolean isReady() {
        return this.loadingFinished || (!isPendingReset() && this.primarySampleQueue.hasNextSample());
    }

    @Override // com.google.android.exoplayer2.source.SampleStream
    public void maybeThrowError() throws IOException {
        this.loader.maybeThrowError();
        if (this.loader.isLoading()) {
            return;
        }
        this.chunkSource.maybeThrowError();
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    public void onLoadCanceled(Chunk chunk, long j2, long j3, boolean z) {
        this.eventDispatcher.loadCanceled(chunk.dataSpec, chunk.getUri(), chunk.getResponseHeaders(), chunk.type, this.primaryTrackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs, j2, j3, chunk.bytesLoaded());
        if (z) {
            return;
        }
        this.primarySampleQueue.reset();
        for (SampleQueue sampleQueue : this.embeddedSampleQueues) {
            sampleQueue.reset();
        }
        this.callback.onContinueLoadingRequested(this);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    public void onLoadCompleted(Chunk chunk, long j2, long j3) {
        this.chunkSource.onChunkLoadCompleted(chunk);
        this.eventDispatcher.loadCompleted(chunk.dataSpec, chunk.getUri(), chunk.getResponseHeaders(), chunk.type, this.primaryTrackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs, j2, j3, chunk.bytesLoaded());
        this.callback.onContinueLoadingRequested(this);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    public Loader.LoadErrorAction onLoadError(Chunk chunk, long j2, long j3, IOException iOException, int i2) {
        long jBytesLoaded = chunk.bytesLoaded();
        boolean zIsMediaChunk = isMediaChunk(chunk);
        int size = this.mediaChunks.size() - 1;
        boolean z = (jBytesLoaded != 0 && zIsMediaChunk && haveReadFromMediaChunk(size)) ? false : true;
        Loader.LoadErrorAction loadErrorActionCreateRetryAction = null;
        if (this.chunkSource.onChunkLoadError(chunk, z, iOException, z ? this.loadErrorHandlingPolicy.getBlacklistDurationMsFor(chunk.type, j3, iOException, i2) : -9223372036854775807L)) {
            if (z) {
                loadErrorActionCreateRetryAction = Loader.DONT_RETRY;
                if (zIsMediaChunk) {
                    Assertions.checkState(discardUpstreamMediaChunksFromIndex(size) == chunk);
                    if (this.mediaChunks.isEmpty()) {
                        this.pendingResetPositionUs = this.lastSeekPositionUs;
                    }
                }
            } else {
                Log.w(TAG, "Ignoring attempt to cancel non-cancelable load.");
            }
        }
        if (loadErrorActionCreateRetryAction == null) {
            long retryDelayMsFor = this.loadErrorHandlingPolicy.getRetryDelayMsFor(chunk.type, j3, iOException, i2);
            loadErrorActionCreateRetryAction = retryDelayMsFor != C.TIME_UNSET ? Loader.createRetryAction(false, retryDelayMsFor) : Loader.DONT_RETRY_FATAL;
        }
        Loader.LoadErrorAction loadErrorAction = loadErrorActionCreateRetryAction;
        boolean z2 = !loadErrorAction.isRetry();
        this.eventDispatcher.loadError(chunk.dataSpec, chunk.getUri(), chunk.getResponseHeaders(), chunk.type, this.primaryTrackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs, j2, j3, jBytesLoaded, iOException, z2);
        if (z2) {
            this.callback.onContinueLoadingRequested(this);
        }
        return loadErrorAction;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.ReleaseCallback
    public void onLoaderReleased() {
        this.primarySampleQueue.reset();
        for (SampleQueue sampleQueue : this.embeddedSampleQueues) {
            sampleQueue.reset();
        }
        ReleaseCallback<T> releaseCallback = this.releaseCallback;
        if (releaseCallback != null) {
            releaseCallback.onSampleStreamReleased(this);
        }
    }

    @Override // com.google.android.exoplayer2.source.SampleStream
    public int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, boolean z) {
        if (isPendingReset()) {
            return -3;
        }
        maybeNotifyPrimaryTrackFormatChanged();
        return this.primarySampleQueue.read(formatHolder, decoderInputBuffer, z, this.loadingFinished, this.decodeOnlyUntilPositionUs);
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader
    public void reevaluateBuffer(long j2) {
        int size;
        int preferredQueueSize;
        if (this.loader.isLoading() || isPendingReset() || (size = this.mediaChunks.size()) <= (preferredQueueSize = this.chunkSource.getPreferredQueueSize(j2, this.readOnlyMediaChunks))) {
            return;
        }
        while (true) {
            if (preferredQueueSize >= size) {
                preferredQueueSize = size;
                break;
            } else if (!haveReadFromMediaChunk(preferredQueueSize)) {
                break;
            } else {
                preferredQueueSize++;
            }
        }
        if (preferredQueueSize == size) {
            return;
        }
        long j3 = getLastMediaChunk().endTimeUs;
        BaseMediaChunk baseMediaChunkDiscardUpstreamMediaChunksFromIndex = discardUpstreamMediaChunksFromIndex(preferredQueueSize);
        if (this.mediaChunks.isEmpty()) {
            this.pendingResetPositionUs = this.lastSeekPositionUs;
        }
        this.loadingFinished = false;
        this.eventDispatcher.upstreamDiscarded(this.primaryTrackType, baseMediaChunkDiscardUpstreamMediaChunksFromIndex.startTimeUs, j3);
    }

    public void release() {
        release(null);
    }

    public void release(ReleaseCallback<T> releaseCallback) {
        this.releaseCallback = releaseCallback;
        this.primarySampleQueue.discardToEnd();
        for (SampleQueue sampleQueue : this.embeddedSampleQueues) {
            sampleQueue.discardToEnd();
        }
        this.loader.release(this);
    }

    public void seekToUs(long j2) {
        boolean readPosition;
        long j3;
        this.lastSeekPositionUs = j2;
        if (isPendingReset()) {
            this.pendingResetPositionUs = j2;
            return;
        }
        BaseMediaChunk baseMediaChunk = null;
        int i2 = 0;
        while (true) {
            if (i2 >= this.mediaChunks.size()) {
                break;
            }
            BaseMediaChunk baseMediaChunk2 = this.mediaChunks.get(i2);
            long j4 = baseMediaChunk2.startTimeUs;
            if (j4 == j2 && baseMediaChunk2.clippedStartTimeUs == C.TIME_UNSET) {
                baseMediaChunk = baseMediaChunk2;
                break;
            } else if (j4 > j2) {
                break;
            } else {
                i2++;
            }
        }
        this.primarySampleQueue.rewind();
        if (baseMediaChunk != null) {
            readPosition = this.primarySampleQueue.setReadPosition(baseMediaChunk.getFirstSampleIndex(0));
            j3 = 0;
        } else {
            readPosition = this.primarySampleQueue.advanceTo(j2, true, (j2 > getNextLoadPositionUs() ? 1 : (j2 == getNextLoadPositionUs() ? 0 : -1)) < 0) != -1;
            j3 = this.lastSeekPositionUs;
        }
        this.decodeOnlyUntilPositionUs = j3;
        if (readPosition) {
            this.nextNotifyPrimaryFormatMediaChunkIndex = primarySampleIndexToMediaChunkIndex(this.primarySampleQueue.getReadIndex(), 0);
            for (SampleQueue sampleQueue : this.embeddedSampleQueues) {
                sampleQueue.rewind();
                sampleQueue.advanceTo(j2, true, false);
            }
            return;
        }
        this.pendingResetPositionUs = j2;
        this.loadingFinished = false;
        this.mediaChunks.clear();
        this.nextNotifyPrimaryFormatMediaChunkIndex = 0;
        if (this.loader.isLoading()) {
            this.loader.cancelLoading();
            return;
        }
        this.primarySampleQueue.reset();
        for (SampleQueue sampleQueue2 : this.embeddedSampleQueues) {
            sampleQueue2.reset();
        }
    }

    public ChunkSampleStream<T>.EmbeddedSampleStream selectEmbeddedTrack(long j2, int i2) {
        for (int i3 = 0; i3 < this.embeddedSampleQueues.length; i3++) {
            if (this.embeddedTrackTypes[i3] == i2) {
                Assertions.checkState(!this.embeddedTracksSelected[i3]);
                this.embeddedTracksSelected[i3] = true;
                this.embeddedSampleQueues[i3].rewind();
                this.embeddedSampleQueues[i3].advanceTo(j2, true, true);
                return new EmbeddedSampleStream(this, this.embeddedSampleQueues[i3], i3);
            }
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.source.SampleStream
    public int skipData(long j2) {
        int iAdvanceToEnd = 0;
        if (isPendingReset()) {
            return 0;
        }
        if (!this.loadingFinished || j2 <= this.primarySampleQueue.getLargestQueuedTimestampUs()) {
            int iAdvanceTo = this.primarySampleQueue.advanceTo(j2, true, true);
            if (iAdvanceTo != -1) {
                iAdvanceToEnd = iAdvanceTo;
            }
        } else {
            iAdvanceToEnd = this.primarySampleQueue.advanceToEnd();
        }
        maybeNotifyPrimaryTrackFormatChanged();
        return iAdvanceToEnd;
    }
}
