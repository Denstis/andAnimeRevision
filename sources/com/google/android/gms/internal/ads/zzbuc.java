package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzbuc implements zzdwb<zzpe> {
    private final zzdwo<zzaxl> zzfcq;
    private final zzdwo<String> zzfcr;

    public zzbuc(zzdwo<zzaxl> zzdwoVar, zzdwo<String> zzdwoVar2) {
        this.zzfcq = zzdwoVar;
        this.zzfcr = zzdwoVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        zzaxl zzaxlVar = this.zzfcq.get();
        String str = this.zzfcr.get();
        com.google.android.gms.ads.internal.zzq.zzkj();
        return (zzpe) zzdwh.zza(new zzpe(zzaul.zzvm(), zzaxlVar, str, new JSONObject(), false, true), "Cannot return null from a non-@Nullable @Provides method");
    }
}
