package com.google.android.exoplayer2.source;

import android.os.Handler;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.MediaSourceEventListener;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.Assertions;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseMediaSource implements MediaSource {
    private Object manifest;
    private ExoPlayer player;
    private Timeline timeline;
    private final ArrayList<MediaSource.SourceInfoRefreshListener> sourceInfoListeners = new ArrayList<>(1);
    private final MediaSourceEventListener.EventDispatcher eventDispatcher = new MediaSourceEventListener.EventDispatcher();

    @Override // com.google.android.exoplayer2.source.MediaSource
    public final void addEventListener(Handler handler, MediaSourceEventListener mediaSourceEventListener) {
        this.eventDispatcher.addEventListener(handler, mediaSourceEventListener);
    }

    protected final MediaSourceEventListener.EventDispatcher createEventDispatcher(int i2, MediaSource.MediaPeriodId mediaPeriodId, long j2) {
        return this.eventDispatcher.withParameters(i2, mediaPeriodId, j2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final MediaSourceEventListener.EventDispatcher createEventDispatcher(MediaSource.MediaPeriodId mediaPeriodId) {
        return this.eventDispatcher.withParameters(0, mediaPeriodId, 0L);
    }

    protected final MediaSourceEventListener.EventDispatcher createEventDispatcher(MediaSource.MediaPeriodId mediaPeriodId, long j2) {
        Assertions.checkArgument(mediaPeriodId != null);
        return this.eventDispatcher.withParameters(0, mediaPeriodId, j2);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public /* synthetic */ Object getTag() {
        return n.$default$getTag(this);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public final void prepareSource(ExoPlayer exoPlayer, boolean z, MediaSource.SourceInfoRefreshListener sourceInfoRefreshListener) {
        prepareSource(exoPlayer, z, sourceInfoRefreshListener, null);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public final void prepareSource(ExoPlayer exoPlayer, boolean z, MediaSource.SourceInfoRefreshListener sourceInfoRefreshListener, TransferListener transferListener) {
        ExoPlayer exoPlayer2 = this.player;
        Assertions.checkArgument(exoPlayer2 == null || exoPlayer2 == exoPlayer);
        this.sourceInfoListeners.add(sourceInfoRefreshListener);
        if (this.player == null) {
            this.player = exoPlayer;
            prepareSourceInternal(exoPlayer, z, transferListener);
        } else {
            Timeline timeline = this.timeline;
            if (timeline != null) {
                sourceInfoRefreshListener.onSourceInfoRefreshed(this, timeline, this.manifest);
            }
        }
    }

    protected abstract void prepareSourceInternal(ExoPlayer exoPlayer, boolean z, TransferListener transferListener);

    protected final void refreshSourceInfo(Timeline timeline, Object obj) {
        this.timeline = timeline;
        this.manifest = obj;
        Iterator<MediaSource.SourceInfoRefreshListener> it = this.sourceInfoListeners.iterator();
        while (it.hasNext()) {
            it.next().onSourceInfoRefreshed(this, timeline, obj);
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public final void releaseSource(MediaSource.SourceInfoRefreshListener sourceInfoRefreshListener) {
        this.sourceInfoListeners.remove(sourceInfoRefreshListener);
        if (this.sourceInfoListeners.isEmpty()) {
            this.player = null;
            this.timeline = null;
            this.manifest = null;
            releaseSourceInternal();
        }
    }

    protected abstract void releaseSourceInternal();

    @Override // com.google.android.exoplayer2.source.MediaSource
    public final void removeEventListener(MediaSourceEventListener mediaSourceEventListener) {
        this.eventDispatcher.removeEventListener(mediaSourceEventListener);
    }
}
