package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class zzbyy implements Runnable {
    private final zzbbw zzehv;

    private zzbyy(zzbbw zzbbwVar) {
        this.zzehv = zzbbwVar;
    }

    static Runnable zzh(zzbbw zzbbwVar) {
        return new zzbyy(zzbbwVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzehv.destroy();
    }
}
