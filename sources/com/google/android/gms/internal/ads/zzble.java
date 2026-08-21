package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class zzble implements com.google.android.gms.ads.internal.overlay.zzo {
    private final zzbnr zzffv;
    private AtomicBoolean zzffw = new AtomicBoolean(false);

    public zzble(zzbnr zzbnrVar) {
        this.zzffv = zzbnrVar;
    }

    public final boolean isClosed() {
        return this.zzffw.get();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void onResume() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzsi() {
        this.zzffw.set(true);
        this.zzffv.onAdClosed();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzsj() {
        this.zzffv.onAdOpened();
    }
}
