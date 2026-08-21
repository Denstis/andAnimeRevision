package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public final class zzcsb implements zzcrr<Bundle> {
    private final String zzdmh;
    private final int zzdms;
    private final int zzdmt;
    private final int zzdmu;
    private final boolean zzdmz;
    private final int zzdna;

    public zzcsb(String str, int i2, int i3, int i4, boolean z, int i5) {
        this.zzdmh = str;
        this.zzdms = i2;
        this.zzdmt = i3;
        this.zzdmu = i4;
        this.zzdmz = z;
        this.zzdna = i5;
    }

    @Override // com.google.android.gms.internal.ads.zzcrr
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        zzcwk.zza(bundle2, "carrier", this.zzdmh, !TextUtils.isEmpty(r0));
        zzcwk.zza(bundle2, "cnt", Integer.valueOf(this.zzdms), this.zzdms != -2);
        bundle2.putInt("gnt", this.zzdmt);
        bundle2.putInt("pt", this.zzdmu);
        Bundle bundleZza = zzcwk.zza(bundle2, "device");
        bundle2.putBundle("device", bundleZza);
        Bundle bundleZza2 = zzcwk.zza(bundleZza, "network");
        bundleZza.putBundle("network", bundleZza2);
        bundleZza2.putInt("active_network_state", this.zzdna);
        bundleZza2.putBoolean("active_network_metered", this.zzdmz);
    }
}
