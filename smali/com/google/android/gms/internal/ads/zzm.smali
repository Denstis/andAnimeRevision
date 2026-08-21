###### Class com.google.android.gms.internal.ads.zzm (com.google.android.gms.internal.ads.zzm)
.class public final Lcom/google/android/gms/internal/ads/zzm;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field private final zzaa:Lcom/google/android/gms/internal/ads/zzn;

.field private final zzc:Lcom/google/android/gms/internal/ads/zza;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzaa;

.field private volatile zze:Z

.field private final zzz:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/ads/zzq<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zzn;Lcom/google/android/gms/internal/ads/zza;Lcom/google/android/gms/internal/ads/zzaa;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/ads/zzq<",
            "*>;>;",
            "Lcom/google/android/gms/internal/ads/zzn;",
            "Lcom/google/android/gms/internal/ads/zza;",
            "Lcom/google/android/gms/internal/ads/zzaa;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzm;->zze:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzm;->zzz:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzm;->zzaa:Lcom/google/android/gms/internal/ads/zzn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzm;->zzc:Lcom/google/android/gms/internal/ads/zza;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzaa;

    return-void
.end method

.method private final processRequest()V
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzm;->zzz:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzq;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzq;->zza(I)V

    const/4 v3, 0x4

    :try_start_11
    const-string v4, "network-queue-take"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzq;->zzb(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzq;->isCanceled()Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzq;->zzc()I

    move-result v4

    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzm;->zzaa:Lcom/google/android/gms/internal/ads/zzn;

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/ads/zzn;->zzc(Lcom/google/android/gms/internal/ads/zzq;)Lcom/google/android/gms/internal/ads/zzo;

    move-result-object v4

    const-string v5, "network-http-complete"

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzq;->zzb(Ljava/lang/String;)V

    iget-boolean v5, v4, Lcom/google/android/gms/internal/ads/zzo;->zzac:Z

    if-eqz v5, :cond_41

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzq;->zzk()Z

    move-result v5

    if-eqz v5, :cond_41

    const-string v4, "not-modified"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzq;->zzc(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzq;->zzl()V
    :try_end_3d
    .catch Lcom/google/android/gms/internal/ads/zzae; {:try_start_11 .. :try_end_3d} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_3d} :catch_75
    .catchall {:try_start_11 .. :try_end_3d} :catchall_73

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzq;->zza(I)V

    return-void

    :cond_41
    :try_start_41
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzq;->zza(Lcom/google/android/gms/internal/ads/zzo;)Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v4

    const-string v5, "network-parse-complete"

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzq;->zzb(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzq;->zzg()Z

    move-result v5

    if-eqz v5, :cond_64

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzz;->zzbh:Lcom/google/android/gms/internal/ads/zzd;

    if-eqz v5, :cond_64

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzm;->zzc:Lcom/google/android/gms/internal/ads/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzq;->zzd()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zzz;->zzbh:Lcom/google/android/gms/internal/ads/zzd;

    invoke-interface {v5, v6, v7}, Lcom/google/android/gms/internal/ads/zza;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzd;)V

    const-string v5, "network-cache-written"

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzq;->zzb(Ljava/lang/String;)V

    :cond_64
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzq;->zzj()V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzaa;

    invoke-interface {v5, v0, v4}, Lcom/google/android/gms/internal/ads/zzaa;->zzb(Lcom/google/android/gms/internal/ads/zzq;Lcom/google/android/gms/internal/ads/zzz;)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzq;->zza(Lcom/google/android/gms/internal/ads/zzz;)V
    :try_end_6f
    .catch Lcom/google/android/gms/internal/ads/zzae; {:try_start_41 .. :try_end_6f} :catch_9e
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_6f} :catch_75
    .catchall {:try_start_41 .. :try_end_6f} :catchall_73

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzq;->zza(I)V

    return-void

    :catchall_73
    move-exception v1

    goto :goto_b3

    :catch_75
    move-exception v4

    :try_start_76
    const-string v5, "Unhandled exception %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzag;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzae;

    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/ads/zzae;-><init>(Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzae;->zza(J)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzaa;

    invoke-interface {v1, v0, v5}, Lcom/google/android/gms/internal/ads/zzaa;->zza(Lcom/google/android/gms/internal/ads/zzq;Lcom/google/android/gms/internal/ads/zzae;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzq;->zzl()V
    :try_end_9a
    .catchall {:try_start_76 .. :try_end_9a} :catchall_73

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzq;->zza(I)V

    return-void

    :catch_9e
    move-exception v4

    :try_start_9f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzae;->zza(J)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzaa;

    invoke-interface {v1, v0, v4}, Lcom/google/android/gms/internal/ads/zzaa;->zza(Lcom/google/android/gms/internal/ads/zzq;Lcom/google/android/gms/internal/ads/zzae;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzq;->zzl()V
    :try_end_af
    .catchall {:try_start_9f .. :try_end_af} :catchall_73

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzq;->zza(I)V

    return-void

    :goto_b3
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzq;->zza(I)V

    throw v1
.end method


# virtual methods
.method public final quit()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzm;->zze:Z

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public final run()V
    .registers 3

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_5
    :try_start_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzm;->processRequest()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_5

    :catch_9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzm;->zze:Z

    if-eqz v0, :cond_15

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_15
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzag;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5
.end method
