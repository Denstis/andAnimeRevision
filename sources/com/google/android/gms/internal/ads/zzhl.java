package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzhl implements Runnable {
    private final /* synthetic */ zzhj zzahd;
    private final /* synthetic */ String zzahg;
    private final /* synthetic */ long zzahh;
    private final /* synthetic */ long zzahi;

    zzhl(zzhj zzhjVar, String str, long j2, long j3) {
        this.zzahd = zzhjVar;
        this.zzahg = str;
        this.zzahh = j2;
        this.zzahi = j3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzahd.zzahe.zza(this.zzahg, this.zzahh, this.zzahi);
    }
}
