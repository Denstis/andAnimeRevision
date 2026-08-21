package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzbsp implements zzdwb<zzbsm> {
    private final zzdwo<zzboo> zzesr;
    private final zzdwo<zzbqo> zzeyg;

    private zzbsp(zzdwo<zzboo> zzdwoVar, zzdwo<zzbqo> zzdwoVar2) {
        this.zzesr = zzdwoVar;
        this.zzeyg = zzdwoVar2;
    }

    public static zzbsp zzi(zzdwo<zzboo> zzdwoVar, zzdwo<zzbqo> zzdwoVar2) {
        return new zzbsp(zzdwoVar, zzdwoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return new zzbsm(this.zzesr.get(), this.zzeyg.get());
    }
}
