package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzbhy implements zzdwb<JSONObject> {
    private final zzdwo<zzcvr> zzfcp;

    private zzbhy(zzdwo<zzcvr> zzdwoVar) {
        this.zzfcp = zzdwoVar;
    }

    public static zzbhy zzc(zzdwo<zzcvr> zzdwoVar) {
        return new zzbhy(zzdwoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return zzbhz.zza(this.zzfcp.get());
    }
}
