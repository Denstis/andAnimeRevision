package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzbyn implements zzdcz<zzbbw> {
    private final /* synthetic */ String zzfpv;
    private final /* synthetic */ Map zzfpw;

    zzbyn(zzbyh zzbyhVar, String str, Map map) {
        this.zzfpv = str;
        this.zzfpw = map;
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final /* synthetic */ void onSuccess(zzbbw zzbbwVar) {
        zzbbwVar.zza(this.zzfpv, this.zzfpw);
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final void zzb(Throwable th) {
    }
}
