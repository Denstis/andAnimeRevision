###### Class com.google.android.gms.ads.InterstitialAd (com.google.android.gms.ads.InterstitialAd)
.class public final Lcom/google/android/gms/ads/InterstitialAd;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzabg:Lcom/google/android/gms/internal/ads/zzxd;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzxd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzabg:Lcom/google/android/gms/internal/ads/zzxd;

    const-string v0, "Context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getAdListener()Lcom/google/android/gms/ads/AdListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzabg:Lcom/google/android/gms/internal/ads/zzxd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxd;->getAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v0

    return-object v0
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzabg:Lcom/google/android/gms/internal/ads/zzxd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxd;->getAdMetadata()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzabg:Lcom/google/android/gms/internal/ads/zzxd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxd;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzabg:Lcom/google/android/gms/internal/ads/zzxd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxd;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isLoaded()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzabg:Lcom/google/android/gms/internal/ads/zzxd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxd;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public final isLoading()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzabg:Lcom/google/android/gms/internal/ads/zzxd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxd;->isLoading()Z

    move-result v0

    return v0
.end method

.method public final loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    .registers 3

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    return-void
.end method

.method public final setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzabg:Lcom/google/android/gms/internal/ads/zzxd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzxd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    if-eqz p1, :cond_13

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zztp;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzabg:Lcom/google/android/gms/internal/ads/zzxd;

    check-cast p1, Lcom/google/android/gms/internal/ads/zztp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzxd;->zza(Lcom/google/android/gms/internal/ads/zztp;)V

    return-void

    :cond_13
    if-nez p1, :cond_1b

    iget-object p1, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzabg:Lcom/google/android/gms/internal/ads/zzxd;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzxd;->zza(Lcom/google/android/gms/internal/ads/zztp;)V

    :cond_1b
    return-void
.end method

.method public final setAdMetadataListener(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzabg:Lcom/google/android/gms/internal/ads/zzxd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzxd;->setAdMetadataListener(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V

    return-void
.end method

.method public final setAdUnitId(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzabg:Lcom/google/android/gms/internal/ads/zzxd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzxd;->setAdUnitId(Ljava/lang/String;)V

    return-void
.end method

.method public final setImmersiveMode(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzabg:Lcom/google/android/gms/internal/ads/zzxd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzxd;->setImmersiveMode(Z)V

    return-void
.end method

.method public final setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzabg:Lcom/google/android/gms/internal/ads/zzxd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzxd;->setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    return-void
.end method

.method public final show()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzabg:Lcom/google/android/gms/internal/ads/zzxd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxd;->show()V

    return-void
.end method

.method public final zzc(Z)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzabg:Lcom/google/android/gms/internal/ads/zzxd;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzxd;->zzc(Z)V

    return-void
.end method
