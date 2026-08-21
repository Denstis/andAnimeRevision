package com.google.android.gms.internal.ads;

import android.webkit.JavascriptInterface;

/* JADX INFO: loaded from: classes.dex */
final class zzagt {
    private final zzagw zzczb;

    private zzagt(zzagw zzagwVar) {
        this.zzczb = zzagwVar;
    }

    @JavascriptInterface
    public final void notify(String str) {
        this.zzczb.zzcx(str);
    }
}
