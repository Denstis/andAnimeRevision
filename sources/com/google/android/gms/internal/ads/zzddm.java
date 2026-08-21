package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzddm implements Runnable {
    private final /* synthetic */ Runnable zzgrt;
    private final /* synthetic */ zzddn zzgru;

    zzddm(zzddn zzddnVar, Runnable runnable) {
        this.zzgru = zzddnVar;
        this.zzgrt = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzgru.zzgrv = false;
        this.zzgrt.run();
    }
}
