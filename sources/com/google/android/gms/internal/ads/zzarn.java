package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.rewarded.RewardedAdCallback;

/* JADX INFO: loaded from: classes.dex */
public final class zzarn extends zzare {
    private final RewardedAdCallback zzdod;

    public zzarn(RewardedAdCallback rewardedAdCallback) {
        this.zzdod = rewardedAdCallback;
    }

    @Override // com.google.android.gms.internal.ads.zzarb
    public final void onRewardedAdClosed() {
        RewardedAdCallback rewardedAdCallback = this.zzdod;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.onRewardedAdClosed();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarb
    public final void onRewardedAdFailedToShow(int i2) {
        RewardedAdCallback rewardedAdCallback = this.zzdod;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.onRewardedAdFailedToShow(i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarb
    public final void onRewardedAdOpened() {
        RewardedAdCallback rewardedAdCallback = this.zzdod;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.onRewardedAdOpened();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarb
    public final void zza(zzaqv zzaqvVar) {
        RewardedAdCallback rewardedAdCallback = this.zzdod;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.onUserEarnedReward(new zzaro(zzaqvVar));
        }
    }
}
