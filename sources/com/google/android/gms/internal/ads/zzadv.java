package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.UnifiedNativeAd;

/* JADX INFO: loaded from: classes.dex */
public final class zzadv extends zzacy {
    private final UnifiedNativeAd.OnUnifiedNativeAdLoadedListener zzcxb;

    public zzadv(UnifiedNativeAd.OnUnifiedNativeAdLoadedListener onUnifiedNativeAdLoadedListener) {
        this.zzcxb = onUnifiedNativeAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzacz
    public final void zza(zzadg zzadgVar) {
        this.zzcxb.onUnifiedNativeAdLoaded(new zzadl(zzadgVar));
    }
}
