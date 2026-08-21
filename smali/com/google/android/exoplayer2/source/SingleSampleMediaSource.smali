###### Class com.google.android.exoplayer2.source.SingleSampleMediaSource (com.google.android.exoplayer2.source.SingleSampleMediaSource)
.class public final Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;
.super Lcom/google/android/exoplayer2/source/BaseMediaSource;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListenerWrapper;,
        Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;,
        Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListener;
    }
.end annotation


# instance fields
.field private final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private final durationUs:J

.field private final format:Lcom/google/android/exoplayer2/Format;

.field private final loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private final tag:Ljava/lang/Object;

.field private final timeline:Lcom/google/android/exoplayer2/Timeline;

.field private transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

.field private final treatLoadErrorsAsEndOfStream:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/Format;J)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/Format;JI)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/Format;JI)V
    .registers 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v6, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {v6, p6}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;-><init>(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/Format;JLcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;ZLjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/Format;JILandroid/os/Handler;Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListener;IZ)V
    .registers 22
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    new-instance v8, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;

    move/from16 v2, p6

    invoke-direct {v8, v2}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;-><init>(I)V

    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move/from16 v9, p10

    invoke-direct/range {v2 .. v10}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/Format;JLcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;ZLjava/lang/Object;)V

    if-eqz v0, :cond_26

    if-eqz v1, :cond_26

    new-instance v2, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListenerWrapper;

    move/from16 v3, p9

    invoke-direct {v2, v1, v3}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListenerWrapper;-><init>(Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListener;I)V

    move-object v1, p0

    invoke-virtual {p0, v0, v2}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    goto :goto_27

    :cond_26
    move-object v1, p0

    :goto_27
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/Format;JLcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;ZLjava/lang/Object;)V
    .registers 15

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->format:Lcom/google/android/exoplayer2/Format;

    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->durationUs:J

    iput-object p6, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iput-boolean p7, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->treatLoadErrorsAsEndOfStream:Z

    iput-object p8, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->tag:Ljava/lang/Object;

    new-instance p2, Lcom/google/android/exoplayer2/upstream/DataSpec;

    const/4 p3, 0x3

    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;I)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    new-instance p1, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p1

    move-wide v1, p4

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JZZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->timeline:Lcom/google/android/exoplayer2/Timeline;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/Format;JLcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;ZLjava/lang/Object;Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$1;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/Format;JLcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .registers 15

    new-instance p2, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->format:Lcom/google/android/exoplayer2/Format;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->durationUs:J

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v8

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->treatLoadErrorsAsEndOfStream:Z

    move-object v0, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;-><init>(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/Format;JLcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Z)V

    return-object p2
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .registers 1

    return-void
.end method

.method public prepareSourceInternal(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/upstream/TransferListener;)V
    .registers 4

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;->timeline:Lcom/google/android/exoplayer2/Timeline;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 2

    check-cast p1, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SingleSampleMediaPeriod;->release()V

    return-void
.end method

.method public releaseSourceInternal()V
    .registers 1

    return-void
.end method

###### Class com.google.android.exoplayer2.source.SingleSampleMediaSource.AnonymousClass1 (com.google.android.exoplayer2.source.SingleSampleMediaSource$1)
.class synthetic Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.exoplayer2.source.SingleSampleMediaSource.EventListener (com.google.android.exoplayer2.source.SingleSampleMediaSource$EventListener)
.class public interface abstract Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract onLoadError(ILjava/io/IOException;)V
.end method

###### Class com.google.android.exoplayer2.source.SingleSampleMediaSource.EventListenerWrapper (com.google.android.exoplayer2.source.SingleSampleMediaSource$EventListenerWrapper)
.class final Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListenerWrapper;
.super Lcom/google/android/exoplayer2/source/DefaultMediaSourceEventListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventListenerWrapper"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final eventListener:Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListener;

.field private final eventSourceId:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListener;I)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceEventListener;-><init>()V

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListener;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListenerWrapper;->eventListener:Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListener;

    iput p2, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListenerWrapper;->eventSourceId:I

    return-void
.end method


# virtual methods
.method public onLoadError(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V
    .registers 7

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListenerWrapper;->eventListener:Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListener;

    iget p2, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListenerWrapper;->eventSourceId:I

    invoke-interface {p1, p2, p5}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$EventListener;->onLoadError(ILjava/io/IOException;)V

    return-void
.end method

###### Class com.google.android.exoplayer2.source.SingleSampleMediaSource.Factory (com.google.android.exoplayer2.source.SingleSampleMediaSource$Factory)
.class public final Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private isCreateCalled:Z

.field private loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private tag:Ljava/lang/Object;

.field private treatLoadErrorsAsEndOfStream:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    new-instance p1, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    return-void
.end method


# virtual methods
.method public createMediaSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;J)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;
    .registers 16

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->isCreateCalled:Z

    new-instance v0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-boolean v8, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->treatLoadErrorsAsEndOfStream:Z

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->tag:Ljava/lang/Object;

    const/4 v10, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/Format;JLcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;ZLjava/lang/Object;Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$1;)V

    return-object v0
.end method

.method public createMediaSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;JLandroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->createMediaSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;J)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;

    move-result-object p1

    if-eqz p5, :cond_b

    if-eqz p6, :cond_b

    invoke-virtual {p1, p5, p6}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    :cond_b
    return-object p1
.end method

.method public setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    return-object p0
.end method

.method public setMinLoadableRetryCount(I)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public setTreatLoadErrorsAsEndOfStream(Z)Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource$Factory;->treatLoadErrorsAsEndOfStream:Z

    return-object p0
.end method
