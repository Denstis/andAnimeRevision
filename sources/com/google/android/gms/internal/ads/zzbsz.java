package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzbsz implements zzbna {
    private final zzbni zzfiv;
    private final zzcvr zzfiw;

    public zzbsz(zzbni zzbniVar, zzcvr zzcvrVar) {
        this.zzfiv = zzbniVar;
        this.zzfiw = zzcvrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbna
    public final void onAdClosed() {
    }

    @Override // com.google.android.gms.internal.ads.zzbna
    public final void onAdLeftApplication() {
    }

    @Override // com.google.android.gms.internal.ads.zzbna
    public final void onAdOpened() {
        int i2 = this.zzfiw.zzgjp;
        if (i2 == 0 || i2 == 1) {
            this.zzfiv.onAdImpression();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbna
    public final void onRewardedVideoCompleted() {
    }

    @Override // com.google.android.gms.internal.ads.zzbna
    public final void onRewardedVideoStarted() {
    }

    @Override // com.google.android.gms.internal.ads.zzbna
    public final void zzb(zzapy zzapyVar, String str, String str2) {
    }
}
