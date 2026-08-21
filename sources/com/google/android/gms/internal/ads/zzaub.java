package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzaub implements Runnable {
    private final /* synthetic */ zzauc zzdrx;

    zzaub(zzauc zzaucVar) {
        this.zzdrx = zzaucVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzdrx.thread = Thread.currentThread();
        this.zzdrx.zzsx();
    }
}
