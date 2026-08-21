package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzhi implements Runnable {
    private final /* synthetic */ zzil zzahc;
    private final /* synthetic */ zzhj zzahd;

    zzhi(zzhj zzhjVar, zzil zzilVar) {
        this.zzahd = zzhjVar;
        this.zzahc = zzilVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzahd.zzahe.zza(this.zzahc);
    }
}
