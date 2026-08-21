###### Class com.google.android.gms.internal.ads.zzczc (com.google.android.gms.internal.ads.zzczc)
.class final Lcom/google/android/gms/internal/ads/zzczc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final zzduw:Landroid/os/HandlerThread;

.field private zzgni:Lcom/google/android/gms/internal/ads/zzczq;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private final zzgnj:Ljava/lang/String;

.field private final zzgnk:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/google/android/gms/internal/ads/zzbo$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzczc;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzczc;->zzgnj:Ljava/lang/String;

    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "GassClient"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzczc;->zzduw:Landroid/os/HandlerThread;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzczc;->zzduw:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzczq;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzczc;->zzduw:Landroid/os/HandlerThread;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p1, p3, p0, p0}, Lcom/google/android/gms/internal/ads/zzczq;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzczc;->zzgni:Lcom/google/android/gms/internal/ads/zzczq;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczc;->zzgnk:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzczc;->zzgni:Lcom/google/android/gms/internal/ads/zzczq;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkAvailabilityAndConnect()V

    return-void
.end method

.method private final zzakj()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczc;->zzgni:Lcom/google/android/gms/internal/ads/zzczq;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczc;->zzgni:Lcom/google/android/gms/internal/ads/zzczq;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczc;->zzgni:Lcom/google/android/gms/internal/ads/zzczq;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    :cond_17
    return-void
.end method

.method private final zzanu()Lcom/google/android/gms/internal/ads/zzczx;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczc;->zzgni:Lcom/google/android/gms/internal/ads/zzczq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzczq;->zzaob()Lcom/google/android/gms/internal/ads/zzczx;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    const/4 v0, 0x0

    return-object v0
.end method

.method private static zzanv()Lcom/google/android/gms/internal/ads/zzbo$zza;
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbo$zza;->zzal()Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    move-result-object v0

    const-wide/32 v1, 0x8000

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;->zzau(J)Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbo$zza;

    return-object v0
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzczc;->zzanu()Lcom/google/android/gms/internal/ads/zzczx;

    move-result-object p1

    if-eqz p1, :cond_39

    :try_start_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzczt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczc;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzczc;->zzgnj:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzczt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzczx;->zza(Lcom/google/android/gms/internal/ads/zzczt;)Lcom/google/android/gms/internal/ads/zzczv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzczv;->zzaoc()Lcom/google/android/gms/internal/ads/zzbo$zza;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczc;->zzgnk:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_25

    :catch_1c
    :goto_1c
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzczc;->zzakj()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzczc;->zzduw:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    return-void

    :catchall_25
    :try_start_25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzczc;->zzgnk:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzczc;->zzanv()Lcom/google/android/gms/internal/ads/zzbo$zza;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_2e} :catch_1c
    .catchall {:try_start_25 .. :try_end_2e} :catchall_2f

    goto :goto_1c

    :catchall_2f
    move-exception p1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzczc;->zzakj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczc;->zzduw:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    throw p1

    :cond_39
    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzczc;->zzgnk:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzczc;->zzanv()Lcom/google/android/gms/internal/ads/zzbo$zza;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method

.method public final onConnectionSuspended(I)V
    .registers 3

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzczc;->zzgnk:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzczc;->zzanv()Lcom/google/android/gms/internal/ads/zzbo$zza;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method

.method public final zzdk(I)Lcom/google/android/gms/internal/ads/zzbo$zza;
    .registers 5

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzczc;->zzgnk:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v0, 0x1388

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbo$zza;
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    const/4 p1, 0x0

    :goto_e
    if-nez p1, :cond_14

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzczc;->zzanv()Lcom/google/android/gms/internal/ads/zzbo$zza;

    move-result-object p1

    :cond_14
    return-object p1
.end method
