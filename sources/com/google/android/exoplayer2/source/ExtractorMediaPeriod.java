package com.google.android.exoplayer2.source;

import android.net.Uri;
import android.os.Handler;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.SeekParameters;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.extractor.DefaultExtractorInput;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.MediaSourceEventListener;
import com.google.android.exoplayer2.source.SampleQueue;
import com.google.android.exoplayer2.trackselection.TrackSelection;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.StatsDataSource;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ConditionVariable;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class ExtractorMediaPeriod implements MediaPeriod, ExtractorOutput, Loader.Callback<ExtractingLoadable>, Loader.ReleaseCallback, SampleQueue.UpstreamFormatChangedListener {
    private static final long DEFAULT_LAST_SAMPLE_DURATION_US = 10000;
    private final Allocator allocator;
    private MediaPeriod.Callback callback;
    private final long continueLoadingCheckIntervalBytes;
    private final String customCacheKey;
    private final DataSource dataSource;
    private int enabledTrackCount;
    private final MediaSourceEventListener.EventDispatcher eventDispatcher;
    private int extractedSamplesCountAtStartOfLoad;
    private final ExtractorHolder extractorHolder;
    private boolean haveAudioVideoTracks;
    private long lastSeekPositionUs;
    private final Listener listener;
    private final LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    private boolean loadingFinished;
    private boolean notifiedReadingStarted;
    private boolean notifyDiscontinuity;
    private boolean pendingDeferredRetry;
    private boolean prepared;
    private PreparedState preparedState;
    private boolean released;
    private boolean sampleQueuesBuilt;
    private SeekMap seekMap;
    private boolean seenFirstTrackSelection;
    private final Uri uri;
    private final Loader loader = new Loader("Loader:ExtractorMediaPeriod");
    private final ConditionVariable loadCondition = new ConditionVariable();
    private final Runnable maybeFinishPrepareRunnable = new Runnable() { // from class: com.google.android.exoplayer2.source.d
        @Override // java.lang.Runnable
        public final void run() {
            this.f4000b.maybeFinishPrepare();
        }
    };
    private final Runnable onContinueLoadingRequestedRunnable = new Runnable() { // from class: com.google.android.exoplayer2.source.c
        @Override // java.lang.Runnable
        public final void run() {
            this.f3999b.a();
        }
    };
    private final Handler handler = new Handler();
    private int[] sampleQueueTrackIds = new int[0];
    private SampleQueue[] sampleQueues = new SampleQueue[0];
    private long pendingResetPositionUs = C.TIME_UNSET;
    private long length = -1;
    private long durationUs = C.TIME_UNSET;
    private int dataType = 1;

    final class ExtractingLoadable implements Loader.Loadable {
        private final StatsDataSource dataSource;
        private DataSpec dataSpec;
        private final ExtractorHolder extractorHolder;
        private final ExtractorOutput extractorOutput;
        private volatile boolean loadCanceled;
        private final ConditionVariable loadCondition;
        private long seekTimeUs;
        private final Uri uri;
        private final PositionHolder positionHolder = new PositionHolder();
        private boolean pendingExtractorSeek = true;
        private long length = -1;

        public ExtractingLoadable(Uri uri, DataSource dataSource, ExtractorHolder extractorHolder, ExtractorOutput extractorOutput, ConditionVariable conditionVariable) {
            this.uri = uri;
            this.dataSource = new StatsDataSource(dataSource);
            this.extractorHolder = extractorHolder;
            this.extractorOutput = extractorOutput;
            this.loadCondition = conditionVariable;
            this.dataSpec = new DataSpec(uri, this.positionHolder.position, -1L, ExtractorMediaPeriod.this.customCacheKey);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLoadPosition(long j2, long j3) {
            this.positionHolder.position = j2;
            this.seekTimeUs = j3;
            this.pendingExtractorSeek = true;
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
        public void cancelLoad() {
            this.loadCanceled = true;
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
        public void load() throws Throwable {
            long position;
            Uri uri;
            DefaultExtractorInput defaultExtractorInput;
            int i2 = 0;
            while (i2 == 0 && !this.loadCanceled) {
                DefaultExtractorInput defaultExtractorInput2 = null;
                try {
                    position = this.positionHolder.position;
                    this.dataSpec = new DataSpec(this.uri, position, -1L, ExtractorMediaPeriod.this.customCacheKey);
                    this.length = this.dataSource.open(this.dataSpec);
                    if (this.length != -1) {
                        this.length += position;
                    }
                    uri = (Uri) Assertions.checkNotNull(this.dataSource.getUri());
                    defaultExtractorInput = new DefaultExtractorInput(this.dataSource, position, this.length);
                } catch (Throwable th) {
                    th = th;
                }
                try {
                    Extractor extractorSelectExtractor = this.extractorHolder.selectExtractor(defaultExtractorInput, this.extractorOutput, uri);
                    if (this.pendingExtractorSeek) {
                        extractorSelectExtractor.seek(position, this.seekTimeUs);
                        this.pendingExtractorSeek = false;
                    }
                    while (i2 == 0 && !this.loadCanceled) {
                        this.loadCondition.block();
                        i2 = extractorSelectExtractor.read(defaultExtractorInput, this.positionHolder);
                        if (defaultExtractorInput.getPosition() > ExtractorMediaPeriod.this.continueLoadingCheckIntervalBytes + position) {
                            position = defaultExtractorInput.getPosition();
                            this.loadCondition.close();
                            ExtractorMediaPeriod.this.handler.post(ExtractorMediaPeriod.this.onContinueLoadingRequestedRunnable);
                        }
                    }
                    if (i2 == 1) {
                        i2 = 0;
                    } else {
                        this.positionHolder.position = defaultExtractorInput.getPosition();
                    }
                    Util.closeQuietly(this.dataSource);
                } catch (Throwable th2) {
                    th = th2;
                    defaultExtractorInput2 = defaultExtractorInput;
                    if (i2 != 1 && defaultExtractorInput2 != null) {
                        this.positionHolder.position = defaultExtractorInput2.getPosition();
                    }
                    Util.closeQuietly(this.dataSource);
                    throw th;
                }
            }
        }
    }

    private static final class ExtractorHolder {
        private Extractor extractor;
        private final Extractor[] extractors;

        public ExtractorHolder(Extractor[] extractorArr) {
            this.extractors = extractorArr;
        }

        public void release() {
            Extractor extractor = this.extractor;
            if (extractor != null) {
                extractor.release();
                this.extractor = null;
            }
        }

        public Extractor selectExtractor(ExtractorInput extractorInput, ExtractorOutput extractorOutput, Uri uri) throws UnrecognizedInputFormatException {
            Extractor extractor = this.extractor;
            if (extractor != null) {
                return extractor;
            }
            Extractor[] extractorArr = this.extractors;
            int length = extractorArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                Extractor extractor2 = extractorArr[i2];
                try {
                    if (extractor2.sniff(extractorInput)) {
                        this.extractor = extractor2;
                        extractorInput.resetPeekPosition();
                        break;
                    }
                    continue;
                } catch (EOFException unused) {
                } catch (Throwable th) {
                    extractorInput.resetPeekPosition();
                    throw th;
                }
                extractorInput.resetPeekPosition();
                i2++;
            }
            Extractor extractor3 = this.extractor;
            if (extractor3 != null) {
                extractor3.init(extractorOutput);
                return this.extractor;
            }
            throw new UnrecognizedInputFormatException("None of the available extractors (" + Util.getCommaDelimitedSimpleClassNames(this.extractors) + ") could read the stream.", uri);
        }
    }

    interface Listener {
        void onSourceInfoRefreshed(long j2, boolean z);
    }

    private static final class PreparedState {
        public final SeekMap seekMap;
        public final boolean[] trackEnabledStates;
        public final boolean[] trackIsAudioVideoFlags;
        public final boolean[] trackNotifiedDownstreamFormats;
        public final TrackGroupArray tracks;

        public PreparedState(SeekMap seekMap, TrackGroupArray trackGroupArray, boolean[] zArr) {
            this.seekMap = seekMap;
            this.tracks = trackGroupArray;
            this.trackIsAudioVideoFlags = zArr;
            int i2 = trackGroupArray.length;
            this.trackEnabledStates = new boolean[i2];
            this.trackNotifiedDownstreamFormats = new boolean[i2];
        }
    }

    private final class SampleStreamImpl implements SampleStream {
        private final int track;

        public SampleStreamImpl(int i2) {
            this.track = i2;
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public boolean isReady() {
            return ExtractorMediaPeriod.this.isReady(this.track);
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public void maybeThrowError() throws IOException {
            ExtractorMediaPeriod.this.maybeThrowError();
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, boolean z) {
            return ExtractorMediaPeriod.this.readData(this.track, formatHolder, decoderInputBuffer, z);
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public int skipData(long j2) {
            return ExtractorMediaPeriod.this.skipData(this.track, j2);
        }
    }

    public ExtractorMediaPeriod(Uri uri, DataSource dataSource, Extractor[] extractorArr, LoadErrorHandlingPolicy loadErrorHandlingPolicy, MediaSourceEventListener.EventDispatcher eventDispatcher, Listener listener, Allocator allocator, String str, int i2) {
        this.uri = uri;
        this.dataSource = dataSource;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.eventDispatcher = eventDispatcher;
        this.listener = listener;
        this.allocator = allocator;
        this.customCacheKey = str;
        this.continueLoadingCheckIntervalBytes = i2;
        this.extractorHolder = new ExtractorHolder(extractorArr);
        eventDispatcher.mediaPeriodCreated();
    }

    private boolean configureRetry(ExtractingLoadable extractingLoadable, int i2) {
        SeekMap seekMap;
        if (this.length != -1 || ((seekMap = this.seekMap) != null && seekMap.getDurationUs() != C.TIME_UNSET)) {
            this.extractedSamplesCountAtStartOfLoad = i2;
            return true;
        }
        if (this.prepared && !suppressRead()) {
            this.pendingDeferredRetry = true;
            return false;
        }
        this.notifyDiscontinuity = this.prepared;
        this.lastSeekPositionUs = 0L;
        this.extractedSamplesCountAtStartOfLoad = 0;
        for (SampleQueue sampleQueue : this.sampleQueues) {
            sampleQueue.reset();
        }
        extractingLoadable.setLoadPosition(0L, 0L);
        return true;
    }

    private void copyLengthFromLoader(ExtractingLoadable extractingLoadable) {
        if (this.length == -1) {
            this.length = extractingLoadable.length;
        }
    }

    private int getExtractedSamplesCount() {
        int writeIndex = 0;
        for (SampleQueue sampleQueue : this.sampleQueues) {
            writeIndex += sampleQueue.getWriteIndex();
        }
        return writeIndex;
    }

    private long getLargestQueuedTimestampUs() {
        long jMax = Long.MIN_VALUE;
        for (SampleQueue sampleQueue : this.sampleQueues) {
            jMax = Math.max(jMax, sampleQueue.getLargestQueuedTimestampUs());
        }
        return jMax;
    }

    private PreparedState getPreparedState() {
        return (PreparedState) Assertions.checkNotNull(this.preparedState);
    }

    private boolean isPendingReset() {
        return this.pendingResetPositionUs != C.TIME_UNSET;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeFinishPrepare() {
        SeekMap seekMap = this.seekMap;
        if (this.released || this.prepared || !this.sampleQueuesBuilt || seekMap == null) {
            return;
        }
        for (SampleQueue sampleQueue : this.sampleQueues) {
            if (sampleQueue.getUpstreamFormat() == null) {
                return;
            }
        }
        this.loadCondition.close();
        int length = this.sampleQueues.length;
        TrackGroup[] trackGroupArr = new TrackGroup[length];
        boolean[] zArr = new boolean[length];
        this.durationUs = seekMap.getDurationUs();
        int i2 = 0;
        while (true) {
            boolean z = true;
            if (i2 >= length) {
                break;
            }
            Format upstreamFormat = this.sampleQueues[i2].getUpstreamFormat();
            trackGroupArr[i2] = new TrackGroup(upstreamFormat);
            String str = upstreamFormat.sampleMimeType;
            if (!MimeTypes.isVideo(str) && !MimeTypes.isAudio(str)) {
                z = false;
            }
            zArr[i2] = z;
            this.haveAudioVideoTracks = z | this.haveAudioVideoTracks;
            i2++;
        }
        this.dataType = (this.length == -1 && seekMap.getDurationUs() == C.TIME_UNSET) ? 7 : 1;
        this.preparedState = new PreparedState(seekMap, new TrackGroupArray(trackGroupArr), zArr);
        this.prepared = true;
        this.listener.onSourceInfoRefreshed(this.durationUs, seekMap.isSeekable());
        ((MediaPeriod.Callback) Assertions.checkNotNull(this.callback)).onPrepared(this);
    }

    private void maybeNotifyDownstreamFormat(int i2) {
        PreparedState preparedState = getPreparedState();
        boolean[] zArr = preparedState.trackNotifiedDownstreamFormats;
        if (zArr[i2]) {
            return;
        }
        Format format = preparedState.tracks.get(i2).getFormat(0);
        this.eventDispatcher.downstreamFormatChanged(MimeTypes.getTrackType(format.sampleMimeType), format, 0, null, this.lastSeekPositionUs);
        zArr[i2] = true;
    }

    private void maybeStartDeferredRetry(int i2) {
        boolean[] zArr = getPreparedState().trackIsAudioVideoFlags;
        if (this.pendingDeferredRetry && zArr[i2] && !this.sampleQueues[i2].hasNextSample()) {
            this.pendingResetPositionUs = 0L;
            this.pendingDeferredRetry = false;
            this.notifyDiscontinuity = true;
            this.lastSeekPositionUs = 0L;
            this.extractedSamplesCountAtStartOfLoad = 0;
            for (SampleQueue sampleQueue : this.sampleQueues) {
                sampleQueue.reset();
            }
            ((MediaPeriod.Callback) Assertions.checkNotNull(this.callback)).onContinueLoadingRequested(this);
        }
    }

    private boolean seekInsideBufferUs(boolean[] zArr, long j2) {
        int length = this.sampleQueues.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                return true;
            }
            SampleQueue sampleQueue = this.sampleQueues[i2];
            sampleQueue.rewind();
            if (!(sampleQueue.advanceTo(j2, true, false) != -1) && (zArr[i2] || !this.haveAudioVideoTracks)) {
                break;
            }
            i2++;
        }
        return false;
    }

    private void startLoading() {
        ExtractingLoadable extractingLoadable = new ExtractingLoadable(this.uri, this.dataSource, this.extractorHolder, this, this.loadCondition);
        if (this.prepared) {
            SeekMap seekMap = getPreparedState().seekMap;
            Assertions.checkState(isPendingReset());
            long j2 = this.durationUs;
            if (j2 != C.TIME_UNSET && this.pendingResetPositionUs >= j2) {
                this.loadingFinished = true;
                this.pendingResetPositionUs = C.TIME_UNSET;
                return;
            } else {
                extractingLoadable.setLoadPosition(seekMap.getSeekPoints(this.pendingResetPositionUs).first.position, this.pendingResetPositionUs);
                this.pendingResetPositionUs = C.TIME_UNSET;
            }
        }
        this.extractedSamplesCountAtStartOfLoad = getExtractedSamplesCount();
        this.eventDispatcher.loadStarted(extractingLoadable.dataSpec, 1, -1, null, 0, null, extractingLoadable.seekTimeUs, this.durationUs, this.loader.startLoading(extractingLoadable, this, this.loadErrorHandlingPolicy.getMinimumLoadableRetryCount(this.dataType)));
    }

    private boolean suppressRead() {
        return this.notifyDiscontinuity || isPendingReset();
    }

    public /* synthetic */ void a() {
        if (this.released) {
            return;
        }
        ((MediaPeriod.Callback) Assertions.checkNotNull(this.callback)).onContinueLoadingRequested(this);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean continueLoading(long j2) {
        if (this.loadingFinished || this.pendingDeferredRetry) {
            return false;
        }
        if (this.prepared && this.enabledTrackCount == 0) {
            return false;
        }
        boolean zOpen = this.loadCondition.open();
        if (this.loader.isLoading()) {
            return zOpen;
        }
        startLoading();
        return true;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void discardBuffer(long j2, boolean z) {
        if (isPendingReset()) {
            return;
        }
        boolean[] zArr = getPreparedState().trackEnabledStates;
        int length = this.sampleQueues.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.sampleQueues[i2].discardTo(j2, z, zArr[i2]);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public void endTracks() {
        this.sampleQueuesBuilt = true;
        this.handler.post(this.maybeFinishPrepareRunnable);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long getAdjustedSeekPositionUs(long j2, SeekParameters seekParameters) {
        SeekMap seekMap = getPreparedState().seekMap;
        if (!seekMap.isSeekable()) {
            return 0L;
        }
        SeekMap.SeekPoints seekPoints = seekMap.getSeekPoints(j2);
        return Util.resolveSeekPositionUs(j2, seekParameters, seekPoints.first.timeUs, seekPoints.second.timeUs);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getBufferedPositionUs() {
        long largestQueuedTimestampUs;
        boolean[] zArr = getPreparedState().trackIsAudioVideoFlags;
        if (this.loadingFinished) {
            return Long.MIN_VALUE;
        }
        if (isPendingReset()) {
            return this.pendingResetPositionUs;
        }
        if (this.haveAudioVideoTracks) {
            int length = this.sampleQueues.length;
            largestQueuedTimestampUs = Long.MAX_VALUE;
            for (int i2 = 0; i2 < length; i2++) {
                if (zArr[i2] && !this.sampleQueues[i2].isLastSampleQueued()) {
                    largestQueuedTimestampUs = Math.min(largestQueuedTimestampUs, this.sampleQueues[i2].getLargestQueuedTimestampUs());
                }
            }
        } else {
            largestQueuedTimestampUs = Long.MAX_VALUE;
        }
        if (largestQueuedTimestampUs == Long.MAX_VALUE) {
            largestQueuedTimestampUs = getLargestQueuedTimestampUs();
        }
        return largestQueuedTimestampUs == Long.MIN_VALUE ? this.lastSeekPositionUs : largestQueuedTimestampUs;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        if (this.enabledTrackCount == 0) {
            return Long.MIN_VALUE;
        }
        return getBufferedPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        return getPreparedState().tracks;
    }

    boolean isReady(int i2) {
        return !suppressRead() && (this.loadingFinished || this.sampleQueues[i2].hasNextSample());
    }

    void maybeThrowError() throws IOException {
        this.loader.maybeThrowError(this.loadErrorHandlingPolicy.getMinimumLoadableRetryCount(this.dataType));
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void maybeThrowPrepareError() throws IOException {
        maybeThrowError();
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    public void onLoadCanceled(ExtractingLoadable extractingLoadable, long j2, long j3, boolean z) {
        this.eventDispatcher.loadCanceled(extractingLoadable.dataSpec, extractingLoadable.dataSource.getLastOpenedUri(), extractingLoadable.dataSource.getLastResponseHeaders(), 1, -1, null, 0, null, extractingLoadable.seekTimeUs, this.durationUs, j2, j3, extractingLoadable.dataSource.getBytesRead());
        if (z) {
            return;
        }
        copyLengthFromLoader(extractingLoadable);
        for (SampleQueue sampleQueue : this.sampleQueues) {
            sampleQueue.reset();
        }
        if (this.enabledTrackCount > 0) {
            ((MediaPeriod.Callback) Assertions.checkNotNull(this.callback)).onContinueLoadingRequested(this);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    public void onLoadCompleted(ExtractingLoadable extractingLoadable, long j2, long j3) {
        if (this.durationUs == C.TIME_UNSET) {
            SeekMap seekMap = (SeekMap) Assertions.checkNotNull(this.seekMap);
            long largestQueuedTimestampUs = getLargestQueuedTimestampUs();
            this.durationUs = largestQueuedTimestampUs == Long.MIN_VALUE ? 0L : largestQueuedTimestampUs + DEFAULT_LAST_SAMPLE_DURATION_US;
            this.listener.onSourceInfoRefreshed(this.durationUs, seekMap.isSeekable());
        }
        this.eventDispatcher.loadCompleted(extractingLoadable.dataSpec, extractingLoadable.dataSource.getLastOpenedUri(), extractingLoadable.dataSource.getLastResponseHeaders(), 1, -1, null, 0, null, extractingLoadable.seekTimeUs, this.durationUs, j2, j3, extractingLoadable.dataSource.getBytesRead());
        copyLengthFromLoader(extractingLoadable);
        this.loadingFinished = true;
        ((MediaPeriod.Callback) Assertions.checkNotNull(this.callback)).onContinueLoadingRequested(this);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    public Loader.LoadErrorAction onLoadError(ExtractingLoadable extractingLoadable, long j2, long j3, IOException iOException, int i2) {
        ExtractingLoadable extractingLoadable2;
        boolean z;
        Loader.LoadErrorAction loadErrorActionCreateRetryAction;
        copyLengthFromLoader(extractingLoadable);
        long retryDelayMsFor = this.loadErrorHandlingPolicy.getRetryDelayMsFor(this.dataType, this.durationUs, iOException, i2);
        if (retryDelayMsFor == C.TIME_UNSET) {
            loadErrorActionCreateRetryAction = Loader.DONT_RETRY_FATAL;
        } else {
            int extractedSamplesCount = getExtractedSamplesCount();
            if (extractedSamplesCount > this.extractedSamplesCountAtStartOfLoad) {
                extractingLoadable2 = extractingLoadable;
                z = true;
            } else {
                extractingLoadable2 = extractingLoadable;
                z = false;
            }
            loadErrorActionCreateRetryAction = configureRetry(extractingLoadable2, extractedSamplesCount) ? Loader.createRetryAction(z, retryDelayMsFor) : Loader.DONT_RETRY;
        }
        this.eventDispatcher.loadError(extractingLoadable.dataSpec, extractingLoadable.dataSource.getLastOpenedUri(), extractingLoadable.dataSource.getLastResponseHeaders(), 1, -1, null, 0, null, extractingLoadable.seekTimeUs, this.durationUs, j2, j3, extractingLoadable.dataSource.getBytesRead(), iOException, !loadErrorActionCreateRetryAction.isRetry());
        return loadErrorActionCreateRetryAction;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.ReleaseCallback
    public void onLoaderReleased() {
        for (SampleQueue sampleQueue : this.sampleQueues) {
            sampleQueue.reset();
        }
        this.extractorHolder.release();
    }

    @Override // com.google.android.exoplayer2.source.SampleQueue.UpstreamFormatChangedListener
    public void onUpstreamFormatChanged(Format format) {
        this.handler.post(this.maybeFinishPrepareRunnable);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void prepare(MediaPeriod.Callback callback, long j2) {
        this.callback = callback;
        this.loadCondition.open();
        startLoading();
    }

    int readData(int i2, FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, boolean z) {
        if (suppressRead()) {
            return -3;
        }
        maybeNotifyDownstreamFormat(i2);
        int i3 = this.sampleQueues[i2].read(formatHolder, decoderInputBuffer, z, this.loadingFinished, this.lastSeekPositionUs);
        if (i3 == -3) {
            maybeStartDeferredRetry(i2);
        }
        return i3;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long readDiscontinuity() {
        if (!this.notifiedReadingStarted) {
            this.eventDispatcher.readingStarted();
            this.notifiedReadingStarted = true;
        }
        if (!this.notifyDiscontinuity) {
            return C.TIME_UNSET;
        }
        if (!this.loadingFinished && getExtractedSamplesCount() <= this.extractedSamplesCountAtStartOfLoad) {
            return C.TIME_UNSET;
        }
        this.notifyDiscontinuity = false;
        return this.lastSeekPositionUs;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public void reevaluateBuffer(long j2) {
    }

    public void release() {
        if (this.prepared) {
            for (SampleQueue sampleQueue : this.sampleQueues) {
                sampleQueue.discardToEnd();
            }
        }
        this.loader.release(this);
        this.handler.removeCallbacksAndMessages(null);
        this.callback = null;
        this.released = true;
        this.eventDispatcher.mediaPeriodReleased();
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public void seekMap(SeekMap seekMap) {
        this.seekMap = seekMap;
        this.handler.post(this.maybeFinishPrepareRunnable);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long seekToUs(long j2) {
        PreparedState preparedState = getPreparedState();
        SeekMap seekMap = preparedState.seekMap;
        boolean[] zArr = preparedState.trackIsAudioVideoFlags;
        if (!seekMap.isSeekable()) {
            j2 = 0;
        }
        this.notifyDiscontinuity = false;
        this.lastSeekPositionUs = j2;
        if (isPendingReset()) {
            this.pendingResetPositionUs = j2;
            return j2;
        }
        if (this.dataType != 7 && seekInsideBufferUs(zArr, j2)) {
            return j2;
        }
        this.pendingDeferredRetry = false;
        this.pendingResetPositionUs = j2;
        this.loadingFinished = false;
        if (this.loader.isLoading()) {
            this.loader.cancelLoading();
        } else {
            for (SampleQueue sampleQueue : this.sampleQueues) {
                sampleQueue.reset();
            }
        }
        return j2;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long selectTracks(TrackSelection[] trackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j2) {
        PreparedState preparedState = getPreparedState();
        TrackGroupArray trackGroupArray = preparedState.tracks;
        boolean[] zArr3 = preparedState.trackEnabledStates;
        int i2 = this.enabledTrackCount;
        int i3 = 0;
        for (int i4 = 0; i4 < trackSelectionArr.length; i4++) {
            if (sampleStreamArr[i4] != null && (trackSelectionArr[i4] == null || !zArr[i4])) {
                int i5 = ((SampleStreamImpl) sampleStreamArr[i4]).track;
                Assertions.checkState(zArr3[i5]);
                this.enabledTrackCount--;
                zArr3[i5] = false;
                sampleStreamArr[i4] = null;
            }
        }
        boolean z = !this.seenFirstTrackSelection ? j2 == 0 : i2 != 0;
        for (int i6 = 0; i6 < trackSelectionArr.length; i6++) {
            if (sampleStreamArr[i6] == null && trackSelectionArr[i6] != null) {
                TrackSelection trackSelection = trackSelectionArr[i6];
                Assertions.checkState(trackSelection.length() == 1);
                Assertions.checkState(trackSelection.getIndexInTrackGroup(0) == 0);
                int iIndexOf = trackGroupArray.indexOf(trackSelection.getTrackGroup());
                Assertions.checkState(!zArr3[iIndexOf]);
                this.enabledTrackCount++;
                zArr3[iIndexOf] = true;
                sampleStreamArr[i6] = new SampleStreamImpl(iIndexOf);
                zArr2[i6] = true;
                if (!z) {
                    SampleQueue sampleQueue = this.sampleQueues[iIndexOf];
                    sampleQueue.rewind();
                    z = sampleQueue.advanceTo(j2, true, true) == -1 && sampleQueue.getReadIndex() != 0;
                }
            }
        }
        if (this.enabledTrackCount == 0) {
            this.pendingDeferredRetry = false;
            this.notifyDiscontinuity = false;
            if (this.loader.isLoading()) {
                SampleQueue[] sampleQueueArr = this.sampleQueues;
                int length = sampleQueueArr.length;
                while (i3 < length) {
                    sampleQueueArr[i3].discardToEnd();
                    i3++;
                }
                this.loader.cancelLoading();
            } else {
                SampleQueue[] sampleQueueArr2 = this.sampleQueues;
                int length2 = sampleQueueArr2.length;
                while (i3 < length2) {
                    sampleQueueArr2[i3].reset();
                    i3++;
                }
            }
        } else if (z) {
            j2 = seekToUs(j2);
            while (i3 < sampleStreamArr.length) {
                if (sampleStreamArr[i3] != null) {
                    zArr2[i3] = true;
                }
                i3++;
            }
        }
        this.seenFirstTrackSelection = true;
        return j2;
    }

    int skipData(int i2, long j2) {
        int iAdvanceToEnd = 0;
        if (suppressRead()) {
            return 0;
        }
        maybeNotifyDownstreamFormat(i2);
        SampleQueue sampleQueue = this.sampleQueues[i2];
        if (!this.loadingFinished || j2 <= sampleQueue.getLargestQueuedTimestampUs()) {
            int iAdvanceTo = sampleQueue.advanceTo(j2, true, true);
            if (iAdvanceTo != -1) {
                iAdvanceToEnd = iAdvanceTo;
            }
        } else {
            iAdvanceToEnd = sampleQueue.advanceToEnd();
        }
        if (iAdvanceToEnd == 0) {
            maybeStartDeferredRetry(i2);
        }
        return iAdvanceToEnd;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public TrackOutput track(int i2, int i3) {
        int length = this.sampleQueues.length;
        for (int i4 = 0; i4 < length; i4++) {
            if (this.sampleQueueTrackIds[i4] == i2) {
                return this.sampleQueues[i4];
            }
        }
        SampleQueue sampleQueue = new SampleQueue(this.allocator);
        sampleQueue.setUpstreamFormatChangeListener(this);
        int i5 = length + 1;
        this.sampleQueueTrackIds = Arrays.copyOf(this.sampleQueueTrackIds, i5);
        this.sampleQueueTrackIds[length] = i2;
        SampleQueue[] sampleQueueArr = (SampleQueue[]) Arrays.copyOf(this.sampleQueues, i5);
        sampleQueueArr[length] = sampleQueue;
        this.sampleQueues = (SampleQueue[]) Util.castNonNullTypeArray(sampleQueueArr);
        return sampleQueue;
    }
}
