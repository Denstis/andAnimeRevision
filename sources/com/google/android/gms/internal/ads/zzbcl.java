package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzbcl implements Runnable {
    private final /* synthetic */ zzbck zzehj;

    zzbcl(zzbck zzbckVar) {
        this.zzehj = zzbckVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        super/*android.webkit.WebView*/.destroy();
    }
}
