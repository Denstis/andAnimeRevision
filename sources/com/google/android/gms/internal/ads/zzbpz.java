package com.google.android.gms.internal.ads;

import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class zzbpz implements zzdwb<Set<zzbqs<zzbnj>>> {
    private final zzbpn zzfhv;

    private zzbpz(zzbpn zzbpnVar) {
        this.zzfhv = zzbpnVar;
    }

    public static zzbpz zzo(zzbpn zzbpnVar) {
        return new zzbpz(zzbpnVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return (Set) zzdwh.zza(this.zzfhv.zzagk(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
