package com.google.android.gms.internal.ads;

import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class zzcyo implements zzdwb<zzcyf> {
    private final zzdwo<Set<zzbqs<zzcym>>> zzfed;

    private zzcyo(zzdwo<Set<zzbqs<zzcym>>> zzdwoVar) {
        this.zzfed = zzdwoVar;
    }

    public static zzcyo zzam(zzdwo<Set<zzbqs<zzcym>>> zzdwoVar) {
        return new zzcyo(zzdwoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return new zzcyf(this.zzfed.get());
    }
}
