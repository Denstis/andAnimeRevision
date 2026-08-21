###### Class com.google.android.exoplayer2.source.BaseMediaSource (com.google.android.exoplayer2.source.BaseMediaSource)
.class public abstract Lcom/google/android/exoplayer2/source/BaseMediaSource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource;


# instance fields
.field private final eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private manifest:Ljava/lang/Object;

.field private player:Lcom/google/android/exoplayer2/ExoPlayer;

.field private final sourceInfoListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/MediaSource$SourceInfoRefreshListener;",
            ">;"
        }
    .end annotation
.end field

.field private timeline:Lcom/google/android/exoplayer2/Timeline;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->sourceInfoListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    return-void
.end method


# virtual methods
.method public final addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    return-void
.end method

.method protected final createEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .registers 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->withParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p1

    return-object p1
.end method

.method protected final createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .registers 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->withParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p1

    return-object p1
.end method

.method protected final createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->withParameters(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getTag()Ljava/lang/Object;
    .registers 2

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/n;->$default$getTag(Lcom/google/android/exoplayer2/source/MediaSource;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$SourceInfoRefreshListener;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$SourceInfoRefreshListener;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    return-void
.end method

.method public final prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$SourceInfoRefreshListener;Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_9

    if-ne v0, p1, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->sourceInfoListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_1c

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-virtual {p0, p1, p2, p4}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->prepareSourceInternal(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/upstream/TransferListener;)V

    goto :goto_25

    :cond_1c
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->timeline:Lcom/google/android/exoplayer2/Timeline;

    if-eqz p1, :cond_25

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->manifest:Ljava/lang/Object;

    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaSource$SourceInfoRefreshListener;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    :cond_25
    :goto_25
    return-void
.end method

.method protected abstract prepareSourceInternal(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/upstream/TransferListener;)V
.end method

.method protected final refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->manifest:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->sourceInfoListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSource$SourceInfoRefreshListener;

    invoke-interface {v1, p0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaSource$SourceInfoRefreshListener;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public final releaseSource(Lcom/google/android/exoplayer2/source/MediaSource$SourceInfoRefreshListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->sourceInfoListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->sourceInfoListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_17

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->manifest:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->releaseSourceInternal()V

    :cond_17
    return-void
.end method

.method protected abstract releaseSourceInternal()V
.end method

.method public final removeEventListener(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/BaseMediaSource;->eventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->removeEventListener(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    return-void
.end method
