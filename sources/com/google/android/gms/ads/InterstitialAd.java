package com.google.android.gms.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zztp;
import com.google.android.gms.internal.ads.zzxd;

/* JADX INFO: loaded from: classes.dex */
public final class InterstitialAd {
    private final zzxd zzabg;

    public InterstitialAd(Context context) {
        this.zzabg = new zzxd(context);
        Preconditions.checkNotNull(context, "Context cannot be null");
    }

    public final AdListener getAdListener() {
        return this.zzabg.getAdListener();
    }

    public final Bundle getAdMetadata() {
        return this.zzabg.getAdMetadata();
    }

    public final String getAdUnitId() {
        return this.zzabg.getAdUnitId();
    }

    public final String getMediationAdapterClassName() {
        return this.zzabg.getMediationAdapterClassName();
    }

    public final boolean isLoaded() {
        return this.zzabg.isLoaded();
    }

    public final boolean isLoading() {
        return this.zzabg.isLoading();
    }

    public final void loadAd(AdRequest adRequest) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void setAdListener(AdListener adListener) {
        this.zzabg.setAdListener(adListener);
        if (adListener != 0 && (adListener instanceof zztp)) {
            this.zzabg.zza((zztp) adListener);
        } else if (adListener == 0) {
            this.zzabg.zza((zztp) null);
        }
    }

    public final void setAdMetadataListener(AdMetadataListener adMetadataListener) {
        this.zzabg.setAdMetadataListener(adMetadataListener);
    }

    public final void setAdUnitId(String str) {
        this.zzabg.setAdUnitId(str);
    }

    public final void setImmersiveMode(boolean z) {
        this.zzabg.setImmersiveMode(z);
    }

    public final void setRewardedVideoAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        this.zzabg.setRewardedVideoAdListener(rewardedVideoAdListener);
    }

    public final void show() {
        this.zzabg.show();
    }

    public final void zzc(boolean z) {
        this.zzabg.zzc(true);
    }
}
