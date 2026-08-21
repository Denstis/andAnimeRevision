###### Class com.google.android.gms.ads.rewarded.RewardedAdCallback (com.google.android.gms.ads.rewarded.RewardedAdCallback)
.class public abstract Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ERROR_CODE_AD_REUSED:I = 0x1

.field public static final ERROR_CODE_APP_NOT_FOREGROUND:I = 0x3

.field public static final ERROR_CODE_INTERNAL_ERROR:I = 0x0

.field public static final ERROR_CODE_NOT_READY:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRewardedAdClosed()V
    .registers 1

    return-void
.end method

.method public onRewardedAdFailedToShow(I)V
    .registers 2

    return-void
.end method

.method public onRewardedAdOpened()V
    .registers 1

    return-void
.end method

.method public abstract onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
.end method
