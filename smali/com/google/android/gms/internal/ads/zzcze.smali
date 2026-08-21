###### Class com.google.android.gms.internal.ads.zzcze (com.google.android.gms.internal.ads.zzcze)
.class final Lcom/google/android/gms/internal/ads/zzcze;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# instance fields
.field private final lock:Ljava/lang/Object;

.field private zzfux:Z

.field private zzfuy:Z

.field private final zzgnl:Lcom/google/android/gms/internal/ads/zzczq;

.field private final zzgnm:Lcom/google/android/gms/internal/ads/zzczl;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzczl;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcze;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcze;->zzfux:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcze;->zzfuy:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcze;->zzgnm:Lcom/google/android/gms/internal/ads/zzczl;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzczq;

    invoke-direct {p3, p1, p2, p0, p0}, Lcom/google/android/gms/internal/ads/zzczq;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcze;->zzgnl:Lcom/google/android/gms/internal/ads/zzczq;

    return-void
.end method

.method private final zzakj()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcze;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcze;->zzgnl:Lcom/google/android/gms/internal/ads/zzczq;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcze;->zzgnl:Lcom/google/android/gms/internal/ads/zzczq;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcze;->zzgnl:Lcom/google/android/gms/internal/ads/zzczq;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    :cond_18
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    monitor-exit v0

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .registers 5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcze;->lock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcze;->zzfuy:Z

    if-eqz v0, :cond_9

    monitor-exit p1

    return-void

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcze;->zzfuy:Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_2b

    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcze;->zzgnl:Lcom/google/android/gms/internal/ads/zzczq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzczq;->zzaob()Lcom/google/android/gms/internal/ads/zzczx;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzczo;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcze;->zzgnm:Lcom/google/android/gms/internal/ads/zzczl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdpf;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzczo;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzczx;->zza(Lcom/google/android/gms/internal/ads/zzczo;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_20} :catch_20
    .catchall {:try_start_c .. :try_end_20} :catchall_24

    :catch_20
    :try_start_20
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcze;->zzakj()V

    goto :goto_29

    :catchall_24
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcze;->zzakj()V

    throw v0

    :goto_29
    monitor-exit p1

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 2

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .registers 2

    return-void
.end method

.method final zzanw()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcze;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcze;->zzfux:Z

    if-nez v1, :cond_f

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcze;->zzfux:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcze;->zzgnl:Lcom/google/android/gms/internal/ads/zzczq;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkAvailabilityAndConnect()V

    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method
