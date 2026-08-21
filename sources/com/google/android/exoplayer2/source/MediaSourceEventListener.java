package com.google.android.exoplayer2.source;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.util.Assertions;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public interface MediaSourceEventListener {

    public static final class EventDispatcher {
        private final CopyOnWriteArrayList<ListenerAndHandler> listenerAndHandlers;
        public final MediaSource.MediaPeriodId mediaPeriodId;
        private final long mediaTimeOffsetMs;
        public final int windowIndex;

        private static final class ListenerAndHandler {
            public final Handler handler;
            public final MediaSourceEventListener listener;

            public ListenerAndHandler(Handler handler, MediaSourceEventListener mediaSourceEventListener) {
                this.handler = handler;
                this.listener = mediaSourceEventListener;
            }
        }

        public EventDispatcher() {
            this(new CopyOnWriteArrayList(), 0, null, 0L);
        }

        private EventDispatcher(CopyOnWriteArrayList<ListenerAndHandler> copyOnWriteArrayList, int i2, MediaSource.MediaPeriodId mediaPeriodId, long j2) {
            this.listenerAndHandlers = copyOnWriteArrayList;
            this.windowIndex = i2;
            this.mediaPeriodId = mediaPeriodId;
            this.mediaTimeOffsetMs = j2;
        }

        private long adjustMediaTime(long j2) {
            long jUsToMs = C.usToMs(j2);
            return jUsToMs == C.TIME_UNSET ? C.TIME_UNSET : this.mediaTimeOffsetMs + jUsToMs;
        }

        private void postOrRun(Handler handler, Runnable runnable) {
            if (handler.getLooper() == Looper.myLooper()) {
                runnable.run();
            } else {
                handler.post(runnable);
            }
        }

        public /* synthetic */ void a(MediaSourceEventListener mediaSourceEventListener, MediaSource.MediaPeriodId mediaPeriodId) {
            mediaSourceEventListener.onMediaPeriodCreated(this.windowIndex, mediaPeriodId);
        }

        public /* synthetic */ void a(MediaSourceEventListener mediaSourceEventListener, MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData) {
            mediaSourceEventListener.onUpstreamDiscarded(this.windowIndex, mediaPeriodId, mediaLoadData);
        }

        public /* synthetic */ void a(MediaSourceEventListener mediaSourceEventListener, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            mediaSourceEventListener.onLoadCanceled(this.windowIndex, this.mediaPeriodId, loadEventInfo, mediaLoadData);
        }

        public /* synthetic */ void a(MediaSourceEventListener mediaSourceEventListener, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z) {
            mediaSourceEventListener.onLoadError(this.windowIndex, this.mediaPeriodId, loadEventInfo, mediaLoadData, iOException, z);
        }

        public /* synthetic */ void a(MediaSourceEventListener mediaSourceEventListener, MediaLoadData mediaLoadData) {
            mediaSourceEventListener.onDownstreamFormatChanged(this.windowIndex, this.mediaPeriodId, mediaLoadData);
        }

        public void addEventListener(Handler handler, MediaSourceEventListener mediaSourceEventListener) {
            Assertions.checkArgument((handler == null || mediaSourceEventListener == null) ? false : true);
            this.listenerAndHandlers.add(new ListenerAndHandler(handler, mediaSourceEventListener));
        }

        public /* synthetic */ void b(MediaSourceEventListener mediaSourceEventListener, MediaSource.MediaPeriodId mediaPeriodId) {
            mediaSourceEventListener.onMediaPeriodReleased(this.windowIndex, mediaPeriodId);
        }

        public /* synthetic */ void b(MediaSourceEventListener mediaSourceEventListener, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            mediaSourceEventListener.onLoadCompleted(this.windowIndex, this.mediaPeriodId, loadEventInfo, mediaLoadData);
        }

        public /* synthetic */ void c(MediaSourceEventListener mediaSourceEventListener, MediaSource.MediaPeriodId mediaPeriodId) {
            mediaSourceEventListener.onReadingStarted(this.windowIndex, mediaPeriodId);
        }

        public /* synthetic */ void c(MediaSourceEventListener mediaSourceEventListener, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            mediaSourceEventListener.onLoadStarted(this.windowIndex, this.mediaPeriodId, loadEventInfo, mediaLoadData);
        }

        public void downstreamFormatChanged(int i2, Format format, int i3, Object obj, long j2) {
            downstreamFormatChanged(new MediaLoadData(1, i2, format, i3, obj, adjustMediaTime(j2), C.TIME_UNSET));
        }

        public void downstreamFormatChanged(final MediaLoadData mediaLoadData) {
            for (ListenerAndHandler listenerAndHandler : this.listenerAndHandlers) {
                final MediaSourceEventListener mediaSourceEventListener = listenerAndHandler.listener;
                postOrRun(listenerAndHandler.handler, new Runnable() { // from class: com.google.android.exoplayer2.source.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f4015b.a(mediaSourceEventListener, mediaLoadData);
                    }
                });
            }
        }

        public void loadCanceled(final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData) {
            for (ListenerAndHandler listenerAndHandler : this.listenerAndHandlers) {
                final MediaSourceEventListener mediaSourceEventListener = listenerAndHandler.listener;
                postOrRun(listenerAndHandler.handler, new Runnable() { // from class: com.google.android.exoplayer2.source.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f4007b.a(mediaSourceEventListener, loadEventInfo, mediaLoadData);
                    }
                });
            }
        }

        public void loadCanceled(DataSpec dataSpec, Uri uri, Map<String, List<String>> map, int i2, int i3, Format format, int i4, Object obj, long j2, long j3, long j4, long j5, long j6) {
            loadCanceled(new LoadEventInfo(dataSpec, uri, map, j4, j5, j6), new MediaLoadData(i2, i3, format, i4, obj, adjustMediaTime(j2), adjustMediaTime(j3)));
        }

        public void loadCanceled(DataSpec dataSpec, Uri uri, Map<String, List<String>> map, int i2, long j2, long j3, long j4) {
            loadCanceled(dataSpec, uri, map, i2, -1, null, 0, null, C.TIME_UNSET, C.TIME_UNSET, j2, j3, j4);
        }

        public void loadCompleted(final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData) {
            for (ListenerAndHandler listenerAndHandler : this.listenerAndHandlers) {
                final MediaSourceEventListener mediaSourceEventListener = listenerAndHandler.listener;
                postOrRun(listenerAndHandler.handler, new Runnable() { // from class: com.google.android.exoplayer2.source.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f4021b.b(mediaSourceEventListener, loadEventInfo, mediaLoadData);
                    }
                });
            }
        }

        public void loadCompleted(DataSpec dataSpec, Uri uri, Map<String, List<String>> map, int i2, int i3, Format format, int i4, Object obj, long j2, long j3, long j4, long j5, long j6) {
            loadCompleted(new LoadEventInfo(dataSpec, uri, map, j4, j5, j6), new MediaLoadData(i2, i3, format, i4, obj, adjustMediaTime(j2), adjustMediaTime(j3)));
        }

        public void loadCompleted(DataSpec dataSpec, Uri uri, Map<String, List<String>> map, int i2, long j2, long j3, long j4) {
            loadCompleted(dataSpec, uri, map, i2, -1, null, 0, null, C.TIME_UNSET, C.TIME_UNSET, j2, j3, j4);
        }

        public void loadError(final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData, final IOException iOException, final boolean z) {
            for (ListenerAndHandler listenerAndHandler : this.listenerAndHandlers) {
                final MediaSourceEventListener mediaSourceEventListener = listenerAndHandler.listener;
                postOrRun(listenerAndHandler.handler, new Runnable() { // from class: com.google.android.exoplayer2.source.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f4001b.a(mediaSourceEventListener, loadEventInfo, mediaLoadData, iOException, z);
                    }
                });
            }
        }

        public void loadError(DataSpec dataSpec, Uri uri, Map<String, List<String>> map, int i2, int i3, Format format, int i4, Object obj, long j2, long j3, long j4, long j5, long j6, IOException iOException, boolean z) {
            loadError(new LoadEventInfo(dataSpec, uri, map, j4, j5, j6), new MediaLoadData(i2, i3, format, i4, obj, adjustMediaTime(j2), adjustMediaTime(j3)), iOException, z);
        }

        public void loadError(DataSpec dataSpec, Uri uri, Map<String, List<String>> map, int i2, long j2, long j3, long j4, IOException iOException, boolean z) {
            loadError(dataSpec, uri, map, i2, -1, null, 0, null, C.TIME_UNSET, C.TIME_UNSET, j2, j3, j4, iOException, z);
        }

        public void loadStarted(final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData) {
            for (ListenerAndHandler listenerAndHandler : this.listenerAndHandlers) {
                final MediaSourceEventListener mediaSourceEventListener = listenerAndHandler.listener;
                postOrRun(listenerAndHandler.handler, new Runnable() { // from class: com.google.android.exoplayer2.source.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f4031b.c(mediaSourceEventListener, loadEventInfo, mediaLoadData);
                    }
                });
            }
        }

        public void loadStarted(DataSpec dataSpec, int i2, int i3, Format format, int i4, Object obj, long j2, long j3, long j4) {
            loadStarted(new LoadEventInfo(dataSpec, dataSpec.uri, Collections.emptyMap(), j4, 0L, 0L), new MediaLoadData(i2, i3, format, i4, obj, adjustMediaTime(j2), adjustMediaTime(j3)));
        }

        public void loadStarted(DataSpec dataSpec, int i2, long j2) {
            loadStarted(dataSpec, i2, -1, null, 0, null, C.TIME_UNSET, C.TIME_UNSET, j2);
        }

        public void mediaPeriodCreated() {
            final MediaSource.MediaPeriodId mediaPeriodId = (MediaSource.MediaPeriodId) Assertions.checkNotNull(this.mediaPeriodId);
            for (ListenerAndHandler listenerAndHandler : this.listenerAndHandlers) {
                final MediaSourceEventListener mediaSourceEventListener = listenerAndHandler.listener;
                postOrRun(listenerAndHandler.handler, new Runnable() { // from class: com.google.android.exoplayer2.source.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f4025b.a(mediaSourceEventListener, mediaPeriodId);
                    }
                });
            }
        }

        public void mediaPeriodReleased() {
            final MediaSource.MediaPeriodId mediaPeriodId = (MediaSource.MediaPeriodId) Assertions.checkNotNull(this.mediaPeriodId);
            for (ListenerAndHandler listenerAndHandler : this.listenerAndHandlers) {
                final MediaSourceEventListener mediaSourceEventListener = listenerAndHandler.listener;
                postOrRun(listenerAndHandler.handler, new Runnable() { // from class: com.google.android.exoplayer2.source.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f4035b.b(mediaSourceEventListener, mediaPeriodId);
                    }
                });
            }
        }

        public void readingStarted() {
            final MediaSource.MediaPeriodId mediaPeriodId = (MediaSource.MediaPeriodId) Assertions.checkNotNull(this.mediaPeriodId);
            for (ListenerAndHandler listenerAndHandler : this.listenerAndHandlers) {
                final MediaSourceEventListener mediaSourceEventListener = listenerAndHandler.listener;
                postOrRun(listenerAndHandler.handler, new Runnable() { // from class: com.google.android.exoplayer2.source.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f4028b.c(mediaSourceEventListener, mediaPeriodId);
                    }
                });
            }
        }

        public void removeEventListener(MediaSourceEventListener mediaSourceEventListener) {
            for (ListenerAndHandler listenerAndHandler : this.listenerAndHandlers) {
                if (listenerAndHandler.listener == mediaSourceEventListener) {
                    this.listenerAndHandlers.remove(listenerAndHandler);
                }
            }
        }

        public void upstreamDiscarded(int i2, long j2, long j3) {
            upstreamDiscarded(new MediaLoadData(1, i2, null, 3, null, adjustMediaTime(j2), adjustMediaTime(j3)));
        }

        public void upstreamDiscarded(final MediaLoadData mediaLoadData) {
            final MediaSource.MediaPeriodId mediaPeriodId = (MediaSource.MediaPeriodId) Assertions.checkNotNull(this.mediaPeriodId);
            for (ListenerAndHandler listenerAndHandler : this.listenerAndHandlers) {
                final MediaSourceEventListener mediaSourceEventListener = listenerAndHandler.listener;
                postOrRun(listenerAndHandler.handler, new Runnable() { // from class: com.google.android.exoplayer2.source.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f4011b.a(mediaSourceEventListener, mediaPeriodId, mediaLoadData);
                    }
                });
            }
        }

        public EventDispatcher withParameters(int i2, MediaSource.MediaPeriodId mediaPeriodId, long j2) {
            return new EventDispatcher(this.listenerAndHandlers, i2, mediaPeriodId, j2);
        }
    }

    public static final class LoadEventInfo {
        public final long bytesLoaded;
        public final DataSpec dataSpec;
        public final long elapsedRealtimeMs;
        public final long loadDurationMs;
        public final Map<String, List<String>> responseHeaders;
        public final Uri uri;

        public LoadEventInfo(DataSpec dataSpec, Uri uri, Map<String, List<String>> map, long j2, long j3, long j4) {
            this.dataSpec = dataSpec;
            this.uri = uri;
            this.responseHeaders = map;
            this.elapsedRealtimeMs = j2;
            this.loadDurationMs = j3;
            this.bytesLoaded = j4;
        }
    }

    public static final class MediaLoadData {
        public final int dataType;
        public final long mediaEndTimeMs;
        public final long mediaStartTimeMs;
        public final Format trackFormat;
        public final Object trackSelectionData;
        public final int trackSelectionReason;
        public final int trackType;

        public MediaLoadData(int i2, int i3, Format format, int i4, Object obj, long j2, long j3) {
            this.dataType = i2;
            this.trackType = i3;
            this.trackFormat = format;
            this.trackSelectionReason = i4;
            this.trackSelectionData = obj;
            this.mediaStartTimeMs = j2;
            this.mediaEndTimeMs = j3;
        }
    }

    void onDownstreamFormatChanged(int i2, MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData);

    void onLoadCanceled(int i2, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData);

    void onLoadCompleted(int i2, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData);

    void onLoadError(int i2, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z);

    void onLoadStarted(int i2, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData);

    void onMediaPeriodCreated(int i2, MediaSource.MediaPeriodId mediaPeriodId);

    void onMediaPeriodReleased(int i2, MediaSource.MediaPeriodId mediaPeriodId);

    void onReadingStarted(int i2, MediaSource.MediaPeriodId mediaPeriodId);

    void onUpstreamDiscarded(int i2, MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData);
}
