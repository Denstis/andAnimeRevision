package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class zzbkf implements zzbog, zzpj {
    private final zzcvr zzfbi;
    private final zzbni zzfey;
    private final zzbok zzfez;
    private final AtomicBoolean zzffa = new AtomicBoolean();
    private final AtomicBoolean zzffb = new AtomicBoolean();

    public zzbkf(zzcvr zzcvrVar, zzbni zzbniVar, zzbok zzbokVar) {
        this.zzfbi = zzcvrVar;
        this.zzfey = zzbniVar;
        this.zzfez = zzbokVar;
    }

    private final void zzafk() {
        if (this.zzffa.compareAndSet(false, true)) {
            this.zzfey.onAdImpression();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbog
    public final synchronized void onAdLoaded() {
    }

    @Override // com.google.android.gms.internal.ads.zzpj
    public final void zza(zzpk zzpkVar) {
        if (this.zzfbi.zzgiz == 1 && zzpkVar.zzbnp) {
            zzafk();
        }
        if (zzpkVar.zzbnp && this.zzffb.compareAndSet(false, true)) {
            this.zzfez.zzafz();
        }
    }
}
