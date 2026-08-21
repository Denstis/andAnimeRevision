package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class zzahx implements Runnable {
    private final zzaha zzdad;

    private zzahx(zzaha zzahaVar) {
        this.zzdad = zzahaVar;
    }

    static Runnable zzb(zzaha zzahaVar) {
        return new zzahx(zzahaVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzdad.destroy();
    }
}
