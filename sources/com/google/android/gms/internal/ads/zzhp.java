package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzhp implements Runnable {
    private final /* synthetic */ zzhj zzahd;
    private final /* synthetic */ int zzajp;

    zzhp(zzhj zzhjVar, int i2) {
        this.zzahd = zzhjVar;
        this.zzajp = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzahd.zzahe.zzq(this.zzajp);
    }
}
