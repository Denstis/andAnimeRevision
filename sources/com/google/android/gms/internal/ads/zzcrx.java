package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class zzcrx implements zzcrr<Bundle> {
    private final boolean zzdmf;
    private final boolean zzdmg;
    private final String zzdmi;
    private final boolean zzdmj;
    private final boolean zzdmk;
    private final boolean zzdml;
    private final String zzdmo;
    private final String zzdmp;
    private final String zzdmq;
    private final boolean zzdnd;
    private final ArrayList<String> zzggk;
    private final String zzggl;
    private final String zzggm;
    private final long zzggn;

    public zzcrx(boolean z, boolean z2, String str, boolean z3, boolean z4, boolean z5, String str2, ArrayList<String> arrayList, String str3, String str4, String str5, boolean z6, String str6, long j2) {
        this.zzdmf = z;
        this.zzdmg = z2;
        this.zzdmi = str;
        this.zzdmj = z3;
        this.zzdmk = z4;
        this.zzdml = z5;
        this.zzdmo = str2;
        this.zzggk = arrayList;
        this.zzdmp = str3;
        this.zzdmq = str4;
        this.zzggl = str5;
        this.zzdnd = z6;
        this.zzggm = str6;
        this.zzggn = j2;
    }

    @Override // com.google.android.gms.internal.ads.zzcrr
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putBoolean("cog", this.zzdmf);
        bundle2.putBoolean("coh", this.zzdmg);
        bundle2.putString("gl", this.zzdmi);
        bundle2.putBoolean("simulator", this.zzdmj);
        bundle2.putBoolean("is_latchsky", this.zzdmk);
        bundle2.putBoolean("is_sidewinder", this.zzdml);
        bundle2.putString("hl", this.zzdmo);
        if (!this.zzggk.isEmpty()) {
            bundle2.putStringArrayList("hl_list", this.zzggk);
        }
        bundle2.putString("mv", this.zzdmp);
        bundle2.putString("submodel", this.zzggm);
        Bundle bundleZza = zzcwk.zza(bundle2, "device");
        bundle2.putBundle("device", bundleZza);
        bundleZza.putString("build", this.zzggl);
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcnt)).booleanValue()) {
            bundleZza.putLong("remaining_data_partition_space", this.zzggn);
        }
        Bundle bundleZza2 = zzcwk.zza(bundleZza, "browser");
        bundleZza.putBundle("browser", bundleZza2);
        bundleZza2.putBoolean("is_browser_custom_tabs_capable", this.zzdnd);
        if (TextUtils.isEmpty(this.zzdmq)) {
            return;
        }
        Bundle bundleZza3 = zzcwk.zza(bundleZza, "play_store");
        bundleZza.putBundle("play_store", bundleZza3);
        bundleZza3.putString("package_version", this.zzdmq);
    }
}
