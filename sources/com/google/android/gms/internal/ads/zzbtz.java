package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzbtz implements zzdwb<JSONObject> {
    private final zzbtx zzfkj;

    public zzbtz(zzbtx zzbtxVar) {
        this.zzfkj = zzbtxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return (JSONObject) zzdwh.zza(this.zzfkj.zzahh(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
