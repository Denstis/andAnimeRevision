package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzbzx implements zzani {
    private final /* synthetic */ zzbzn zzfqu;

    zzbzx(zzbzn zzbznVar) {
        this.zzfqu = zzbznVar;
    }

    @Override // com.google.android.gms.internal.ads.zzani
    public final void zza(int i2, int i3, int i4, int i5) {
        this.zzfqu.zzffv.onAdOpened();
    }

    @Override // com.google.android.gms.internal.ads.zzani
    public final void zzsl() {
        this.zzfqu.zzffv.onAdClosed();
    }

    @Override // com.google.android.gms.internal.ads.zzani
    public final void zzsm() {
        this.zzfqu.zzfqr.zzafe();
    }
}
