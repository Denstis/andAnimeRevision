package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzayx implements Runnable {
    private final /* synthetic */ zzayw zzdyr;

    zzayx(zzayw zzaywVar) {
        this.zzdyr = zzaywVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzdyr.zzd("surfaceCreated", new String[0]);
    }
}
