package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzbtw implements zzdwb<JSONObject> {
    private final zzdwo<zzbuv> zzete;
    private final zzbtx zzfkj;

    public zzbtw(zzbtx zzbtxVar, zzdwo<zzbuv> zzdwoVar) {
        this.zzfkj = zzbtxVar;
        this.zzete = zzdwoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return this.zzete.get().zzaia();
    }
}
