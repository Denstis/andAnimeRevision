###### Class com.google.android.gms.internal.ads.zzcec (com.google.android.gms.internal.ads.zzcec)
.class public abstract Lcom/google/android/gms/internal/ads/zzcec;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# instance fields
.field protected final mLock:Ljava/lang/Object;

.field protected final zzdbn:Lcom/google/android/gms/internal/ads/zzaxv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaxv<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field protected zzfux:Z

.field protected zzfuy:Z

.field protected zzfuz:Lcom/google/android/gms/internal/ads/zzape;

.field protected zzfva:Lcom/google/android/gms/internal/ads/zzaom;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaxv;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzdbn:Lcom/google/android/gms/internal/ads/zzaxv;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcec;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzfux:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzfuy:Z

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    const-string p1, "Disconnected from remote ad request service."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzdbn:Lcom/google/android/gms/internal/ads/zzaxv;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcel;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaxv;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onConnectionSuspended(I)V
    .registers 2

    const-string p1, "Cannot connect to remote service, fallback to local instance."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    return-void
.end method

.method protected final zzakj()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcec;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzfuy:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzfva:Lcom/google/android/gms/internal/ads/zzaom;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzfva:Lcom/google/android/gms/internal/ads/zzaom;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzfva:Lcom/google/android/gms/internal/ads/zzaom;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    :cond_1b
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    monitor-exit v0

    return-void

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_20

    throw v1
.end method
