package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbmk;

/* JADX INFO: loaded from: classes.dex */
public final class zzbmu implements zzdwb<zzbmk.zza> {
    private final zzbmk zzfgv;

    private zzbmu(zzbmk zzbmkVar) {
        this.zzfgv = zzbmkVar;
    }

    public static zzbmu zzl(zzbmk zzbmkVar) {
        return new zzbmu(zzbmkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return (zzbmk.zza) zzdwh.zza(this.zzfgv.zzaft(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
