package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeContentAd;

/* JADX INFO: loaded from: classes.dex */
public final class zzado extends zzacm {
    private final NativeContentAd.OnContentAdLoadedListener zzcws;

    public zzado(NativeContentAd.OnContentAdLoadedListener onContentAdLoadedListener) {
        this.zzcws = onContentAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final void zza(zzaca zzacaVar) {
        this.zzcws.onContentAdLoaded(new zzacf(zzacaVar));
    }
}
