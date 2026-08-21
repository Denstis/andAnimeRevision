package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.appopen.AppOpenAd;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class zzqu extends zzra {
    private final WeakReference<AppOpenAd.AppOpenAdLoadCallback> zzbqv;

    public zzqu(AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback) {
        this.zzbqv = new WeakReference<>(appOpenAdLoadCallback);
    }

    @Override // com.google.android.gms.internal.ads.zzqx
    public final void onAppOpenAdFailedToLoad(int i2) {
        AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback = this.zzbqv.get();
        if (appOpenAdLoadCallback != null) {
            appOpenAdLoadCallback.onAppOpenAdFailedToLoad(i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqx
    public final void zza(zzqw zzqwVar) {
        AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback = this.zzbqv.get();
        if (appOpenAdLoadCallback != null) {
            appOpenAdLoadCallback.onAppOpenAdLoaded(new zzrd(zzqwVar));
        }
    }
}
