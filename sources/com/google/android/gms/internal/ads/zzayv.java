package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class zzayv implements Runnable {
    private final zzayu zzdxz;

    private zzayv(zzayu zzayuVar) {
        this.zzdxz = zzayuVar;
    }

    static Runnable zza(zzayu zzayuVar) {
        return new zzayv(zzayuVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzdxz.stop();
    }
}
