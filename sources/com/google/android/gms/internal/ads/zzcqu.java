package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public final class zzcqu implements zzcrr<Bundle> {
    private final Bundle zzfgs;

    public zzcqu(Bundle bundle) {
        this.zzfgs = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzcrr
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle bundle3 = this.zzfgs;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
    }
}
