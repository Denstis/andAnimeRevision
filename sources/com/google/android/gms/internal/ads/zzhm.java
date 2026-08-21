package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzhm implements Runnable {
    private final /* synthetic */ zzhj zzahd;
    private final /* synthetic */ zzil zzahj;

    zzhm(zzhj zzhjVar, zzil zzilVar) {
        this.zzahd = zzhjVar;
        this.zzahj = zzilVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzahj.zzfy();
        this.zzahd.zzahe.zzb(this.zzahj);
    }
}
