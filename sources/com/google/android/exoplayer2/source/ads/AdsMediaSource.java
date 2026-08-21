package com.google.android.exoplayer2.source.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.view.ViewGroup;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.CompositeMediaSource;
import com.google.android.exoplayer2.source.DeferredMediaPeriod;
import com.google.android.exoplayer2.source.ExtractorMediaSource;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.ads.AdsLoader;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.Assertions;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class AdsMediaSource extends CompositeMediaSource<MediaSource.MediaPeriodId> {
    private static final MediaSource.MediaPeriodId DUMMY_CONTENT_MEDIA_PERIOD_ID = new MediaSource.MediaPeriodId(new Object());
    private MediaSource[][] adGroupMediaSources;
    private Timeline[][] adGroupTimelines;
    private final MediaSourceFactory adMediaSourceFactory;
    private AdPlaybackState adPlaybackState;
    private final ViewGroup adUiViewGroup;
    private final AdsLoader adsLoader;
    private ComponentListener componentListener;
    private Object contentManifest;
    private final MediaSource contentMediaSource;
    private Timeline contentTimeline;
    private final Map<MediaSource, List<DeferredMediaPeriod>> deferredMediaPeriodByAdMediaSource;
    private final Handler eventHandler;
    private final EventListener eventListener;
    private final Handler mainHandler;
    private final Timeline.Period period;

    public static final class AdLoadException extends IOException {
        public static final int TYPE_AD = 0;
        public static final int TYPE_AD_GROUP = 1;
        public static final int TYPE_ALL_ADS = 2;
        public static final int TYPE_UNEXPECTED = 3;
        public final int type;

        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface Type {
        }

        private AdLoadException(int i2, Exception exc) {
            super(exc);
            this.type = i2;
        }

        public static AdLoadException createForAd(Exception exc) {
            return new AdLoadException(0, exc);
        }

        public static AdLoadException createForAdGroup(Exception exc, int i2) {
            return new AdLoadException(1, new IOException("Failed to load ad group " + i2, exc));
        }

        public static AdLoadException createForAllAds(Exception exc) {
            return new AdLoadException(2, exc);
        }

        public static AdLoadException createForUnexpected(RuntimeException runtimeException) {
            return new AdLoadException(3, runtimeException);
        }

        public RuntimeException getRuntimeExceptionForUnexpected() {
            Assertions.checkState(this.type == 3);
            return (RuntimeException) getCause();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class AdPrepareErrorListener implements DeferredMediaPeriod.PrepareErrorListener {
        private final int adGroupIndex;
        private final int adIndexInAdGroup;
        private final Uri adUri;

        public AdPrepareErrorListener(Uri uri, int i2, int i3) {
            this.adUri = uri;
            this.adGroupIndex = i2;
            this.adIndexInAdGroup = i3;
        }

        public /* synthetic */ void a(IOException iOException) {
            AdsMediaSource.this.adsLoader.handlePrepareError(this.adGroupIndex, this.adIndexInAdGroup, iOException);
        }

        @Override // com.google.android.exoplayer2.source.DeferredMediaPeriod.PrepareErrorListener
        public void onPrepareError(MediaSource.MediaPeriodId mediaPeriodId, final IOException iOException) {
            AdsMediaSource.this.createEventDispatcher(mediaPeriodId).loadError(new DataSpec(this.adUri), this.adUri, Collections.emptyMap(), 6, -1L, 0L, 0L, AdLoadException.createForAd(iOException), true);
            AdsMediaSource.this.mainHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.source.ads.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.f3987b.a(iOException);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class ComponentListener implements AdsLoader.EventListener {
        private final Handler playerHandler = new Handler();
        private volatile boolean released;

        public ComponentListener() {
        }

        public /* synthetic */ void a() {
            if (this.released) {
                return;
            }
            AdsMediaSource.this.eventListener.onAdClicked();
        }

        public /* synthetic */ void a(AdPlaybackState adPlaybackState) {
            if (this.released) {
                return;
            }
            AdsMediaSource.this.onAdPlaybackState(adPlaybackState);
        }

        public /* synthetic */ void a(AdLoadException adLoadException) {
            if (this.released) {
                return;
            }
            if (adLoadException.type == 3) {
                AdsMediaSource.this.eventListener.onInternalAdLoadError(adLoadException.getRuntimeExceptionForUnexpected());
            } else {
                AdsMediaSource.this.eventListener.onAdLoadError(adLoadException);
            }
        }

        public /* synthetic */ void b() {
            if (this.released) {
                return;
            }
            AdsMediaSource.this.eventListener.onAdTapped();
        }

        @Override // com.google.android.exoplayer2.source.ads.AdsLoader.EventListener
        public void onAdClicked() {
            if (this.released || AdsMediaSource.this.eventHandler == null || AdsMediaSource.this.eventListener == null) {
                return;
            }
            AdsMediaSource.this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.source.ads.f
                @Override // java.lang.Runnable
                public final void run() {
                    this.f3994b.a();
                }
            });
        }

        @Override // com.google.android.exoplayer2.source.ads.AdsLoader.EventListener
        public void onAdLoadError(final AdLoadException adLoadException, DataSpec dataSpec) {
            if (this.released) {
                return;
            }
            AdsMediaSource.this.createEventDispatcher(null).loadError(dataSpec, dataSpec.uri, Collections.emptyMap(), 6, -1L, 0L, 0L, adLoadException, true);
            if (AdsMediaSource.this.eventHandler == null || AdsMediaSource.this.eventListener == null) {
                return;
            }
            AdsMediaSource.this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.source.ads.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.f3991b.a(adLoadException);
                }
            });
        }

        @Override // com.google.android.exoplayer2.source.ads.AdsLoader.EventListener
        public void onAdPlaybackState(final AdPlaybackState adPlaybackState) {
            if (this.released) {
                return;
            }
            this.playerHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.source.ads.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f3989b.a(adPlaybackState);
                }
            });
        }

        @Override // com.google.android.exoplayer2.source.ads.AdsLoader.EventListener
        public void onAdTapped() {
            if (this.released || AdsMediaSource.this.eventHandler == null || AdsMediaSource.this.eventListener == null) {
                return;
            }
            AdsMediaSource.this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.source.ads.e
                @Override // java.lang.Runnable
                public final void run() {
                    this.f3993b.b();
                }
            });
        }

        public void release() {
            this.released = true;
            this.playerHandler.removeCallbacksAndMessages(null);
        }
    }

    @Deprecated
    public interface EventListener {
        void onAdClicked();

        void onAdLoadError(IOException iOException);

        void onAdTapped();

        void onInternalAdLoadError(RuntimeException runtimeException);
    }

    public interface MediaSourceFactory {
        MediaSource createMediaSource(Uri uri);

        int[] getSupportedTypes();
    }

    public AdsMediaSource(MediaSource mediaSource, MediaSourceFactory mediaSourceFactory, AdsLoader adsLoader, ViewGroup viewGroup) {
        this(mediaSource, mediaSourceFactory, adsLoader, viewGroup, (Handler) null, (EventListener) null);
    }

    @Deprecated
    public AdsMediaSource(MediaSource mediaSource, MediaSourceFactory mediaSourceFactory, AdsLoader adsLoader, ViewGroup viewGroup, Handler handler, EventListener eventListener) {
        this.contentMediaSource = mediaSource;
        this.adMediaSourceFactory = mediaSourceFactory;
        this.adsLoader = adsLoader;
        this.adUiViewGroup = viewGroup;
        this.eventHandler = handler;
        this.eventListener = eventListener;
        this.mainHandler = new Handler(Looper.getMainLooper());
        this.deferredMediaPeriodByAdMediaSource = new HashMap();
        this.period = new Timeline.Period();
        this.adGroupMediaSources = new MediaSource[0][];
        this.adGroupTimelines = new Timeline[0][];
        adsLoader.setSupportedContentTypes(mediaSourceFactory.getSupportedTypes());
    }

    public AdsMediaSource(MediaSource mediaSource, DataSource.Factory factory, AdsLoader adsLoader, ViewGroup viewGroup) {
        this(mediaSource, new ExtractorMediaSource.Factory(factory), adsLoader, viewGroup, (Handler) null, (EventListener) null);
    }

    @Deprecated
    public AdsMediaSource(MediaSource mediaSource, DataSource.Factory factory, AdsLoader adsLoader, ViewGroup viewGroup, Handler handler, EventListener eventListener) {
        this(mediaSource, new ExtractorMediaSource.Factory(factory), adsLoader, viewGroup, handler, eventListener);
    }

    private static long[][] getAdDurations(Timeline[][] timelineArr, Timeline.Period period) {
        long[][] jArr = new long[timelineArr.length][];
        for (int i2 = 0; i2 < timelineArr.length; i2++) {
            jArr[i2] = new long[timelineArr[i2].length];
            for (int i3 = 0; i3 < timelineArr[i2].length; i3++) {
                jArr[i2][i3] = timelineArr[i2][i3] == null ? C.TIME_UNSET : timelineArr[i2][i3].getPeriod(0, period).getDurationUs();
            }
        }
        return jArr;
    }

    private void maybeUpdateSourceInfo() {
        AdPlaybackState adPlaybackState = this.adPlaybackState;
        if (adPlaybackState == null || this.contentTimeline == null) {
            return;
        }
        this.adPlaybackState = adPlaybackState.withAdDurationsUs(getAdDurations(this.adGroupTimelines, this.period));
        AdPlaybackState adPlaybackState2 = this.adPlaybackState;
        refreshSourceInfo(adPlaybackState2.adGroupCount == 0 ? this.contentTimeline : new SinglePeriodAdTimeline(this.contentTimeline, adPlaybackState2), this.contentManifest);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAdPlaybackState(AdPlaybackState adPlaybackState) {
        if (this.adPlaybackState == null) {
            this.adGroupMediaSources = new MediaSource[adPlaybackState.adGroupCount][];
            Arrays.fill(this.adGroupMediaSources, new MediaSource[0]);
            this.adGroupTimelines = new Timeline[adPlaybackState.adGroupCount][];
            Arrays.fill(this.adGroupTimelines, new Timeline[0]);
        }
        this.adPlaybackState = adPlaybackState;
        maybeUpdateSourceInfo();
    }

    private void onAdSourceInfoRefreshed(MediaSource mediaSource, int i2, int i3, Timeline timeline) {
        Assertions.checkArgument(timeline.getPeriodCount() == 1);
        this.adGroupTimelines[i2][i3] = timeline;
        List<DeferredMediaPeriod> listRemove = this.deferredMediaPeriodByAdMediaSource.remove(mediaSource);
        if (listRemove != null) {
            Object uidOfPeriod = timeline.getUidOfPeriod(0);
            for (int i4 = 0; i4 < listRemove.size(); i4++) {
                DeferredMediaPeriod deferredMediaPeriod = listRemove.get(i4);
                deferredMediaPeriod.createPeriod(new MediaSource.MediaPeriodId(uidOfPeriod, deferredMediaPeriod.id.windowSequenceNumber));
            }
        }
        maybeUpdateSourceInfo();
    }

    private void onContentSourceInfoRefreshed(Timeline timeline, Object obj) {
        this.contentTimeline = timeline;
        this.contentManifest = obj;
        maybeUpdateSourceInfo();
    }

    public /* synthetic */ void a(ExoPlayer exoPlayer, ComponentListener componentListener) {
        this.adsLoader.attachPlayer(exoPlayer, componentListener, this.adUiViewGroup);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j2) {
        if (this.adPlaybackState.adGroupCount <= 0 || !mediaPeriodId.isAd()) {
            DeferredMediaPeriod deferredMediaPeriod = new DeferredMediaPeriod(this.contentMediaSource, mediaPeriodId, allocator, j2);
            deferredMediaPeriod.createPeriod(mediaPeriodId);
            return deferredMediaPeriod;
        }
        int i2 = mediaPeriodId.adGroupIndex;
        int i3 = mediaPeriodId.adIndexInAdGroup;
        Uri uri = this.adPlaybackState.adGroups[i2].uris[i3];
        if (this.adGroupMediaSources[i2].length <= i3) {
            MediaSource mediaSourceCreateMediaSource = this.adMediaSourceFactory.createMediaSource(uri);
            MediaSource[][] mediaSourceArr = this.adGroupMediaSources;
            if (i3 >= mediaSourceArr[i2].length) {
                int i4 = i3 + 1;
                mediaSourceArr[i2] = (MediaSource[]) Arrays.copyOf(mediaSourceArr[i2], i4);
                Timeline[][] timelineArr = this.adGroupTimelines;
                timelineArr[i2] = (Timeline[]) Arrays.copyOf(timelineArr[i2], i4);
            }
            this.adGroupMediaSources[i2][i3] = mediaSourceCreateMediaSource;
            this.deferredMediaPeriodByAdMediaSource.put(mediaSourceCreateMediaSource, new ArrayList());
            prepareChildSource(mediaPeriodId, mediaSourceCreateMediaSource);
        }
        MediaSource mediaSource = this.adGroupMediaSources[i2][i3];
        DeferredMediaPeriod deferredMediaPeriod2 = new DeferredMediaPeriod(mediaSource, mediaPeriodId, allocator, j2);
        deferredMediaPeriod2.setPrepareErrorListener(new AdPrepareErrorListener(uri, i2, i3));
        List<DeferredMediaPeriod> list = this.deferredMediaPeriodByAdMediaSource.get(mediaSource);
        if (list == null) {
            deferredMediaPeriod2.createPeriod(new MediaSource.MediaPeriodId(this.adGroupTimelines[i2][i3].getUidOfPeriod(0), mediaPeriodId.windowSequenceNumber));
        } else {
            list.add(deferredMediaPeriod2);
        }
        return deferredMediaPeriod2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    public MediaSource.MediaPeriodId getMediaPeriodIdForChildMediaPeriodId(MediaSource.MediaPeriodId mediaPeriodId, MediaSource.MediaPeriodId mediaPeriodId2) {
        return mediaPeriodId.isAd() ? mediaPeriodId : mediaPeriodId2;
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource, com.google.android.exoplayer2.source.MediaSource
    public Object getTag() {
        return this.contentMediaSource.getTag();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    /* JADX INFO: renamed from: onChildSourceInfoRefreshed, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public void a(MediaSource.MediaPeriodId mediaPeriodId, MediaSource mediaSource, Timeline timeline, Object obj) {
        if (mediaPeriodId.isAd()) {
            onAdSourceInfoRefreshed(mediaSource, mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup, timeline);
        } else {
            onContentSourceInfoRefreshed(timeline, obj);
        }
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.BaseMediaSource
    public void prepareSourceInternal(final ExoPlayer exoPlayer, boolean z, TransferListener transferListener) {
        super.prepareSourceInternal(exoPlayer, z, transferListener);
        Assertions.checkArgument(z, "AdsMediaSource must be the top-level source used to prepare the player.");
        final ComponentListener componentListener = new ComponentListener();
        this.componentListener = componentListener;
        prepareChildSource(DUMMY_CONTENT_MEDIA_PERIOD_ID, this.contentMediaSource);
        this.mainHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.source.ads.g
            @Override // java.lang.Runnable
            public final void run() {
                this.f3995b.a(exoPlayer, componentListener);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        DeferredMediaPeriod deferredMediaPeriod = (DeferredMediaPeriod) mediaPeriod;
        List<DeferredMediaPeriod> list = this.deferredMediaPeriodByAdMediaSource.get(deferredMediaPeriod.mediaSource);
        if (list != null) {
            list.remove(deferredMediaPeriod);
        }
        deferredMediaPeriod.releasePeriod();
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.BaseMediaSource
    public void releaseSourceInternal() {
        super.releaseSourceInternal();
        this.componentListener.release();
        this.componentListener = null;
        this.deferredMediaPeriodByAdMediaSource.clear();
        this.contentTimeline = null;
        this.contentManifest = null;
        this.adPlaybackState = null;
        this.adGroupMediaSources = new MediaSource[0][];
        this.adGroupTimelines = new Timeline[0][];
        Handler handler = this.mainHandler;
        final AdsLoader adsLoader = this.adsLoader;
        adsLoader.getClass();
        handler.post(new Runnable() { // from class: com.google.android.exoplayer2.source.ads.a
            @Override // java.lang.Runnable
            public final void run() {
                adsLoader.detachPlayer();
            }
        });
    }
}
