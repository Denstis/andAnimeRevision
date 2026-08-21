package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzbzh implements zzdwb<zzbqs<zzbna>> {
    private final zzdwo<zzbqn> zzfcs;

    public zzbzh(zzdwo<zzbqn> zzdwoVar) {
        this.zzfcs = zzdwoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return (zzbqs) zzdwh.zza(new zzbqs(this.zzfcs.get(), zzaxn.zzdwn), "Cannot return null from a non-@Nullable @Provides method");
    }
}
