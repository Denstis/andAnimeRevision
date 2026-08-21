package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.UnifiedNativeAd;

/* JADX INFO: loaded from: classes.dex */
public final class zzadu extends zzade {
    private final UnifiedNativeAd.UnconfirmedClickListener zzcxa;

    public zzadu(UnifiedNativeAd.UnconfirmedClickListener unconfirmedClickListener) {
        this.zzcxa = unconfirmedClickListener;
    }

    @Override // com.google.android.gms.internal.ads.zzadf
    public final void onUnconfirmedClickCancelled() {
        this.zzcxa.onUnconfirmedClickCancelled();
    }

    @Override // com.google.android.gms.internal.ads.zzadf
    public final void onUnconfirmedClickReceived(String str) {
        this.zzcxa.onUnconfirmedClickReceived(str);
    }
}
