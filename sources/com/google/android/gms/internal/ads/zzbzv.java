package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class zzbzv implements zzbri {
    private final zzbbw zzehv;

    private zzbzv(zzbbw zzbbwVar) {
        this.zzehv = zzbbwVar;
    }

    static zzbri zzn(zzbbw zzbbwVar) {
        return new zzbzv(zzbbwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbri
    public final void zzagr() {
        this.zzehv.destroy();
    }
}
