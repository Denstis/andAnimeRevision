package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;

/* JADX INFO: loaded from: classes.dex */
public final class zzuc extends zzvs {
    private final AppEventListener zzbki;

    public zzuc(AppEventListener appEventListener) {
        this.zzbki = appEventListener;
    }

    public final AppEventListener getAppEventListener() {
        return this.zzbki;
    }

    @Override // com.google.android.gms.internal.ads.zzvt
    public final void onAppEvent(String str, String str2) {
        this.zzbki.onAppEvent(str, str2);
    }
}
