###### Class com.google.android.gms.internal.ads.zzpv (com.google.android.gms.internal.ads.zzpv)
.class public final Lcom/google/android/gms/internal/ads/zzpv;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzbox:Ljava/lang/Object;

.field private zzboy:Lcom/google/android/gms/internal/ads/zzpy;

.field private zzboz:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpv;->zzbox:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpv;->zzboy:Lcom/google/android/gms/internal/ads/zzpy;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpv;->zzboz:Z

    return-void
.end method


# virtual methods
.method public final getActivity()Landroid/app/Activity;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpv;->zzbox:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastIceCreamSandwich()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    monitor-exit v0

    return-object v2

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpv;->zzboy:Lcom/google/android/gms/internal/ads/zzpy;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpv;->zzboy:Lcom/google/android/gms/internal/ads/zzpy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_18
    monitor-exit v0

    return-object v2

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public final getContext()Landroid/content/Context;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpv;->zzbox:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastIceCreamSandwich()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    monitor-exit v0

    return-object v2

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpv;->zzboy:Lcom/google/android/gms/internal/ads/zzpy;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpv;->zzboy:Lcom/google/android/gms/internal/ads/zzpy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpy;->getContext()Landroid/content/Context;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_18
    monitor-exit v0

    return-object v2

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public final initialize(Landroid/content/Context;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpv;->zzbox:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzpv;->zzboz:Z

    if-nez v1, :cond_3a

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastIceCreamSandwich()Z

    move-result v1

    if-nez v1, :cond_f

    monitor-exit v0

    return-void

    :cond_f
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_17

    move-object v2, p1

    :cond_17
    instance-of v3, v2, Landroid/app/Application;

    if-eqz v3, :cond_1e

    move-object v1, v2

    check-cast v1, Landroid/app/Application;

    :cond_1e
    if-nez v1, :cond_27

    const-string p1, "Can not cast Context to Application"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_27
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpv;->zzboy:Lcom/google/android/gms/internal/ads/zzpy;

    if-nez v2, :cond_32

    new-instance v2, Lcom/google/android/gms/internal/ads/zzpy;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzpy;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzpv;->zzboy:Lcom/google/android/gms/internal/ads/zzpy;

    :cond_32
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpv;->zzboy:Lcom/google/android/gms/internal/ads/zzpy;

    invoke-virtual {v2, v1, p1}, Lcom/google/android/gms/internal/ads/zzpy;->zza(Landroid/app/Application;Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzpv;->zzboz:Z

    :cond_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzqa;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpv;->zzbox:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastIceCreamSandwich()Z

    move-result v1

    if-nez v1, :cond_b

    monitor-exit v0

    return-void

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpv;->zzboy:Lcom/google/android/gms/internal/ads/zzpy;

    if-nez v1, :cond_16

    new-instance v1, Lcom/google/android/gms/internal/ads/zzpy;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzpy;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzpv;->zzboy:Lcom/google/android/gms/internal/ads/zzpy;

    :cond_16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpv;->zzboy:Lcom/google/android/gms/internal/ads/zzpy;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzpy;->zza(Lcom/google/android/gms/internal/ads/zzqa;)V

    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzqa;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpv;->zzbox:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpv;->zzboy:Lcom/google/android/gms/internal/ads/zzpy;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpv;->zzboy:Lcom/google/android/gms/internal/ads/zzpy;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzpy;->zzb(Lcom/google/android/gms/internal/ads/zzqa;)V

    monitor-exit v0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method
