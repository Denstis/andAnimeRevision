package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzahi implements Runnable {
    private final /* synthetic */ zzahc zzczm;
    private final /* synthetic */ String zzczo;

    zzahi(zzahc zzahcVar, String str) {
        this.zzczm = zzahcVar;
        this.zzczo = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzczm.zzczi.loadUrl(this.zzczo);
    }
}
