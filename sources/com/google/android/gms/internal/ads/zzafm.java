package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzafm implements Runnable {
    private final /* synthetic */ zzafl zzcym;

    zzafm(zzafl zzaflVar) {
        this.zzcym = zzaflVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzcym.disconnect();
    }
}
