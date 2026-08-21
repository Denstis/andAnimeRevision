package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class zzbrv implements Runnable {
    private final zzbbw zzehv;

    private zzbrv(zzbbw zzbbwVar) {
        this.zzehv = zzbbwVar;
    }

    static Runnable zzh(zzbbw zzbbwVar) {
        return new zzbrv(zzbbwVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzehv.destroy();
    }
}
