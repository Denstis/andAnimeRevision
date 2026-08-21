package com.google.android.gms.internal.ads;

import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class zzbpr implements zzdwb<zzbmz> {
    private final zzbpn zzfhv;
    private final zzdwo<Set<zzbqs<zzbnb>>> zzfhw;

    private zzbpr(zzbpn zzbpnVar, zzdwo<Set<zzbqs<zzbnb>>> zzdwoVar) {
        this.zzfhv = zzbpnVar;
        this.zzfhw = zzdwoVar;
    }

    public static zzbpr zza(zzbpn zzbpnVar, zzdwo<Set<zzbqs<zzbnb>>> zzdwoVar) {
        return new zzbpr(zzbpnVar, zzdwoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return (zzbmz) zzdwh.zza(this.zzfhv.zzc(this.zzfhw.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
