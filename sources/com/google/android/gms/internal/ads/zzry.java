package com.google.android.gms.internal.ads;

import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
final class zzry extends zzaxv<InputStream> {
    private final /* synthetic */ zzrv zzbrs;

    zzry(zzrv zzrvVar) {
        this.zzbrs = zzrvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaxv, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        this.zzbrs.disconnect();
        return super.cancel(z);
    }
}
