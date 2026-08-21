package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzhk implements Runnable {
    private final /* synthetic */ zzhj zzahd;
    private final /* synthetic */ zzgo zzahf;

    zzhk(zzhj zzhjVar, zzgo zzgoVar) {
        this.zzahd = zzhjVar;
        this.zzahf = zzgoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzahd.zzahe.zzb(this.zzahf);
    }
}
