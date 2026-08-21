package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzaza implements Runnable {
    private final /* synthetic */ zzayw zzdyr;

    zzaza(zzayw zzaywVar) {
        this.zzdyr = zzaywVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzdyr.zzd("surfaceDestroyed", new String[0]);
    }
}
