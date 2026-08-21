###### Class com.google.android.gms.ads.rewarded.RewardedAd (com.google.android.gms.ads.rewarded.RewardedAd)
.class public final Lcom/google/android/gms/ads/rewarded/RewardedAd;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzgnb:Lcom/google/android/gms/internal/ads/zzarl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "adUnitID cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzarl;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzarl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzgnb:Lcom/google/android/gms/internal/ads/zzarl;

    return-void
.end method


# virtual methods
.method public final getAdMetadata()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzgnb:Lcom/google/android/gms/internal/ads/zzarl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzarl;->getAdMetadata()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzgnb:Lcom/google/android/gms/internal/ads/zzarl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzarl;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRewardItem()Lcom/google/android/gms/ads/rewarded/RewardItem;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzgnb:Lcom/google/android/gms/internal/ads/zzarl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzarl;->getRewardItem()Lcom/google/android/gms/ads/rewarded/RewardItem;

    move-result-object v0

    return-object v0
.end method

.method public final isLoaded()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzgnb:Lcom/google/android/gms/internal/ads/zzarl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzarl;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public final loadAd(Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V
    .registers 4

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

.method public final loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V
    .registers 4

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

.method public final setOnAdMetadataChangedListener(Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzgnb:Lcom/google/android/gms/internal/ads/zzarl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzarl;->setOnAdMetadataChangedListener(Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;)V

    return-void
.end method

.method public final setServerSideVerificationOptions(Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzgnb:Lcom/google/android/gms/internal/ads/zzarl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzarl;->setServerSideVerificationOptions(Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;)V

    return-void
.end method

.method public final show(Landroid/app/Activity;Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzgnb:Lcom/google/android/gms/internal/ads/zzarl;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzarl;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;)V

    return-void
.end method

.method public final show(Landroid/app/Activity;Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;Z)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/RewardedAd;->zzgnb:Lcom/google/android/gms/internal/ads/zzarl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzarl;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;Z)V

    return-void
.end method
