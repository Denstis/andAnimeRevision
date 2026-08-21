package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public final class zzcqz implements zzcrr<Bundle> {
    private final String zzgfr;

    public zzcqz(String str) {
        this.zzgfr = str;
    }

    @Override // com.google.android.gms.internal.ads.zzcrr
    public final /* synthetic */ void zzr(Bundle bundle) {
        bundle.putString("rtb", this.zzgfr);
    }
}
