package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzcfm implements zzdwb<zzcfn> {
    private final zzdwo<zzcft> zzfwa;

    private zzcfm(zzdwo<zzcft> zzdwoVar) {
        this.zzfwa = zzdwoVar;
    }

    public static zzcfm zzad(zzdwo<zzcft> zzdwoVar) {
        return new zzcfm(zzdwoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return new zzcfn(this.zzfwa.get());
    }
}
