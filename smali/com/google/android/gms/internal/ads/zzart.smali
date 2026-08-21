###### Class com.google.android.gms.internal.ads.zzart (com.google.android.gms.internal.ads.zzart)
.class public final Lcom/google/android/gms/internal/ads/zzart;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;


# instance fields
.field private final zzdea:Lcom/google/android/gms/internal/ads/zzakd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzakd;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzart;->zzdea:Lcom/google/android/gms/internal/ads/zzakd;

    return-void
.end method


# virtual methods
.method public final onAdClosed()V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdClosed."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzart;->zzdea:Lcom/google/android/gms/internal/ads/zzakd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzakd;->onAdClosed()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdFailedToShow(Ljava/lang/String;)V
    .registers 4

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdFailedToShow."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Mediation ad failed to show: "

    if-eqz v0, :cond_1b

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_20

    :cond_1b
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_20
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    :try_start_23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzart;->zzdea:Lcom/google/android/gms/internal/ads/zzakd;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzakd;->zzcl(I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onAdOpened()V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdOpened."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzart;->zzdea:Lcom/google/android/gms/internal/ads/zzakd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzakd;->onAdOpened()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .registers 4

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string v0, "Adapter called onUserEarnedReward."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzart;->zzdea:Lcom/google/android/gms/internal/ads/zzakd;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzarw;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzarw;-><init>(Lcom/google/android/gms/ads/rewarded/RewardItem;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzakd;->zza(Lcom/google/android/gms/internal/ads/zzaqv;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onVideoComplete()V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string v0, "Adapter called onVideoComplete."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzart;->zzdea:Lcom/google/android/gms/internal/ads/zzakd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzakd;->zzrx()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onVideoStart()V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string v0, "Adapter called onVideoStart."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzart;->zzdea:Lcom/google/android/gms/internal/ads/zzakd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzakd;->zzrw()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final reportAdClicked()V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string v0, "Adapter called reportAdClicked."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzart;->zzdea:Lcom/google/android/gms/internal/ads/zzakd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzakd;->onAdClicked()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final reportAdImpression()V
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string v0, "Adapter called reportAdImpression."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzart;->zzdea:Lcom/google/android/gms/internal/ads/zzakd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzakd;->onAdImpression()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
