package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzbch implements Runnable {
    private final /* synthetic */ zzbci zzefv;

    zzbch(zzbci zzbciVar) {
        this.zzefv = zzbciVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzefv.zzefw.destroy();
    }
}
