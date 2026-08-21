package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public final class zzcpz implements zzcrr<Bundle> {
    private final zzcvp zzfbb;

    public zzcpz(zzcvp zzcvpVar) {
        this.zzfbb = zzcvpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcrr
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        zzcvp zzcvpVar = this.zzfbb;
        if (zzcvpVar != null) {
            bundle2.putBoolean("render_in_browser", zzcvpVar.zzamx());
            bundle2.putBoolean("disable_ml", this.zzfbb.zzamy());
        }
    }
}
