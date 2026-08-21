package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class zzbif implements zzdwb<Set<zzbqs<zzpj>>> {
    private final zzbid zzfdc;
    private final zzdwo<zzbkf> zzfdd;

    public zzbif(zzbid zzbidVar, zzdwo<zzbkf> zzdwoVar) {
        this.zzfdc = zzbidVar;
        this.zzfdd = zzdwoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return (Set) zzdwh.zza(Collections.singleton(new zzbqs(this.zzfdd.get(), zzaxn.zzdwn)), "Cannot return null from a non-@Nullable @Provides method");
    }
}
