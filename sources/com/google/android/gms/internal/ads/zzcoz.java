package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public final class zzcoz implements zzcrr<Bundle> {
    private final double zzdmx;
    private final boolean zzdmy;

    public zzcoz(double d2, boolean z) {
        this.zzdmx = d2;
        this.zzdmy = z;
    }

    @Override // com.google.android.gms.internal.ads.zzcrr
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle bundleZza = zzcwk.zza(bundle2, "device");
        bundle2.putBundle("device", bundleZza);
        Bundle bundleZza2 = zzcwk.zza(bundleZza, "battery");
        bundleZza.putBundle("battery", bundleZza2);
        bundleZza2.putBoolean("is_charging", this.zzdmy);
        bundleZza2.putDouble("battery_level", this.zzdmx);
    }
}
