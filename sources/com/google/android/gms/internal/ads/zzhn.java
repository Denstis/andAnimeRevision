package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzhn implements Runnable {
    private final /* synthetic */ zzhj zzahd;
    private final /* synthetic */ int zzahk;
    private final /* synthetic */ long zzahl;
    private final /* synthetic */ long zzahm;

    zzhn(zzhj zzhjVar, int i2, long j2, long j3) {
        this.zzahd = zzhjVar;
        this.zzahk = i2;
        this.zzahl = j2;
        this.zzahm = j3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzahd.zzahe.zza(this.zzahk, this.zzahl, this.zzahm);
    }
}
