###### Class com.google.android.gms.internal.ads.zzamo (com.google.android.gms.internal.ads.zzamo)
.class final Lcom/google/android/gms/internal/ads/zzamo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;
.implements Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;
.implements Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;


# instance fields
.field private zzdfb:Lcom/google/android/gms/internal/ads/zzakd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzakd;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzdfb:Lcom/google/android/gms/internal/ads/zzakd;

    return-void
.end method


# virtual methods
.method public final onAdClosed()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzdfb:Lcom/google/android/gms/internal/ads/zzakd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzakd;->onAdClosed()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public final onAdFailedToShow(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    const-string v0, "Mediated ad failed to show: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_16

    :cond_11
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzdfb:Lcom/google/android/gms/internal/ads/zzakd;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzakd;->zzcl(I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method

.method public final onAdLeftApplication()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzdfb:Lcom/google/android/gms/internal/ads/zzakd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzakd;->onAdLeftApplication()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public final onAdOpened()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzdfb:Lcom/google/android/gms/internal/ads/zzakd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzakd;->onAdOpened()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public final onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzdfb:Lcom/google/android/gms/internal/ads/zzakd;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzarw;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzarw;-><init>(Lcom/google/android/gms/ads/rewarded/RewardItem;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzakd;->zza(Lcom/google/android/gms/internal/ads/zzaqv;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method

.method public final onVideoComplete()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzdfb:Lcom/google/android/gms/internal/ads/zzakd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzakd;->onVideoEnd()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public final onVideoMute()V
    .registers 1

    return-void
.end method

.method public final onVideoPause()V
    .registers 1

    return-void
.end method

.method public final onVideoPlay()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzdfb:Lcom/google/android/gms/internal/ads/zzakd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzakd;->onVideoPlay()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public final onVideoStart()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzdfb:Lcom/google/android/gms/internal/ads/zzakd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzakd;->zzrw()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public final onVideoUnmute()V
    .registers 1

    return-void
.end method

.method public final reportAdClicked()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzdfb:Lcom/google/android/gms/internal/ads/zzakd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzakd;->onAdClicked()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public final reportAdImpression()V
    .registers 1

    return-void
.end method
