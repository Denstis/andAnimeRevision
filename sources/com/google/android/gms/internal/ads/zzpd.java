package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzpd implements Runnable {
    private final /* synthetic */ zzil zzahj;
    private final /* synthetic */ zzov zzbjg;

    zzpd(zzov zzovVar, zzil zzilVar) {
        this.zzbjg = zzovVar;
        this.zzahj = zzilVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzahj.zzfy();
        this.zzbjg.zzbjf.zzf(this.zzahj);
    }
}
