package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzoy implements Runnable {
    private final /* synthetic */ zzil zzahc;
    private final /* synthetic */ zzov zzbjg;

    zzoy(zzov zzovVar, zzil zzilVar) {
        this.zzbjg = zzovVar;
        this.zzahc = zzilVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzbjg.zzbjf.zze(this.zzahc);
    }
}
