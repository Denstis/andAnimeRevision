package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class zzcgp implements zzbkl {
    private final zzbbw zzehv;

    private zzcgp(zzbbw zzbbwVar) {
        this.zzehv = zzbbwVar;
    }

    static zzbkl zzp(zzbbw zzbbwVar) {
        return new zzcgp(zzbbwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbkl
    public final zzwr getVideoController() {
        return this.zzehv.zzxl();
    }
}
