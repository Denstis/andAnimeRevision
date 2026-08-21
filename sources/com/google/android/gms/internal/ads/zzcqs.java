package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public final class zzcqs implements zzcrr<Bundle>, zzcru<zzcrr<Bundle>> {
    private final ApplicationInfo applicationInfo;
    private final PackageInfo zzdiv;

    zzcqs(ApplicationInfo applicationInfo, PackageInfo packageInfo) {
        this.applicationInfo = applicationInfo;
        this.zzdiv = packageInfo;
    }

    @Override // com.google.android.gms.internal.ads.zzcru
    public final zzddi<zzcrr<Bundle>> zzalv() {
        return zzdcy.zzah(this);
    }

    @Override // com.google.android.gms.internal.ads.zzcrr
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        String str = this.applicationInfo.packageName;
        PackageInfo packageInfo = this.zzdiv;
        Integer numValueOf = packageInfo == null ? null : Integer.valueOf(packageInfo.versionCode);
        bundle2.putString("pn", str);
        if (numValueOf != null) {
            bundle2.putInt("vc", numValueOf.intValue());
        }
    }
}
