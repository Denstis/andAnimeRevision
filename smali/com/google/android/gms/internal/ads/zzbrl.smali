###### Class com.google.android.gms.internal.ads.zzbrl (com.google.android.gms.internal.ads.zzbrl)
.class public final Lcom/google/android/gms/internal/ads/zzbrl;
.super Lcom/google/android/gms/internal/ads/zzbpm;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbpm<",
        "Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;",
        ">;"
    }
.end annotation


# instance fields
.field private zzehn:Z


# direct methods
.method protected constructor <init>(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzbqs<",
            "Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbpm;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final onVideoEnd()V
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbrn;->zzfgz:Lcom/google/android/gms/internal/ads/zzbpo;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbpm;->zza(Lcom/google/android/gms/internal/ads/zzbpo;)V

    return-void
.end method

.method public final onVideoPause()V
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbrk;->zzfgz:Lcom/google/android/gms/internal/ads/zzbpo;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbpm;->zza(Lcom/google/android/gms/internal/ads/zzbpo;)V

    return-void
.end method

.method public final declared-synchronized onVideoPlay()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbrl;->zzehn:Z

    if-nez v0, :cond_d

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbrp;->zzfgz:Lcom/google/android/gms/internal/ads/zzbpo;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbpm;->zza(Lcom/google/android/gms/internal/ads/zzbpo;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbrl;->zzehn:Z

    :cond_d
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbro;->zzfgz:Lcom/google/android/gms/internal/ads/zzbpo;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbpm;->zza(Lcom/google/android/gms/internal/ads/zzbpo;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onVideoStart()V
    .registers 2

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbrm;->zzfgz:Lcom/google/android/gms/internal/ads/zzbpo;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbpm;->zza(Lcom/google/android/gms/internal/ads/zzbpo;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbrl;->zzehn:Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
