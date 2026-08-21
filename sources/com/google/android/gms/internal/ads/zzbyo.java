package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class zzbyo implements com.google.android.gms.ads.internal.overlay.zzt {
    private final zzbnr zzfpx;

    private zzbyo(zzbnr zzbnrVar) {
        this.zzfpx = zzbnrVar;
    }

    static com.google.android.gms.ads.internal.overlay.zzt zza(zzbnr zzbnrVar) {
        return new zzbyo(zzbnrVar);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzt
    public final void zzsy() {
        this.zzfpx.onAdLeftApplication();
    }
}
