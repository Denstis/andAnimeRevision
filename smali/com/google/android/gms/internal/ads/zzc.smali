###### Class com.google.android.gms.internal.ads.zzc (com.google.android.gms.internal.ads.zzc)
.class public final Lcom/google/android/gms/internal/ads/zzc;
.super Ljava/lang/Thread;
.source ""


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final zza:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/ads/zzq<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzb:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/ads/zzq<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/ads/zza;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzaa;

.field private volatile zze:Z

.field private final zzf:Lcom/google/android/gms/internal/ads/zze;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzag;->DEBUG:Z

    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzc;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zza;Lcom/google/android/gms/internal/ads/zzaa;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/ads/zzq<",
            "*>;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/ads/zzq<",
            "*>;>;",
            "Lcom/google/android/gms/internal/ads/zza;",
            "Lcom/google/android/gms/internal/ads/zzaa;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzc;->zze:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzc;->zza:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzc;->zzb:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzc;->zzc:Lcom/google/android/gms/internal/ads/zza;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzc;->zzd:Lcom/google/android/gms/internal/ads/zzaa;

    new-instance p1, Lcom/google/android/gms/internal/ads/zze;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zze;-><init>(Lcom/google/android/gms/internal/ads/zzc;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzc;->zzf:Lcom/google/android/gms/internal/ads/zze;

    return-void
.end method

.method private final processRequest()V
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzc;->zza:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzq;

    const-string v1, "cache-queue-take"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzq;->zzb(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzq;->zza(I)V

    const/4 v2, 0x2

    :try_start_12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzq;->isCanceled()Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzc;->zzc:Lcom/google/android/gms/internal/ads/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzq;->zzd()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzd;

    move-result-object v3

    if-nez v3, :cond_37

    const-string v1, "cache-miss"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzq;->zzb(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzc;->zzf:Lcom/google/android/gms/internal/ads/zze;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zze;->zza(Lcom/google/android/gms/internal/ads/zze;Lcom/google/android/gms/internal/ads/zzq;)Z

    move-result v1

    if-nez v1, :cond_33

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzc;->zzb:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_33
    .catchall {:try_start_12 .. :try_end_33} :catchall_a6

    :cond_33
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzq;->zza(I)V

    return-void

    :cond_37
    :try_start_37
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzd;->isExpired()Z

    move-result v4

    if-eqz v4, :cond_56

    const-string v1, "cache-hit-expired"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzq;->zzb(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzq;->zza(Lcom/google/android/gms/internal/ads/zzd;)Lcom/google/android/gms/internal/ads/zzq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzc;->zzf:Lcom/google/android/gms/internal/ads/zze;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zze;->zza(Lcom/google/android/gms/internal/ads/zze;Lcom/google/android/gms/internal/ads/zzq;)Z

    move-result v1

    if-nez v1, :cond_52

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzc;->zzb:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_52
    .catchall {:try_start_37 .. :try_end_52} :catchall_a6

    :cond_52
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzq;->zza(I)V

    return-void

    :cond_56
    :try_start_56
    const-string v4, "cache-hit"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzq;->zzb(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzo;

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzd;->data:[B

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzd;->zzl:Ljava/util/Map;

    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzo;-><init>([BLjava/util/Map;)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzq;->zza(Lcom/google/android/gms/internal/ads/zzo;)Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v4

    const-string v5, "cache-hit-parsed"

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzq;->zzb(Ljava/lang/String;)V

    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzd;->zzk:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-gez v9, :cond_79

    const/4 v5, 0x1

    goto :goto_7a

    :cond_79
    const/4 v5, 0x0

    :goto_7a
    if-nez v5, :cond_82

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzc;->zzd:Lcom/google/android/gms/internal/ads/zzaa;

    :goto_7e
    invoke-interface {v1, v0, v4}, Lcom/google/android/gms/internal/ads/zzaa;->zzb(Lcom/google/android/gms/internal/ads/zzq;Lcom/google/android/gms/internal/ads/zzz;)V

    goto :goto_a2

    :cond_82
    const-string v5, "cache-hit-refresh-needed"

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzq;->zzb(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzq;->zza(Lcom/google/android/gms/internal/ads/zzd;)Lcom/google/android/gms/internal/ads/zzq;

    iput-boolean v1, v4, Lcom/google/android/gms/internal/ads/zzz;->zzbj:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzc;->zzf:Lcom/google/android/gms/internal/ads/zze;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zze;->zza(Lcom/google/android/gms/internal/ads/zze;Lcom/google/android/gms/internal/ads/zzq;)Z

    move-result v1

    if-nez v1, :cond_9f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzc;->zzd:Lcom/google/android/gms/internal/ads/zzaa;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzf;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzf;-><init>(Lcom/google/android/gms/internal/ads/zzc;Lcom/google/android/gms/internal/ads/zzq;)V

    invoke-interface {v1, v0, v4, v3}, Lcom/google/android/gms/internal/ads/zzaa;->zza(Lcom/google/android/gms/internal/ads/zzq;Lcom/google/android/gms/internal/ads/zzz;Ljava/lang/Runnable;)V

    goto :goto_a2

    :cond_9f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzc;->zzd:Lcom/google/android/gms/internal/ads/zzaa;
    :try_end_a1
    .catchall {:try_start_56 .. :try_end_a1} :catchall_a6

    goto :goto_7e

    :goto_a2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzq;->zza(I)V

    return-void

    :catchall_a6
    move-exception v1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzq;->zza(I)V

    goto :goto_ac

    :goto_ab
    throw v1

    :goto_ac
    goto :goto_ab
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzc;)Ljava/util/concurrent/BlockingQueue;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzc;->zzb:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzc;)Lcom/google/android/gms/internal/ads/zzaa;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzc;->zzd:Lcom/google/android/gms/internal/ads/zzaa;

    return-object p0
.end method


# virtual methods
.method public final quit()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzc;->zze:Z

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public final run()V
    .registers 4

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzc;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "start new dispatcher"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzag;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzc;->zzc:Lcom/google/android/gms/internal/ads/zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zza;->initialize()V

    :goto_16
    :try_start_16
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzc;->processRequest()V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_16

    :catch_1a
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzc;->zze:Z

    if-eqz v0, :cond_26

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_26
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzag;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16
.end method
