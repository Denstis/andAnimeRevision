package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class zzaht implements Runnable {
    private final zzaha zzdad;

    private zzaht(zzaha zzahaVar) {
        this.zzdad = zzahaVar;
    }

    static Runnable zzb(zzaha zzahaVar) {
        return new zzaht(zzahaVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzdad.destroy();
    }
}
