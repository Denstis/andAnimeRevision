package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class zzcqm implements zzcrr<Bundle> {
    private final String zzlt;

    public zzcqm(String str) {
        this.zzlt = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zzd(Set<String> set) {
        return set.contains("rewarded") || set.contains("interstitial") || set.contains("native") || set.contains("banner");
    }

    @Override // com.google.android.gms.internal.ads.zzcrr
    public final /* synthetic */ void zzr(Bundle bundle) {
        zzcwk.zza(bundle, "omid_v", this.zzlt);
    }
}
