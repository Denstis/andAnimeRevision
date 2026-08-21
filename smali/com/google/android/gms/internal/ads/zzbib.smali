###### Class com.google.android.gms.internal.ads.zzbib (com.google.android.gms.internal.ads.zzbib)
.class public final Lcom/google/android/gms/internal/ads/zzbib;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzqa;


# instance fields
.field private final zzbmp:Lcom/google/android/gms/common/util/Clock;

.field private zzdry:Ljava/lang/Runnable;

.field private final zzfcx:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzfcy:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private zzfcz:J

.field private zzfda:J

.field private zzfdb:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/common/util/Clock;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzfcz:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzfda:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzdry:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzfdb:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzfcx:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzbmp:Lcom/google/android/gms/common/util/Clock;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkm()Lcom/google/android/gms/internal/ads/zzpv;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzpv;->zza(Lcom/google/android/gms/internal/ads/zzqa;)V

    return-void
.end method

.method private final declared-synchronized zzaem()V
    .registers 7
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzfdb:Z

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzfcy:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzfcy:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzfcy:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzfcz:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzbmp:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzfda:J

    goto :goto_27

    :cond_23
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzfda:J

    :goto_27
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzfdb:Z
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

.method private final declared-synchronized zzaen()V
    .registers 6
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzfdb:Z

    if-eqz v0, :cond_2a

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzfda:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzfcy:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzfcy:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzfcx:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzdry:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzfda:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzfcy:Ljava/util/concurrent/ScheduledFuture;

    :cond_27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzfdb:Z
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    :cond_2a
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized zza(ILjava/lang/Runnable;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzdry:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzbmp:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzfcz:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzfcx:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, v2, v3, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzfcy:Ljava/util/concurrent/ScheduledFuture;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzo(Z)V
    .registers 2

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbib;->zzaen()V

    return-void

    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbib;->zzaem()V

    return-void
.end method
