package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzcty implements zzdwb<zzcru<? extends zzcrr<JSONObject>>> {
    private static final zzcty zzghr = new zzcty();

    public static zzcru<? extends zzcrr<JSONObject>> zzams() {
        return (zzcru) zzdwh.zza(zzctw.zzghq, "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return zzams();
    }
}
