package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.RewardedVideoAdListener;

/* JADX INFO: loaded from: classes.dex */
public final class zzaql extends zzaqh {
    private RewardedVideoAdListener zzcex;

    public zzaql(RewardedVideoAdListener rewardedVideoAdListener) {
        this.zzcex = rewardedVideoAdListener;
    }

    public final RewardedVideoAdListener getRewardedVideoAdListener() {
        return this.zzcex;
    }

    @Override // com.google.android.gms.internal.ads.zzaqi
    public final void onRewardedVideoAdClosed() {
        RewardedVideoAdListener rewardedVideoAdListener = this.zzcex;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewardedVideoAdClosed();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaqi
    public final void onRewardedVideoAdFailedToLoad(int i2) {
        RewardedVideoAdListener rewardedVideoAdListener = this.zzcex;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewardedVideoAdFailedToLoad(i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaqi
    public final void onRewardedVideoAdLeftApplication() {
        RewardedVideoAdListener rewardedVideoAdListener = this.zzcex;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewardedVideoAdLeftApplication();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaqi
    public final void onRewardedVideoAdLoaded() {
    }

    @Override // com.google.android.gms.internal.ads.zzaqi
    public final void onRewardedVideoAdOpened() {
        RewardedVideoAdListener rewardedVideoAdListener = this.zzcex;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewardedVideoAdOpened();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaqi
    public final void onRewardedVideoCompleted() {
        RewardedVideoAdListener rewardedVideoAdListener = this.zzcex;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewardedVideoCompleted();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaqi
    public final void onRewardedVideoStarted() {
        RewardedVideoAdListener rewardedVideoAdListener = this.zzcex;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewardedVideoStarted();
        }
    }

    public final void setRewardedVideoAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        this.zzcex = rewardedVideoAdListener;
    }

    @Override // com.google.android.gms.internal.ads.zzaqi
    public final void zza(zzapy zzapyVar) {
        RewardedVideoAdListener rewardedVideoAdListener = this.zzcex;
        if (rewardedVideoAdListener != null) {
            rewardedVideoAdListener.onRewarded(new zzaqj(zzapyVar));
        }
    }
}
