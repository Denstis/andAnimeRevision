package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeAppInstallAd;

/* JADX INFO: loaded from: classes.dex */
public final class zzadp extends zzacl {
    private final NativeAppInstallAd.OnAppInstallAdLoadedListener zzcwt;

    public zzadp(NativeAppInstallAd.OnAppInstallAdLoadedListener onAppInstallAdLoadedListener) {
        this.zzcwt = onAppInstallAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzaci
    public final void zza(zzabw zzabwVar) {
        this.zzcwt.onAppInstallAdLoaded(new zzacb(zzabwVar));
    }
}
