package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class zzcgr implements Runnable {
    private final zzbbw zzehv;

    private zzcgr(zzbbw zzbbwVar) {
        this.zzehv = zzbbwVar;
    }

    static Runnable zzh(zzbbw zzbbwVar) {
        return new zzcgr(zzbbwVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzehv.zzaac();
    }
}
