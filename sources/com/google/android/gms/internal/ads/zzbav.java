package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzbav implements Runnable {
    private final /* synthetic */ zzbaw zzedd;

    zzbav(zzbaw zzbawVar) {
        this.zzedd = zzbawVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.android.gms.ads.internal.zzq.zzlf().zzb(this.zzedd);
    }
}
