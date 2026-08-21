###### Class com.google.android.exoplayer2.source.LoopingMediaSource (com.google.android.exoplayer2.source.LoopingMediaSource)
.class public final Lcom/google/android/exoplayer2/source/LoopingMediaSource;
.super Lcom/google/android/exoplayer2/source/CompositeMediaSource;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/LoopingMediaSource$InfinitelyLoopingTimeline;,
        Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/source/CompositeMediaSource<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final childMediaPeriodIdToMediaPeriodId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            ">;"
        }
    .end annotation
.end field

.field private final childSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private final loopCount:I

.field private final mediaPeriodToChildMediaPeriodId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/MediaPeriod;",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .registers 3

    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/LoopingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;I)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;-><init>()V

    if-lez p2, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iput p2, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->loopCount:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childMediaPeriodIdToMediaPeriodId:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->mediaPeriodToChildMediaPeriodId:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .registers 7

    iget v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->loopCount:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object p1

    return-object p1

    :cond_e
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getChildPeriodUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childMediaPeriodIdToMediaPeriodId:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {p1, v0, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->mediaPeriodToChildMediaPeriodId:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method protected bridge synthetic getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .registers 3

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method protected getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .registers 4

    iget p1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->loopCount:I

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_10

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childMediaPeriodIdToMediaPeriodId:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    :cond_10
    return-object p2
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->onChildSourceInfoRefreshed(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method protected onChildSourceInfoRefreshed(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .registers 5

    iget p1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->loopCount:I

    const p2, 0x7fffffff

    if-eq p1, p2, :cond_d

    new-instance p2, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;

    invoke-direct {p2, p3, p1}, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;I)V

    goto :goto_12

    :cond_d
    new-instance p2, Lcom/google/android/exoplayer2/source/LoopingMediaSource$InfinitelyLoopingTimeline;

    invoke-direct {p2, p3}, Lcom/google/android/exoplayer2/source/LoopingMediaSource$InfinitelyLoopingTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;)V

    :goto_12
    invoke-virtual {p0, p2, p4}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method public prepareSourceInternal(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/upstream/TransferListener;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->prepareSourceInternal(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/upstream/TransferListener;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childSource:Lcom/google/android/exoplayer2/source/MediaSource;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->prepareChildSource(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->mediaPeriodToChildMediaPeriodId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childMediaPeriodIdToMediaPeriodId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-void
.end method

###### Class com.google.android.exoplayer2.source.LoopingMediaSource.InfinitelyLoopingTimeline (com.google.android.exoplayer2.source.LoopingMediaSource$InfinitelyLoopingTimeline)
.class final Lcom/google/android/exoplayer2/source/LoopingMediaSource$InfinitelyLoopingTimeline;
.super Lcom/google/android/exoplayer2/source/ForwardingTimeline;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/LoopingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InfinitelyLoopingTimeline"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Timeline;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method


# virtual methods
.method public getNextWindowIndex(IIZ)I
    .registers 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getNextWindowIndex(IIZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_d

    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->getFirstWindowIndex(Z)I

    move-result p1

    :cond_d
    return p1
.end method

.method public getPreviousWindowIndex(IIZ)I
    .registers 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_d

    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->getLastWindowIndex(Z)I

    move-result p1

    :cond_d
    return p1
.end method

###### Class com.google.android.exoplayer2.source.LoopingMediaSource.LoopingTimeline (com.google.android.exoplayer2.source.LoopingMediaSource$LoopingTimeline)
.class final Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;
.super Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/LoopingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoopingTimeline"
.end annotation


# instance fields
.field private final childPeriodCount:I

.field private final childTimeline:Lcom/google/android/exoplayer2/Timeline;

.field private final childWindowCount:I

.field private final loopCount:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Timeline;I)V
    .registers 5

    new-instance v0, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/source/ShuffleOrder$UnshuffledShuffleOrder;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;-><init>(ZLcom/google/android/exoplayer2/source/ShuffleOrder;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childTimeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    iput p2, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->loopCount:I

    iget p1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    if-lez p1, :cond_29

    const v0, 0x7fffffff

    div-int/2addr v0, p1

    if-gt p2, v0, :cond_24

    const/4 v1, 0x1

    :cond_24
    const-string p1, "LoopingMediaSource contains too many periods"

    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    :cond_29
    return-void
.end method


# virtual methods
.method protected getChildIndexByChildUid(Ljava/lang/Object;)I
    .registers 3

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_6

    const/4 p1, -0x1

    return p1

    :cond_6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected getChildIndexByPeriodIndex(I)I
    .registers 3

    iget v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    div-int/2addr p1, v0

    return p1
.end method

.method protected getChildIndexByWindowIndex(I)I
    .registers 3

    iget v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    div-int/2addr p1, v0

    return p1
.end method

.method protected getChildUidByChildIndex(I)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected getFirstPeriodIndexByChildIndex(I)I
    .registers 3

    iget v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    mul-int p1, p1, v0

    return p1
.end method

.method protected getFirstWindowIndexByChildIndex(I)I
    .registers 3

    iget v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    mul-int p1, p1, v0

    return p1
.end method

.method public getPeriodCount()I
    .registers 3

    iget v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->loopCount:I

    mul-int v0, v0, v1

    return v0
.end method

.method protected getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;
    .registers 2

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childTimeline:Lcom/google/android/exoplayer2/Timeline;

    return-object p1
.end method

.method public getWindowCount()I
    .registers 3

    iget v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->loopCount:I

    mul-int v0, v0, v1

    return v0
.end method
