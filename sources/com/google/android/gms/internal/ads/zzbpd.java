package com.google.android.gms.internal.ads;

import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class zzbpd implements zzdwb<zzbpb> {
    private final zzdwo<Set<zzbqs<zzbpg>>> zzfed;

    private zzbpd(zzdwo<Set<zzbqs<zzbpg>>> zzdwoVar) {
        this.zzfed = zzdwoVar;
    }

    public static zzbpd zzo(zzdwo<Set<zzbqs<zzbpg>>> zzdwoVar) {
        return new zzbpd(zzdwoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return new zzbpb(this.zzfed.get());
    }
}
