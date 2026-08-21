###### Class com.google.android.exoplayer2.source.ExtractorMediaSource (com.google.android.exoplayer2.source.ExtractorMediaSource)
.class public final Lcom/google/android/exoplayer2/source/ExtractorMediaSource;
.super Lcom/google/android/exoplayer2/source/BaseMediaSource;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListenerWrapper;,
        Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;,
        Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_LOADING_CHECK_INTERVAL_BYTES:I = 0x100000


# instance fields
.field private final continueLoadingCheckIntervalBytes:I

.field private final customCacheKey:Ljava/lang/String;

.field private final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private final extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field private final loadableLoadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private final tag:Ljava/lang/Object;

.field private timelineDurationUs:J

.field private timelineIsSeekable:Z

.field private transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;Ljava/lang/String;)V
    .registers 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 v7, 0x100000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;Ljava/lang/String;I)V
    .registers 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v4, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Ljava/lang/String;ILjava/lang/Object;)V

    if-eqz p5, :cond_1b

    if-eqz p4, :cond_1b

    new-instance p1, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListenerWrapper;

    invoke-direct {p1, p5}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListenerWrapper;-><init>(Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;)V

    invoke-virtual {p0, p4, p1}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    :cond_1b
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 8

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->uri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->loadableLoadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->customCacheKey:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->continueLoadingCheckIntervalBytes:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->timelineDurationUs:J

    iput-object p7, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->tag:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Ljava/lang/String;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$1;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private notifySourceInfoRefreshed(JZ)V
    .registers 10

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->timelineDurationUs:J

    iput-boolean p3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->timelineIsSeekable:Z

    new-instance p1, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->timelineDurationUs:J

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->timelineIsSeekable:Z

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->tag:Ljava/lang/Object;

    const/4 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JZZLjava/lang/Object;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .registers 15

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v2

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz p3, :cond_d

    invoke-interface {v2, p3}, Lcom/google/android/exoplayer2/upstream/DataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    :cond_d
    new-instance p3, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->uri:Landroid/net/Uri;

    iget-object p4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    invoke-interface {p4}, Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;->createExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->loadableLoadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v5

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->customCacheKey:Ljava/lang/String;

    iget v9, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->continueLoadingCheckIntervalBytes:I

    move-object v0, p3

    move-object v6, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource;[Lcom/google/android/exoplayer2/extractor/Extractor;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod$Listener;Lcom/google/android/exoplayer2/upstream/Allocator;Ljava/lang/String;I)V

    return-object p3
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .registers 1

    return-void
.end method

.method public onSourceInfoRefreshed(JZ)V
    .registers 7

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_b

    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->timelineDurationUs:J

    :cond_b
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->timelineDurationUs:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_16

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->timelineIsSeekable:Z

    if-ne v0, p3, :cond_16

    return-void

    :cond_16
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->notifySourceInfoRefreshed(JZ)V

    return-void
.end method

.method public prepareSourceInternal(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/upstream/TransferListener;)V
    .registers 4

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->timelineDurationUs:J

    iget-boolean p3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->timelineIsSeekable:Z

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;->notifySourceInfoRefreshed(JZ)V

    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .registers 2

    check-cast p1, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaPeriod;->release()V

    return-void
.end method

.method public releaseSourceInternal()V
    .registers 1

    return-void
.end method

###### Class com.google.android.exoplayer2.source.ExtractorMediaSource.AnonymousClass1 (com.google.android.exoplayer2.source.ExtractorMediaSource$1)
.class synthetic Lcom/google/android/exoplayer2/source/ExtractorMediaSource$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ExtractorMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.exoplayer2.source.ExtractorMediaSource.EventListener (com.google.android.exoplayer2.source.ExtractorMediaSource$EventListener)
.class public interface abstract Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ExtractorMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract onLoadError(Ljava/io/IOException;)V
.end method

###### Class com.google.android.exoplayer2.source.ExtractorMediaSource.EventListenerWrapper (com.google.android.exoplayer2.source.ExtractorMediaSource$EventListenerWrapper)
.class final Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListenerWrapper;
.super Lcom/google/android/exoplayer2/source/DefaultMediaSourceEventListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ExtractorMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventListenerWrapper"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final eventListener:Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceEventListener;-><init>()V

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListenerWrapper;->eventListener:Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;

    return-void
.end method


# virtual methods
.method public onLoadError(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V
    .registers 7

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListenerWrapper;->eventListener:Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;

    invoke-interface {p1, p5}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;->onLoadError(Ljava/io/IOException;)V

    return-void
.end method

###### Class com.google.android.exoplayer2.source.ExtractorMediaSource.Factory (com.google.android.exoplayer2.source.ExtractorMediaSource$Factory)
.class public final Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ExtractorMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private continueLoadingCheckIntervalBytes:I

.field private customCacheKey:Ljava/lang/String;

.field private final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field private isCreateCalled:Z

.field private loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    new-instance p1, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    const/high16 p1, 0x100000

    iput p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    return-void
.end method


# virtual methods
.method public createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;
    .registers 12

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->isCreateCalled:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    if-nez v0, :cond_e

    new-instance v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    :cond_e
    new-instance v0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->customCacheKey:Ljava/lang/String;

    iget v7, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->tag:Ljava/lang/Object;

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Ljava/lang/String;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$1;)V

    return-object v0
.end method

.method public createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object p1

    if-eqz p2, :cond_b

    if-eqz p3, :cond_b

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    :cond_b
    return-object p1
.end method

.method public bridge synthetic createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/MediaSource;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public getSupportedTypes()[I
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v2, v0, v1

    return-object v0
.end method

.method public setContinueLoadingCheckIntervalBytes(I)Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iput p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    return-object p0
.end method

.method public setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->customCacheKey:Ljava/lang/String;

    return-object p0
.end method

.method public setExtractorsFactory(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-object p0
.end method

.method public setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    return-object p0
.end method

.method public setMinLoadableRetryCount(I)Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->tag:Ljava/lang/Object;

    return-object p0
.end method
