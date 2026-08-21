###### Class com.google.android.gms.internal.ads.zzarn (com.google.android.gms.internal.ads.zzarn)
.class public final Lcom/google/android/gms/internal/ads/zzarn;
.super Lcom/google/android/gms/internal/ads/zzare;
.source ""


# instance fields
.field private final zzdod:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzare;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzarn;->zzdod:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    return-void
.end method


# virtual methods
.method public final onRewardedAdClosed()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarn;->zzdod:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;->onRewardedAdClosed()V

    :cond_7
    return-void
.end method

.method public final onRewardedAdFailedToShow(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarn;->zzdod:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;->onRewardedAdFailedToShow(I)V

    :cond_7
    return-void
.end method

.method public final onRewardedAdOpened()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarn;->zzdod:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;->onRewardedAdOpened()V

    :cond_7
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaqv;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarn;->zzdod:Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;

    if-eqz v0, :cond_c

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaro;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzaro;-><init>(Lcom/google/android/gms/internal/ads/zzaqv;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;->onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V

    :cond_c
    return-void
.end method
