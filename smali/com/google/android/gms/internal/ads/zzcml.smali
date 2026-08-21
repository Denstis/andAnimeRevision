###### Class com.google.android.gms.internal.ads.zzcml (com.google.android.gms.internal.ads.zzcml)
.class public final Lcom/google/android/gms/internal/ads/zzcml;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/doubleclick/AppEventListener;


# instance fields
.field private zzgcr:Lcom/google/android/gms/internal/ads/zzvt;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcml;->zzgcr:Lcom/google/android/gms/internal/ads/zzvt;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-eqz v0, :cond_12

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcml;->zzgcr:Lcom/google/android/gms/internal/ads/zzvt;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzvt;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c
    .catchall {:try_start_5 .. :try_end_a} :catchall_14

    monitor-exit p0

    return-void

    :catch_c
    move-exception p1

    :try_start_d
    const-string p2, "Remote Exception at onAppEvent."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzalj()Lcom/google/android/gms/internal/ads/zzvt;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcml;->zzgcr:Lcom/google/android/gms/internal/ads/zzvt;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzvt;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcml;->zzgcr:Lcom/google/android/gms/internal/ads/zzvt;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method
