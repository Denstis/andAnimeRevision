package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzrj implements zzqa {
    private final /* synthetic */ zzrh zzbrg;

    zzrj(zzrh zzrhVar) {
        this.zzbrg = zzrhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzqa
    public final void zzo(boolean z) {
        if (z) {
            this.zzbrg.connect();
        } else {
            this.zzbrg.disconnect();
        }
    }
}
