package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzox implements Runnable {
    private final /* synthetic */ String zzahg;
    private final /* synthetic */ long zzahh;
    private final /* synthetic */ long zzahi;
    private final /* synthetic */ zzov zzbjg;

    zzox(zzov zzovVar, String str, long j2, long j3) {
        this.zzbjg = zzovVar;
        this.zzahg = str;
        this.zzahh = j2;
        this.zzahi = j3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzbjg.zzbjf.zzd(this.zzahg, this.zzahh, this.zzahi);
    }
}
