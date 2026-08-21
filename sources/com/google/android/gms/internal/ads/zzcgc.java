package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzcgc {
    private zzbni zzfiv;
    private zzcvr zzfiw;

    public zzcgc(zzcvr zzcvrVar) {
        this.zzfiw = zzcvrVar;
    }

    public final void zza(zzbni zzbniVar) {
        this.zzfiv = zzbniVar;
    }

    public final void zzaks() {
        zzbni zzbniVar = this.zzfiv;
        if (zzbniVar != null && this.zzfiw.zzgjp == 2) {
            zzbniVar.onAdImpression();
        }
    }
}
