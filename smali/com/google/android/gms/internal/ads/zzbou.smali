###### Class com.google.android.gms.internal.ads.zzbou (com.google.android.gms.internal.ads.zzbou)
.class public final Lcom/google/android/gms/internal/ads/zzbou;
.super Lcom/google/android/gms/internal/ads/zzbpm;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbpm<",
        "Lcom/google/android/gms/internal/ads/zzboy;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbmp:Lcom/google/android/gms/common/util/Clock;

.field private zzfcd:Z

.field private final zzfcx:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzfcz:J

.field private zzfda:J

.field private zzfhe:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/common/util/Clock;)V
    .registers 5

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbpm;-><init>(Ljava/util/Set;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzfcz:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzfda:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzfcd:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzfcx:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzbmp:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbou;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbou;->zzagb()V

    return-void
.end method

.method private final zzagb()V
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbot;->zzfgz:Lcom/google/android/gms/internal/ads/zzbpo;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbpm;->zza(Lcom/google/android/gms/internal/ads/zzbpo;)V

    return-void
.end method

.method private final declared-synchronized zzex(J)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzfhe:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzfhe:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzfhe:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzbmp:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzfcz:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzfcx:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbov;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzbov;-><init>(Lcom/google/android/gms/internal/ads/zzbou;Lcom/google/android/gms/internal/ads/zzbow;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzfhe:Ljava/util/concurrent/ScheduledFuture;
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    monitor-exit p0

    return-void

    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized onPause()V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzfcd:Z

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzfhe:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzfhe:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzfhe:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzfcz:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzbmp:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzfda:J

    goto :goto_27

    :cond_23
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzfda:J

    :goto_27
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzfcd:Z
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    :cond_29
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onResume()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzfcd:Z

    if-eqz v0, :cond_1d

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzfda:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzfhe:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzfda:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbou;->zzex(J)V

    :cond_1a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzfcd:Z
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    :cond_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzaga()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzfcd:Z

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbou;->zzex(J)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzdd(I)V
    .registers 8

    monitor-enter p0

    if-gtz p1, :cond_5

    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzfcd:Z

    if-eqz p1, :cond_25

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzfda:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzfda:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_1f

    goto :goto_21

    :cond_1f
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzfda:J

    :goto_21
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzfda:J
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_43

    monitor-exit p0

    return-void

    :cond_25
    :try_start_25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzbmp:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzfcz:J

    cmp-long p1, v2, v4

    if-gtz p1, :cond_3e

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzfcz:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzbmp:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long p1, v2, v0

    if-lez p1, :cond_41

    :cond_3e
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbou;->zzex(J)V
    :try_end_41
    .catchall {:try_start_25 .. :try_end_41} :catchall_43

    :cond_41
    monitor-exit p0

    return-void

    :catchall_43
    move-exception p1

    monitor-exit p0

    throw p1
.end method
