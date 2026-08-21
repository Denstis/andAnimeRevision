package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzcvo implements zzcms<zzbyz> {
    private final /* synthetic */ zzcvl zzgiw;

    zzcvo(zzcvl zzcvlVar) {
        this.zzgiw = zzcvlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcms
    public final /* synthetic */ void onSuccess(zzbyz zzbyzVar) {
        zzbyz zzbyzVar2 = zzbyzVar;
        synchronized (this.zzgiw) {
            this.zzgiw.zzgil = zzbyzVar2;
            this.zzgiw.zzgil.zzafa();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcms
    public final void zzalq() {
        synchronized (this.zzgiw) {
            this.zzgiw.zzgil = null;
        }
    }
}
