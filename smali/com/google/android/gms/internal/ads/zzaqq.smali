###### Class com.google.android.gms.internal.ads.zzaqq (com.google.android.gms.internal.ads.zzaqq)
.class public final Lcom/google/android/gms/internal/ads/zzaqq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/reward/RewardedVideoAd;


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final zzdnx:Lcom/google/android/gms/internal/ads/zzaqb;

.field private final zzdny:Lcom/google/android/gms/internal/ads/zzaql;

.field private zzdnz:Ljava/lang/String;

.field private zzdoa:Ljava/lang/String;

.field private final zzlk:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaqb;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqq;->lock:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaql;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaql;-><init>(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzdny:Lcom/google/android/gms/internal/ads/zzaql;

    if-nez p2, :cond_19

    new-instance p2, Lcom/google/android/gms/internal/ads/zzxy;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzxy;-><init>()V

    :cond_19
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzdnx:Lcom/google/android/gms/internal/ads/zzaqb;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzlk:Landroid/content/Context;

    return-void
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzwz;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqq;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzdnx:Lcom/google/android/gms/internal/ads/zzaqb;

    if-nez v1, :cond_9

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1d

    return-void

    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzdnx:Lcom/google/android/gms/internal/ads/zzaqb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzlk:Landroid/content/Context;

    invoke-static {v2, p2, p1}, Lcom/google/android/gms/internal/ads/zzty;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwz;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaqo;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzaqb;->zza(Lcom/google/android/gms/internal/ads/zzaqo;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15
    .catchall {:try_start_9 .. :try_end_14} :catchall_1d

    goto :goto_1b

    :catch_15
    move-exception p1

    :try_start_16
    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_1d

    throw p1
.end method


# virtual methods
.method public final destroy()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzaqq;->destroy(Landroid/content/Context;)V

    return-void
.end method

.method public final destroy(Landroid/content/Context;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqq;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzdny:Lcom/google/android/gms/internal/ads/zzaql;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaql;->setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzdnx:Lcom/google/android/gms/internal/ads/zzaqb;

    if-nez v1, :cond_f

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_21

    return-void

    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzdnx:Lcom/google/android/gms/internal/ads/zzaqb;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzaqb;->zzp(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_18} :catch_19
    .catchall {:try_start_f .. :try_end_18} :catchall_21

    goto :goto_1f

    :catch_19
    move-exception p1

    :try_start_1a
    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_21

    throw p1
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqq;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzdnx:Lcom/google/android/gms/internal/ads/zzaqb;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1c

    if-eqz v1, :cond_15

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzdnx:Lcom/google/android/gms/internal/ads/zzaqb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaqb;->getAdMetadata()Landroid/os/Bundle;

    move-result-object v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_f
    .catchall {:try_start_7 .. :try_end_d} :catchall_1c

    :try_start_d
    monitor-exit v0

    return-object v1

    :catch_f
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    monitor-exit v0

    return-object v1

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public final getCustomData()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqq;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzdoa:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzdnx:Lcom/google/android/gms/internal/ads/zzaqb;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzdnx:Lcom/google/android/gms/internal/ads/zzaqb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqb;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRewardedVideoAdListener()Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqq;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzdny:Lcom/google/android/gms/internal/ads/zzaql;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaql;->getRewardedVideoAdListener()Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public final getUserId()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqq;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzdnz:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final isLoaded()Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqq;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzdnx:Lcom/google/android/gms/internal/ads/zzaqb;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1a

    return v2

    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzdnx:Lcom/google/android/gms/internal/ads/zzaqb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaqb;->isLoaded()Z

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_12
    .catchall {:try_start_a .. :try_end_10} :catchall_1a

    :try_start_10
    monitor-exit v0

    return v1

    :catch_12
    move-exception v1

    const-string v3, "#007 Could not call remote method."

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit v0

    return v2

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public final loadAd(Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;)V
    .registers 3

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    return-void
.end method

.method public final loadAd(Ljava/lang/String;Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V
    .registers 3

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    return-void
.end method

.method public final pause()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzaqq;->pause(Landroid/content/Context;)V

    return-void
.end method

.method public final pause(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqq;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzdnx:Lcom/google/android/gms/internal/ads/zzaqb;

    if-nez v1, :cond_9

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1b

    return-void

    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzdnx:Lcom/google/android/gms/internal/ads/zzaqb;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzaqb;->zzn(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13
    .catchall {:try_start_9 .. :try_end_12} :catchall_1b

    goto :goto_19

    :catch_13
    move-exception p1

    :try_start_14
    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public final resume()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzaqq;->resume(Landroid/content/Context;)V

    return-void
.end method

.method public final resume(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqq;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzdnx:Lcom/google/android/gms/internal/ads/zzaqb;

    if-nez v1, :cond_9

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1b

    return-void

    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzdnx:Lcom/google/android/gms/internal/ads/zzaqb;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzaqb;->zzo(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13
    .catchall {:try_start_9 .. :try_end_12} :catchall_1b

    goto :goto_19

    :catch_13
    move-exception p1

    :try_start_14
    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public final setAdMetadataListener(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqq;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzdnx:Lcom/google/android/gms/internal/ads/zzaqb;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1a

    if-eqz v1, :cond_18

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzdnx:Lcom/google/android/gms/internal/ads/zzaqb;

    new-instance v2, Lcom/google/android/gms/internal/ads/zztu;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zztu;-><init>(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzaqb;->zza(Lcom/google/android/gms/internal/ads/zzvo;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_12
    .catchall {:try_start_7 .. :try_end_11} :catchall_1a

    goto :goto_18

    :catch_12
    move-exception p1

    :try_start_13
    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_18
    :goto_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public final setCustomData(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqq;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzdnx:Lcom/google/android/gms/internal/ads/zzaqb;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_17

    if-eqz v1, :cond_15

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzdnx:Lcom/google/android/gms/internal/ads/zzaqb;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzaqb;->setCustomData(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzdoa:Ljava/lang/String;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f
    .catchall {:try_start_7 .. :try_end_e} :catchall_17

    goto :goto_15

    :catch_f
    move-exception p1

    :try_start_10
    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    :goto_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public final setImmersiveMode(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqq;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzdnx:Lcom/google/android/gms/internal/ads/zzaqb;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_15

    if-eqz v1, :cond_13

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzdnx:Lcom/google/android/gms/internal/ads/zzaqb;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzaqb;->setImmersiveMode(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d
    .catchall {:try_start_7 .. :try_end_c} :catchall_15

    goto :goto_13

    :catch_d
    move-exception p1

    :try_start_e
    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    :goto_13
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw p1
.end method

.method public final setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqq;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzdny:Lcom/google/android/gms/internal/ads/zzaql;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzaql;->setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzdnx:Lcom/google/android/gms/internal/ads/zzaqb;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1c

    if-eqz p1, :cond_1a

    :try_start_c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzdnx:Lcom/google/android/gms/internal/ads/zzaqb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzdny:Lcom/google/android/gms/internal/ads/zzaql;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzaqb;->zza(Lcom/google/android/gms/internal/ads/zzaqi;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_14
    .catchall {:try_start_c .. :try_end_13} :catchall_1c

    goto :goto_1a

    :catch_14
    move-exception p1

    :try_start_15
    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public final setUserId(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqq;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzdnz:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzdnx:Lcom/google/android/gms/internal/ads/zzaqb;
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_17

    if-eqz v1, :cond_15

    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzdnx:Lcom/google/android/gms/internal/ads/zzaqb;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzaqb;->setUserId(Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f
    .catchall {:try_start_9 .. :try_end_e} :catchall_17

    goto :goto_15

    :catch_f
    move-exception p1

    :try_start_10
    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    :goto_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public final show()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqq;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzdnx:Lcom/google/android/gms/internal/ads/zzaqb;

    if-nez v1, :cond_9

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_17

    return-void

    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqq;->zzdnx:Lcom/google/android/gms/internal/ads/zzaqb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaqb;->show()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f
    .catchall {:try_start_9 .. :try_end_e} :catchall_17

    goto :goto_15

    :catch_f
    move-exception v1

    :try_start_10
    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw v1
.end method
