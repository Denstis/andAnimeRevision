package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzoz implements Runnable {
    private final /* synthetic */ zzov zzbjg;
    private final /* synthetic */ int zzbjh;
    private final /* synthetic */ long zzbji;

    zzoz(zzov zzovVar, int i2, long j2) {
        this.zzbjg = zzovVar;
        this.zzbjh = i2;
        this.zzbji = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzbjg.zzbjf.zzf(this.zzbjh, this.zzbji);
    }
}
