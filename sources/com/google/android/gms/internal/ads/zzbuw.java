package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzbuw implements zzdwb<zzbuu> {
    private final zzdwo<JSONObject> zzetu;
    private final zzdwo<zzcvr> zzfcp;

    public zzbuw(zzdwo<zzcvr> zzdwoVar, zzdwo<JSONObject> zzdwoVar2) {
        this.zzfcp = zzdwoVar;
        this.zzetu = zzdwoVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return new zzbuu(this.zzfcp.get(), this.zzetu.get());
    }
}
