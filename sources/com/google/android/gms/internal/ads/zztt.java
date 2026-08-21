package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdListener;

/* JADX INFO: loaded from: classes.dex */
public final class zztt extends zzvb {
    private final AdListener zzcbv;

    public zztt(AdListener adListener) {
        this.zzcbv = adListener;
    }

    public final AdListener getAdListener() {
        return this.zzcbv;
    }

    @Override // com.google.android.gms.internal.ads.zzuy
    public final void onAdClicked() {
        this.zzcbv.onAdClicked();
    }

    @Override // com.google.android.gms.internal.ads.zzuy
    public final void onAdClosed() {
        this.zzcbv.onAdClosed();
    }

    @Override // com.google.android.gms.internal.ads.zzuy
    public final void onAdFailedToLoad(int i2) {
        this.zzcbv.onAdFailedToLoad(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzuy
    public final void onAdImpression() {
        this.zzcbv.onAdImpression();
    }

    @Override // com.google.android.gms.internal.ads.zzuy
    public final void onAdLeftApplication() {
        this.zzcbv.onAdLeftApplication();
    }

    @Override // com.google.android.gms.internal.ads.zzuy
    public final void onAdLoaded() {
    }

    @Override // com.google.android.gms.internal.ads.zzuy
    public final void onAdOpened() {
        this.zzcbv.onAdOpened();
    }
}
