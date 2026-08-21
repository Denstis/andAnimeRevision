package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzcvi implements zzcms<zzbyz> {
    private final /* synthetic */ zzcvf zzgir;

    zzcvi(zzcvf zzcvfVar) {
        this.zzgir = zzcvfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcms
    public final /* synthetic */ void onSuccess(zzbyz zzbyzVar) {
        zzbyz zzbyzVar2 = zzbyzVar;
        synchronized (this.zzgir) {
            this.zzgir.zzgil = zzbyzVar2;
            this.zzgir.zzgil.zzafa();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcms
    public final void zzalq() {
        synchronized (this.zzgir) {
            this.zzgir.zzgil = null;
        }
    }
}
