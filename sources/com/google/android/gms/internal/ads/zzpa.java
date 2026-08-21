package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzpa implements Runnable {
    private final /* synthetic */ zzgo zzahf;
    private final /* synthetic */ zzov zzbjg;

    zzpa(zzov zzovVar, zzgo zzgoVar) {
        this.zzbjg = zzovVar;
        this.zzahf = zzgoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzbjg.zzbjf.zzk(this.zzahf);
    }
}
