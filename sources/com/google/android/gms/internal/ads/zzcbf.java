package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzcbf implements zzdwb<zzcbc> {
    private final zzdwo<zzcbo> zzekq;
    private final zzdwo<zzcbl> zzemk;

    private zzcbf(zzdwo<zzcbl> zzdwoVar, zzdwo<zzcbo> zzdwoVar2) {
        this.zzemk = zzdwoVar;
        this.zzekq = zzdwoVar2;
    }

    public static zzcbf zzv(zzdwo<zzcbl> zzdwoVar, zzdwo<zzcbo> zzdwoVar2) {
        return new zzcbf(zzdwoVar, zzdwoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return new zzcbc(this.zzemk.get(), this.zzekq.get());
    }
}
