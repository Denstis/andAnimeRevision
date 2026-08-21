###### Class com.google.android.exoplayer2.upstream.cache.SimpleCache (com.google.android.exoplayer2.upstream.cache.SimpleCache)
.class public final Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/cache/Cache;


# static fields
.field private static final TAG:Ljava/lang/String; = "SimpleCache"

.field private static cacheFolderLockingDisabled:Z

.field private static final lockedCacheDirs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cacheDir:Ljava/io/File;

.field private final evictor:Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;

.field private final index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

.field private final listeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;",
            ">;>;"
        }
    .end annotation
.end field

.field private released:Z

.field private totalSpace:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->lockedCacheDirs:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;[BZ)V

    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->lockFolder(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_29

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->evictor:Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;

    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    new-instance p1, Landroid/os/ConditionVariable;

    invoke-direct {p1}, Landroid/os/ConditionVariable;-><init>()V

    new-instance p2, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache$1;

    const-string p3, "SimpleCache.initialize()"

    invoke-direct {p2, p0, p3, p1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache$1;-><init>(Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    return-void

    :cond_29
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Another SimpleCache instance uses the folder: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;[B)V
    .registers 5

    if-eqz p3, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;[BZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;[BZ)V
    .registers 6

    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-direct {v0, p1, p3, p4}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;-><init>(Ljava/io/File;[BZ)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->initialize()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;)Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;
    .registers 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->evictor:Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;

    return-object p0
.end method

.method private addSpan(Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->getOrAdd(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->addSpan(Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;)V

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->totalSpace:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->totalSpace:J

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->notifySpanAdded(Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;)V

    return-void
.end method

.method public static declared-synchronized disableCacheFolderLocking()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    sput-boolean v1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheFolderLockingDisabled:Z

    sget-object v1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->lockedCacheDirs:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getSpan(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    .registers 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->createOpenHole(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object p1

    return-object p1

    :cond_d
    :goto_d
    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->getSpan(J)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object p1

    iget-boolean v1, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->isCached:Z

    if-eqz v1, :cond_21

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->removeStaleSpans()V

    goto :goto_d

    :cond_21
    return-object p1
.end method

.method private initialize()V
    .registers 10

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-void

    :cond_e
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->load()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1c

    return-void

    :cond_1c
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v1, :cond_4d

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "cached_content_index.exi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    goto :goto_4a

    :cond_2f
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_40

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->createCacheEntry(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v4

    goto :goto_41

    :cond_40
    const/4 v4, 0x0

    :goto_41
    if-eqz v4, :cond_47

    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->addSpan(Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;)V

    goto :goto_4a

    :cond_47
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :goto_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_4d
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->removeEmpty()V

    :try_start_52
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->store()V
    :try_end_57
    .catch Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException; {:try_start_52 .. :try_end_57} :catch_58

    goto :goto_60

    :catch_58
    move-exception v0

    const-string v1, "SimpleCache"

    const-string v2, "Storing index file failed"

    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_60
    return-void
.end method

.method public static declared-synchronized isCacheFolderLocked(Ljava/io/File;)Z
    .registers 3

    const-class v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->lockedCacheDirs:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized lockFolder(Ljava/io/File;)Z
    .registers 3

    const-class v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheFolderLockingDisabled:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_16

    if-eqz v1, :cond_a

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :cond_a
    :try_start_a
    sget-object v1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->lockedCacheDirs:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_16

    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private notifySpanAdded(Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_12
    if-ltz v1, :cond_20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;

    invoke-interface {v2, p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;->onSpanAdded(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    :cond_20
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->evictor:Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;

    invoke-interface {v0, p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;->onSpanAdded(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    return-void
.end method

.method private notifySpanRemoved(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_12
    if-ltz v1, :cond_20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;

    invoke-interface {v2, p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;->onSpanRemoved(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    :cond_20
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->evictor:Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;

    invoke-interface {v0, p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;->onSpanRemoved(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    return-void
.end method

.method private notifySpanTouched(Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_12
    if-ltz v1, :cond_20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;

    invoke-interface {v2, p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;->onSpanTouched(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    :cond_20
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->evictor:Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;->onSpanTouched(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    return-void
.end method

.method private removeSpanInternal(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->removeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_22

    :cond_11
    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->totalSpace:J

    iget-wide v3, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->totalSpace:J

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    iget-object v0, v0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->maybeRemove(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->notifySpanRemoved(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    :cond_22
    :goto_22
    return-void
.end method

.method private removeStaleSpans()V
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->getAll()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->getSpans()Ljava/util/TreeSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_23
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    iget-object v4, v3, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_3b
    const/4 v1, 0x0

    :goto_3c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4e

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->removeSpanInternal(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_4e
    return-void
.end method

.method private static declared-synchronized unlockFolder(Ljava/io/File;)V
    .registers 3

    const-class v0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheFolderLockingDisabled:Z

    if-nez v1, :cond_10

    sget-object v1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->lockedCacheDirs:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized addListener(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;)Ljava/util/NavigableSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;",
            ")",
            "Ljava/util/NavigableSet<",
            "Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object p1
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    monitor-exit p0

    return-object p1

    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized applyContentMetadataMutations(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->applyContentMetadataMutations(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->store()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized commitFile(Ljava/io/File;)V
    .registers 11

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->createCacheEntry(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v0

    if-eqz v0, :cond_17

    const/4 v3, 0x1

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    iget-object v4, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->isLocked()Z

    move-result v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_6d

    if-nez v4, :cond_35

    monitor-exit p0

    return-void

    :cond_35
    :try_start_35
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_44

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_6d

    monitor-exit p0

    return-void

    :cond_44
    :try_start_44
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->getMetadata()Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataInternal;->getContentLength(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long p1, v3, v5

    if-eqz p1, :cond_60

    iget-wide v5, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v7, v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    add-long/2addr v5, v7

    cmp-long p1, v5, v3

    if-gtz p1, :cond_5c

    goto :goto_5d

    :cond_5c
    const/4 v1, 0x0

    :goto_5d
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    :cond_60
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->addSpan(Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->store()V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_6b
    .catchall {:try_start_44 .. :try_end_6b} :catchall_6d

    monitor-exit p0

    return-void

    :catchall_6d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCacheSpace()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->totalSpace:J
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-wide v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCachedLength(Ljava/lang/String;JJ)J
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->getCachedBytesLength(JJ)J

    move-result-wide p1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1b

    goto :goto_19

    :cond_18
    neg-long p1, p4

    :goto_19
    monitor-exit p0

    return-wide p1

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableSet<",
            "Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object p1

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_24

    :cond_1a
    new-instance v0, Ljava/util/TreeSet;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->getSpans()Ljava/util/TreeSet;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    goto :goto_29

    :cond_24
    :goto_24
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    :goto_29
    monitor-exit p0

    return-object v0

    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getContentLength(Ljava/lang/String;)J
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->getContentMetadata(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataInternal;->getContentLength(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;)J

    move-result-wide v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-wide v0

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getContentMetadata(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->getContentMetadata(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object p1

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getKeys()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->getKeys()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-object v0

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCached(Ljava/lang/String;JJ)Z
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object p1

    if-eqz p1, :cond_1e

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->getCachedBytesLength(JJ)J

    move-result-wide p1
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_21

    cmp-long p3, p1, p4

    if-ltz p3, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    monitor-exit p0

    return v1

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_37

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->removeStaleSpans()V
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_37

    const/4 v0, 0x1

    :try_start_10
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->store()V
    :try_end_15
    .catch Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException; {:try_start_10 .. :try_end_15} :catch_1f
    .catchall {:try_start_10 .. :try_end_15} :catchall_1d

    :try_start_15
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-static {v1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->unlockFolder(Ljava/io/File;)V

    :goto_1a
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_37

    goto :goto_2d

    :catchall_1d
    move-exception v1

    goto :goto_2f

    :catch_1f
    move-exception v1

    :try_start_20
    const-string v2, "SimpleCache"

    const-string v3, "Storing index file failed"

    invoke-static {v2, v3, v1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_1d

    :try_start_27
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-static {v1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->unlockFolder(Ljava/io/File;)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_37

    goto :goto_1a

    :goto_2d
    monitor-exit p0

    return-void

    :goto_2f
    :try_start_2f
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-static {v2}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->unlockFolder(Ljava/io/File;)V

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z

    throw v1
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_37

    :catchall_37
    move-exception v0

    monitor-exit p0

    goto :goto_3b

    :goto_3a
    throw v0

    :goto_3b
    goto :goto_3a
.end method

.method public declared-synchronized releaseHoleSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->isLocked()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->setLocked(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->maybeRemove(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    monitor-exit p0

    return-void

    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeListener(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_21

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1f

    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_21

    :cond_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->removeSpanInternal(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setContentLength(Ljava/lang/String;J)V
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;-><init>()V

    invoke-static {v0, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataInternal;->setContentLength(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;J)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->applyContentMetadataMutations(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startFile(Ljava/lang/String;JJ)Ljava/io/File;
    .registers 14

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->isLocked()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2b

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->removeStaleSpans()V

    :cond_2b
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->evictor:Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;->onStartFile(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;JJ)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    iget v3, v0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-wide v4, p2

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;->getCacheFile(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object p1
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_43

    monitor-exit p0

    return-object p1

    :catchall_43
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic startReadWrite(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->startReadWrite(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized startReadWrite(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    .registers 5

    monitor-enter p0

    :goto_1
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->startReadWriteNonBlocking(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_d

    if-eqz v0, :cond_9

    monitor-exit p0

    return-object v0

    :cond_9
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_d

    goto :goto_1

    :catchall_d
    move-exception p1

    monitor-exit p0

    goto :goto_11

    :goto_10
    throw p1

    :goto_11
    goto :goto_10
.end method

.method public bridge synthetic startReadWriteNonBlocking(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->startReadWriteNonBlocking(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized startReadWriteNonBlocking(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->released:Z

    const/4 v1, 0x1

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->getSpan(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object p2

    iget-boolean p3, p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->isCached:Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_39

    if-eqz p3, :cond_25

    :try_start_14
    iget-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->touch(Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;)Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->notifySpanTouched(Lcom/google/android/exoplayer2/upstream/cache/SimpleCacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    :try_end_21
    .catch Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException; {:try_start_14 .. :try_end_21} :catch_23
    .catchall {:try_start_14 .. :try_end_21} :catchall_39

    monitor-exit p0

    return-object p1

    :catch_23
    monitor-exit p0

    return-object p2

    :cond_25
    :try_start_25
    iget-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->index:Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;

    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->getOrAdd(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->isLocked()Z

    move-result p3

    if-nez p3, :cond_36

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->setLocked(Z)V
    :try_end_34
    .catchall {:try_start_25 .. :try_end_34} :catchall_39

    monitor-exit p0

    return-object p2

    :cond_36
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class com.google.android.exoplayer2.upstream.cache.SimpleCache.AnonymousClass1 (com.google.android.exoplayer2.upstream.cache.SimpleCache$1)
.class Lcom/google/android/exoplayer2/upstream/cache/SimpleCache$1;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

.field final synthetic val$conditionVariable:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache$1;->this$0:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache$1;->val$conditionVariable:Landroid/os/ConditionVariable;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache$1;->this$0:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache$1;->val$conditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache$1;->this$0:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    invoke-static {v1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->access$000(Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache$1;->this$0:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    invoke-static {v1}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->access$100(Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;)Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;->onCacheInitialized()V

    monitor-exit v0

    return-void

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method
