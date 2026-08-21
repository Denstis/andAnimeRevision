###### Class com.google.android.gms.internal.ads.zzarl (com.google.android.gms.internal.ads.zzarl)
.class public final Lcom/google/android/gms/internal/ads/zzarl;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzdoc:Lcom/google/android/gms/internal/ads/zzara;

.field private final zzzc:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzzc:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzok()Lcom/google/android/gms/internal/ads/zzug;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaju;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzaju;-><init>()V

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzug;->zzc(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajx;)Lcom/google/android/gms/internal/ads/zzara;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdoc:Lcom/google/android/gms/internal/ads/zzara;

    return-void
.end method


# virtual methods
.method public final getAdMetadata()Landroid/os/Bundle;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdoc:Lcom/google/android/gms/internal/ads/zzara;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzara;->getAdMetadata()Landroid/os/Bundle;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdoc:Lcom/google/android/gms/internal/ads/zzara;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzara;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    return-object v0
.end method

.method public final getRewardItem()Lcom/google/android/gms/ads/rewarded/RewardItem;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdoc:Lcom/google/android/gms/internal/ads/zzara;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzara;->zzpk()Lcom/google/android/gms/internal/ads/zzaqv;

    move-result-object v1

    if-nez v1, :cond_a

    return-object v0

    :cond_a
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaro;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzaro;-><init>(Lcom/google/android/gms/internal/ads/zzaqv;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_10

    return-object v2

    :catch_10
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final isLoaded()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdoc:Lcom/google/android/gms/internal/ads/zzara;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzara;->isLoaded()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final setOnAdMetadataChangedListener(Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdoc:Lcom/google/android/gms/internal/ads/zzara;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzya;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzya;-><init>(Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzara;->zza(Lcom/google/android/gms/internal/ads/zzwm;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setServerSideVerificationOptions(Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdoc:Lcom/google/android/gms/internal/ads/zzara;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzarr;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzarr;-><init>(Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzara;->zza(Lcom/google/android/gms/internal/ads/zzarr;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final show(Landroid/app/Activity;Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdoc:Lcom/google/android/gms/internal/ads/zzara;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzarn;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzarn;-><init>(Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzara;->zza(Lcom/google/android/gms/internal/ads/zzarb;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdoc:Lcom/google/android/gms/internal/ads/zzara;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzara;->zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final show(Landroid/app/Activity;Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;Z)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdoc:Lcom/google/android/gms/internal/ads/zzara;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzarn;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzarn;-><init>(Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzara;->zza(Lcom/google/android/gms/internal/ads/zzarb;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdoc:Lcom/google/android/gms/internal/ads/zzara;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzara;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Z)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwz;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzdoc:Lcom/google/android/gms/internal/ads/zzara;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzarl;->zzzc:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzty;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwz;)Lcom/google/android/gms/internal/ads/zztx;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzars;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzars;-><init>(Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzara;->zza(Lcom/google/android/gms/internal/ads/zztx;Lcom/google/android/gms/internal/ads/zzari;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
