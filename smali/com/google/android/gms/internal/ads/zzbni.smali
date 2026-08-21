###### Class com.google.android.gms.internal.ads.zzbni (com.google.android.gms.internal.ads.zzbni)
.class public final Lcom/google/android/gms/internal/ads/zzbni;
.super Lcom/google/android/gms/internal/ads/zzbpm;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbpm<",
        "Lcom/google/android/gms/internal/ads/zzbnj;",
        ">;"
    }
.end annotation


# instance fields
.field private zzfha:Z


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzbqs<",
            "Lcom/google/android/gms/internal/ads/zzbnj;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbpm;-><init>(Ljava/util/Set;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbni;->zzfha:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized onAdImpression()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbni;->zzfha:Z

    if-nez v0, :cond_d

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbnh;->zzfgz:Lcom/google/android/gms/internal/ads/zzbpo;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbpm;->zza(Lcom/google/android/gms/internal/ads/zzbpo;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbni;->zzfha:Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
