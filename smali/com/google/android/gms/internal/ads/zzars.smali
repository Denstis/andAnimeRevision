###### Class com.google.android.gms.internal.ads.zzars (com.google.android.gms.internal.ads.zzars)
.class public final Lcom/google/android/gms/internal/ads/zzars;
.super Lcom/google/android/gms/internal/ads/zzarh;
.source ""


# instance fields
.field private final zzdof:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzarh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzars;->zzdof:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    return-void
.end method


# virtual methods
.method public final onRewardedAdFailedToLoad(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzars;->zzdof:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;->onRewardedAdFailedToLoad(I)V

    :cond_7
    return-void
.end method

.method public final onRewardedAdLoaded()V
    .registers 2

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    return-void
.end method
