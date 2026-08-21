###### Class com.google.android.gms.internal.ads.zzcee (com.google.android.gms.internal.ads.zzcee)
.class public final Lcom/google/android/gms/internal/ads/zzcee;
.super Lcom/google/android/gms/internal/ads/zzcec;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcec;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkx()Lcom/google/android/gms/internal/ads/zzawk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawk;->zzwd()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaom;

    invoke-direct {v1, p1, v0, p0, p0}, Lcom/google/android/gms/internal/ads/zzaom;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzfva:Lcom/google/android/gms/internal/ads/zzaom;

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .registers 6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcec;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzfuy:Z

    if-nez v0, :cond_39

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzfuy:Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_3b

    const/4 v0, 0x0

    :try_start_b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzfva:Lcom/google/android/gms/internal/ads/zzaom;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaom;->zzta()Lcom/google/android/gms/internal/ads/zzaor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzfuz:Lcom/google/android/gms/internal/ads/zzape;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcef;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzcef;-><init>(Lcom/google/android/gms/internal/ads/zzcec;)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaor;->zzb(Lcom/google/android/gms/internal/ads/zzape;Lcom/google/android/gms/internal/ads/zzaoy;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1b} :catch_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_1b} :catch_31
    .catchall {:try_start_b .. :try_end_1b} :catchall_1c

    goto :goto_39

    :catchall_1c
    move-exception v1

    :try_start_1d
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkn()Lcom/google/android/gms/internal/ads/zzatr;

    move-result-object v2

    const-string v3, "RemoteSignalsClientTask.onConnected"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzatr;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzdbn:Lcom/google/android/gms/internal/ads/zzaxv;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcel;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzcel;-><init>(I)V

    :goto_2d
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaxv;->setException(Ljava/lang/Throwable;)Z

    goto :goto_39

    :catch_31
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzdbn:Lcom/google/android/gms/internal/ads/zzaxv;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcel;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzcel;-><init>(I)V

    goto :goto_2d

    :cond_39
    :goto_39
    monitor-exit p1

    return-void

    :catchall_3b
    move-exception v0

    monitor-exit p1
    :try_end_3d
    .catchall {:try_start_1d .. :try_end_3d} :catchall_3b

    goto :goto_3f

    :goto_3e
    throw v0

    :goto_3f
    goto :goto_3e
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzape;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzape;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcec;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzfux:Z

    if-eqz v1, :cond_b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzdbn:Lcom/google/android/gms/internal/ads/zzaxv;

    monitor-exit v0

    return-object p1

    :cond_b
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzfux:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzfuz:Lcom/google/android/gms/internal/ads/zzape;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzfva:Lcom/google/android/gms/internal/ads/zzaom;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkAvailabilityAndConnect()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzdbn:Lcom/google/android/gms/internal/ads/zzaxv;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzceh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzceh;-><init>(Lcom/google/android/gms/internal/ads/zzcee;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzaxn;->zzdwn:Lcom/google/android/gms/internal/ads/zzddl;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzaxv;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzdbn:Lcom/google/android/gms/internal/ads/zzaxv;

    monitor-exit v0

    return-object p1

    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p1
.end method

###### Class com.google.android.gms.internal.ads.zzceh (com.google.android.gms.internal.ads.zzceh)
.class final synthetic Lcom/google/android/gms/internal/ads/zzceh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfvd:Lcom/google/android/gms/internal/ads/zzcee;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcee;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzceh;->zzfvd:Lcom/google/android/gms/internal/ads/zzcee;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzceh;->zzfvd:Lcom/google/android/gms/internal/ads/zzcee;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzakj()V

    return-void
.end method
