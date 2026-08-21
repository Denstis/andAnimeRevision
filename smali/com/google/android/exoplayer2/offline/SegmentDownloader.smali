###### Class com.google.android.exoplayer2.offline.SegmentDownloader (com.google.android.exoplayer2.offline.SegmentDownloader)
.class public abstract Lcom/google/android/exoplayer2/offline/SegmentDownloader;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/offline/Downloader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcom/google/android/exoplayer2/offline/FilterableManifest<",
        "TM;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/offline/Downloader;"
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE_BYTES:I = 0x20000


# instance fields
.field private final cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

.field private volatile downloadedBytes:J

.field private volatile downloadedSegments:I

.field private final isCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final manifestUri:Landroid/net/Uri;

.field private final offlineDataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

.field private final priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field private final streamKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field

.field private volatile totalSegments:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/util/List;Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;",
            "Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifestUri:Landroid/net/Uri;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->streamKeys:Ljava/util/ArrayList;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->getCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->buildCacheDataSource(Z)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->buildCacheDataSource(Z)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->offlineDataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;->getPriorityTaskManager()Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->totalSegments:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->isCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private initDownload()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifestUri:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Lcom/google/android/exoplayer2/offline/FilterableManifest;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->streamKeys:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->streamKeys:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/offline/FilterableManifest;->copy(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/FilterableManifest;

    :cond_18
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/offline/FilterableManifest;Z)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->totalSegments:I

    iput v2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedSegments:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedBytes:J

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_36
    if-ltz v2, :cond_60

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    iget-object v3, v3, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-static {v3, v4, v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->getCached(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)V

    iget-wide v3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedBytes:J

    iget-wide v5, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedBytes:J

    iget-wide v3, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    iget-wide v5, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_5d

    iget v3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedSegments:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedSegments:I

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5d
    add-int/lit8 v2, v2, -0x1

    goto :goto_36

    :cond_60
    return-object v0
.end method

.method private removeUri(Landroid/net/Uri;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->generateKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->remove(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->isCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final download()V
    .registers 15

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    const/16 v1, -0x3e8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->add(I)V

    :try_start_7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->initDownload()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/high16 v2, 0x20000

    new-array v2, v2, [B

    new-instance v12, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    invoke-direct {v12}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;-><init>()V

    const/4 v3, 0x0

    const/4 v13, 0x0

    :goto_19
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_56

    if-ge v13, v3, :cond_50

    :try_start_1f
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    iget-object v3, v3, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v4, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v5, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->dataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    iget-object v7, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    const/16 v8, -0x3e8

    iget-object v10, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->isCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v11, 0x1

    move-object v6, v2

    move-object v9, v12

    invoke-static/range {v3 .. v11}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->cache(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;[BLcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V

    iget v3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedSegments:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedSegments:I
    :try_end_3d
    .catchall {:try_start_1f .. :try_end_3d} :catchall_47

    :try_start_3d
    iget-wide v3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedBytes:J

    iget-wide v5, v12, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->newlyCachedBytes:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedBytes:J

    add-int/lit8 v13, v13, 0x1

    goto :goto_19

    :catchall_47
    move-exception v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedBytes:J

    iget-wide v4, v12, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->newlyCachedBytes:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedBytes:J

    throw v0
    :try_end_50
    .catchall {:try_start_3d .. :try_end_50} :catchall_56

    :cond_50
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    return-void

    :catchall_56
    move-exception v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    goto :goto_5e

    :goto_5d
    throw v0

    :goto_5e
    goto :goto_5d
.end method

.method public final getDownloadPercentage()F
    .registers 4

    iget v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->totalSegments:I

    iget v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedSegments:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_16

    if-ne v1, v2, :cond_a

    goto :goto_16

    :cond_a
    const/high16 v2, 0x42c80000    # 100.0f

    if-nez v0, :cond_f

    goto :goto_15

    :cond_f
    int-to-float v1, v1

    mul-float v1, v1, v2

    int-to-float v0, v0

    div-float v2, v1, v0

    :goto_15
    return v2

    :cond_16
    :goto_16
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public final getDownloadedBytes()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->downloadedBytes:J

    return-wide v0
.end method

.method protected abstract getManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Lcom/google/android/exoplayer2/offline/FilterableManifest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "Landroid/net/Uri;",
            ")TM;"
        }
    .end annotation
.end method

.method protected abstract getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/offline/FilterableManifest;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            "TM;Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;",
            ">;"
        }
    .end annotation
.end method

.method public final remove()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->offlineDataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifestUri:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getManifest(Lcom/google/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Lcom/google/android/exoplayer2/offline/FilterableManifest;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->offlineDataSource:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->getSegments(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/offline/FilterableManifest;Z)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2d

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    iget-object v2, v2, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v2, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->removeUri(Landroid/net/Uri;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_23} :catch_2d
    .catchall {:try_start_0 .. :try_end_23} :catchall_26

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :catchall_26
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifestUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->removeUri(Landroid/net/Uri;)V

    throw v0

    :catch_2d
    :cond_2d
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->manifestUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/offline/SegmentDownloader;->removeUri(Landroid/net/Uri;)V

    return-void
.end method

###### Class com.google.android.exoplayer2.offline.SegmentDownloader.Segment (com.google.android.exoplayer2.offline.SegmentDownloader$Segment)
.class public Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/SegmentDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;",
        ">;"
    }
.end annotation


# instance fields
.field public final dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field public final startTimeUs:J


# direct methods
.method public constructor <init>(JLcom/google/android/exoplayer2/upstream/DataSpec;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->startTimeUs:J

    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;)I
    .registers 6

    iget-wide v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->startTimeUs:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->startTimeUs:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->compareLong(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;->compareTo(Lcom/google/android/exoplayer2/offline/SegmentDownloader$Segment;)I

    move-result p1

    return p1
.end method
