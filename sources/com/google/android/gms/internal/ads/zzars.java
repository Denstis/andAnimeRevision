package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;

/* JADX INFO: loaded from: classes.dex */
public final class zzars extends zzarh {
    private final RewardedAdLoadCallback zzdof;

    public zzars(RewardedAdLoadCallback rewardedAdLoadCallback) {
        this.zzdof = rewardedAdLoadCallback;
    }

    @Override // com.google.android.gms.internal.ads.zzari
    public final void onRewardedAdFailedToLoad(int i2) {
        RewardedAdLoadCallback rewardedAdLoadCallback = this.zzdof;
        if (rewardedAdLoadCallback != null) {
            rewardedAdLoadCallback.onRewardedAdFailedToLoad(i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzari
    public final void onRewardedAdLoaded() {
    }
}
