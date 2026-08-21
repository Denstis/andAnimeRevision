package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public final class zzcpn implements zzcrr<Bundle> {
    private final Bundle zzgff;

    public zzcpn(Bundle bundle) {
        this.zzgff = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzcrr
    public final /* synthetic */ void zzr(Bundle bundle) {
        bundle.putBundle("content_info", this.zzgff);
    }
}
