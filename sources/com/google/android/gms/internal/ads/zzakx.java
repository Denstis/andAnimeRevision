package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public final class zzakx extends zzakc {
    private final zzaqp zzddx;
    private final Adapter zzdeg;

    zzakx(Adapter adapter, zzaqp zzaqpVar) {
        this.zzdeg = adapter;
        this.zzddx = zzaqpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final void onAdClicked() {
        zzaqp zzaqpVar = this.zzddx;
        if (zzaqpVar != null) {
            zzaqpVar.zzan(ObjectWrapper.wrap(this.zzdeg));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final void onAdClosed() {
        zzaqp zzaqpVar = this.zzddx;
        if (zzaqpVar != null) {
            zzaqpVar.zzam(ObjectWrapper.wrap(this.zzdeg));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final void onAdFailedToLoad(int i2) {
        zzaqp zzaqpVar = this.zzddx;
        if (zzaqpVar != null) {
            zzaqpVar.zze(ObjectWrapper.wrap(this.zzdeg), i2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final void onAdImpression() {
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final void onAdLeftApplication() {
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final void onAdLoaded() {
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final void onAdOpened() {
        zzaqp zzaqpVar = this.zzddx;
        if (zzaqpVar != null) {
            zzaqpVar.zzak(ObjectWrapper.wrap(this.zzdeg));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final void onAppEvent(String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final void onVideoEnd() {
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final void onVideoPause() {
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final void onVideoPlay() {
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final void zza(zzace zzaceVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final void zza(zzake zzakeVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final void zza(zzaqv zzaqvVar) {
        zzaqp zzaqpVar = this.zzddx;
        if (zzaqpVar != null) {
            zzaqpVar.zza(ObjectWrapper.wrap(this.zzdeg), new zzaqt(zzaqvVar.getType(), zzaqvVar.getAmount()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final void zzb(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final void zzb(zzaqt zzaqtVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final void zzcl(int i2) {
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final void zzde(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final void zzrw() {
        zzaqp zzaqpVar = this.zzddx;
        if (zzaqpVar != null) {
            zzaqpVar.zzal(ObjectWrapper.wrap(this.zzdeg));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakd
    public final void zzrx() {
        zzaqp zzaqpVar = this.zzddx;
        if (zzaqpVar != null) {
            zzaqpVar.zzap(ObjectWrapper.wrap(this.zzdeg));
        }
    }
}
