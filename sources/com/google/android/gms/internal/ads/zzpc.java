package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzpc implements Runnable {
    private final /* synthetic */ zzov zzbjg;
    private final /* synthetic */ int zzbjk;
    private final /* synthetic */ int zzbjl;
    private final /* synthetic */ int zzbjm;
    private final /* synthetic */ float zzbjn;

    zzpc(zzov zzovVar, int i2, int i3, int i4, float f2) {
        this.zzbjg = zzovVar;
        this.zzbjk = i2;
        this.zzbjl = i3;
        this.zzbjm = i4;
        this.zzbjn = f2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzbjg.zzbjf.zzb(this.zzbjk, this.zzbjl, this.zzbjm, this.zzbjn);
    }
}
