###### Class com.google.android.exoplayer2.upstream.cache.CacheUtil (com.google.android.exoplayer2.upstream.cache.CacheUtil)
.class public final Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE_BYTES:I = 0x20000

.field public static final DEFAULT_CACHE_KEY_FACTORY:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/android/exoplayer2/upstream/cache/a;->a:Lcom/google/android/exoplayer2/upstream/cache/a;

    sput-object v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->DEFAULT_CACHE_KEY_FACTORY:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cache(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 14

    new-instance v2, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    invoke-direct {v2, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;)V

    const/high16 p2, 0x20000

    new-array v3, p2, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v0 .. v8}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->cache(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;[BLcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V

    return-void
.end method

.method public static cache(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;[BLcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V
    .registers 34

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v0, p6

    invoke-static/range {p2 .. p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_12

    invoke-static {v11, v12, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->getCached(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)V

    goto :goto_17

    :cond_12
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;-><init>()V

    :goto_17
    move-object v13, v0

    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->getKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v14

    iget-wide v0, v11, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    iget-wide v2, v11, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v15, -0x1

    cmp-long v4, v2, v15

    if-eqz v4, :cond_27

    goto :goto_2b

    :cond_27
    invoke-interface {v12, v14}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v2

    :goto_2b
    move-wide/from16 v19, v0

    move-wide/from16 v17, v2

    :goto_2f
    const-wide/16 v21, 0x0

    cmp-long v0, v17, v21

    if-eqz v0, :cond_88

    invoke-static/range {p7 .. p7}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->throwExceptionIfInterruptedOrCancelled(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    cmp-long v0, v17, v15

    if-eqz v0, :cond_3f

    move-wide/from16 v4, v17

    goto :goto_45

    :cond_3f
    const-wide v0, 0x7fffffffffffffffL

    move-wide v4, v0

    :goto_45
    move-object/from16 v0, p1

    move-object v1, v14

    move-wide/from16 v2, v19

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedLength(Ljava/lang/String;JJ)J

    move-result-wide v0

    cmp-long v2, v0, v21

    if-lez v2, :cond_55

    move-wide/from16 v23, v0

    goto :goto_7d

    :cond_55
    neg-long v9, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    move-wide v3, v9

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v23, v9

    move-object v9, v13

    move-object/from16 v10, p7

    invoke-static/range {v0 .. v10}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->readAndDiscard(Lcom/google/android/exoplayer2/upstream/DataSpec;JJLcom/google/android/exoplayer2/upstream/DataSource;[BLcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;Ljava/util/concurrent/atomic/AtomicBoolean;)J

    move-result-wide v0

    cmp-long v2, v0, v23

    if-gez v2, :cond_7d

    if-eqz p8, :cond_88

    cmp-long v0, v17, v15

    if-nez v0, :cond_77

    goto :goto_88

    :cond_77
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_7d
    :goto_7d
    add-long v19, v19, v23

    cmp-long v0, v17, v15

    if-nez v0, :cond_85

    move-wide/from16 v23, v21

    :cond_85
    sub-long v17, v17, v23

    goto :goto_2f

    :cond_88
    :goto_88
    return-void
.end method

.method public static generateKey(Landroid/net/Uri;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCached(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->getKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v8

    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    iget-wide v4, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v9, -0x1

    cmp-long v0, v4, v9

    if-eqz v0, :cond_15

    move-object/from16 v0, p1

    goto :goto_1b

    :cond_15
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v4

    :goto_1b
    iput-wide v4, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    const-wide/16 v11, 0x0

    iput-wide v11, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    iput-wide v11, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->newlyCachedBytes:J

    move-wide v15, v2

    move-wide v13, v4

    :goto_25
    cmp-long v2, v13, v11

    if-eqz v2, :cond_56

    const-wide v17, 0x7fffffffffffffffL

    cmp-long v2, v13, v9

    if-eqz v2, :cond_34

    move-wide v6, v13

    goto :goto_36

    :cond_34
    move-wide/from16 v6, v17

    :goto_36
    move-object/from16 v2, p1

    move-object v3, v8

    move-wide v4, v15

    invoke-interface/range {v2 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedLength(Ljava/lang/String;JJ)J

    move-result-wide v2

    cmp-long v4, v2, v11

    if-lez v4, :cond_48

    iget-wide v4, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    add-long/2addr v4, v2

    iput-wide v4, v1, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    goto :goto_4e

    :cond_48
    neg-long v2, v2

    cmp-long v4, v2, v17

    if-nez v4, :cond_4e

    return-void

    :cond_4e
    :goto_4e
    add-long/2addr v15, v2

    cmp-long v4, v13, v9

    if-nez v4, :cond_54

    move-wide v2, v11

    :cond_54
    sub-long/2addr v13, v2

    goto :goto_25

    :cond_56
    return-void
.end method

.method public static getKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->generateKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method private static readAndDiscard(Lcom/google/android/exoplayer2/upstream/DataSpec;JJLcom/google/android/exoplayer2/upstream/DataSource;[BLcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;Ljava/util/concurrent/atomic/AtomicBoolean;)J
    .registers 28

    move-object/from16 v1, p5

    move-object/from16 v0, p6

    move-object/from16 v2, p9

    move-object/from16 v3, p0

    :goto_8
    if-eqz p7, :cond_d

    invoke-virtual/range {p7 .. p8}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->proceed(I)V

    :cond_d
    :try_start_d
    invoke-static/range {p10 .. p10}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->throwExceptionIfInterruptedOrCancelled(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    new-instance v15, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v5, v3, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget v6, v3, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpMethod:I

    iget-object v7, v3, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpBody:[B

    iget-wide v8, v3, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    add-long v8, v8, p1

    iget-wide v10, v3, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long v10, v8, v10

    const-wide/16 v12, -0x1

    iget-object v14, v3, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    iget v4, v3, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I
    :try_end_26
    .catch Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException; {:try_start_d .. :try_end_26} :catch_88
    .catchall {:try_start_d .. :try_end_26} :catchall_83

    or-int/lit8 v16, v4, 0x2

    move-object v4, v15

    move-wide/from16 v8, p1

    move-object/from16 p0, v3

    move-object v3, v15

    move/from16 v15, v16

    :try_start_30
    invoke-direct/range {v4 .. v15}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;I[BJJJLjava/lang/String;I)V
    :try_end_33
    .catch Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException; {:try_start_30 .. :try_end_33} :catch_80
    .catchall {:try_start_30 .. :try_end_33} :catchall_83

    :try_start_33
    invoke-interface {v1, v3}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v4

    iget-wide v6, v2, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-nez v10, :cond_48

    cmp-long v6, v4, v8

    if-eqz v6, :cond_48

    iget-wide v6, v3, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    add-long/2addr v6, v4

    iput-wide v6, v2, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    :cond_48
    const-wide/16 v4, 0x0

    :goto_4a
    cmp-long v6, v4, p3

    if-eqz v6, :cond_7c

    invoke-static/range {p10 .. p10}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->throwExceptionIfInterruptedOrCancelled(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    const/4 v6, 0x0

    cmp-long v7, p3, v8

    if-eqz v7, :cond_60

    array-length v7, v0

    int-to-long v10, v7

    sub-long v12, p3, v4

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v7, v10

    goto :goto_61

    :cond_60
    array-length v7, v0

    :goto_61
    invoke-interface {v1, v0, v6, v7}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_74

    iget-wide v6, v2, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    cmp-long v10, v6, v8

    if-nez v10, :cond_7c

    iget-wide v6, v3, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    add-long/2addr v6, v4

    iput-wide v6, v2, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    goto :goto_7c

    :cond_74
    int-to-long v6, v6

    add-long/2addr v4, v6

    iget-wide v10, v2, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->newlyCachedBytes:J

    add-long/2addr v10, v6

    iput-wide v10, v2, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->newlyCachedBytes:J
    :try_end_7b
    .catch Lcom/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException; {:try_start_33 .. :try_end_7b} :catch_8a
    .catchall {:try_start_33 .. :try_end_7b} :catchall_83

    goto :goto_4a

    :cond_7c
    :goto_7c
    invoke-static/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    return-wide v4

    :catch_80
    move-object/from16 v3, p0

    goto :goto_8a

    :catchall_83
    move-exception v0

    invoke-static/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    throw v0

    :catch_88
    move-object/from16 p0, v3

    :catch_8a
    :goto_8a
    invoke-static/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V

    goto/16 :goto_8
.end method

.method public static remove(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)V
    .registers 3

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    :try_start_14
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->removeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    :try_end_17
    .catch Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_8

    :catch_18
    nop

    goto :goto_8

    :cond_1a
    return-void
.end method

.method private static throwExceptionIfInterruptedOrCancelled(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 2

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_f

    :cond_e
    return-void

    :cond_f
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0
.end method

###### Class com.google.android.exoplayer2.upstream.cache.CacheUtil.CachingCounters (com.google.android.exoplayer2.upstream.cache.CacheUtil$CachingCounters)
.class public Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CachingCounters"
.end annotation


# instance fields
.field public volatile alreadyCachedBytes:J

.field public volatile contentLength:J

.field public volatile newlyCachedBytes:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    return-void
.end method


# virtual methods
.method public totalCachedBytes()J
    .registers 5

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->newlyCachedBytes:J

    add-long/2addr v0, v2

    return-wide v0
.end method

###### Class com.google.android.exoplayer2.upstream.cache.a (com.google.android.exoplayer2.upstream.cache.a)
.class public final synthetic Lcom/google/android/exoplayer2/upstream/cache/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;


# static fields
.field public static final synthetic a:Lcom/google/android/exoplayer2/upstream/cache/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/cache/a;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/cache/a;->a:Lcom/google/android/exoplayer2/upstream/cache/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildCacheKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->getKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
