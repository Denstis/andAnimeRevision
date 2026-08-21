package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzbto implements zzdwb<zzcwl<zzbyh>> {
    private final zzdwo<zzddl> zzfck;
    private final zzdwo<zzbyr> zzfjh;

    public zzbto(zzdwo<zzbyr> zzdwoVar, zzdwo<zzddl> zzdwoVar2) {
        this.zzfjh = zzdwoVar;
        this.zzfck = zzdwoVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return (zzcwl) zzdwh.zza(new zzcwl(this.zzfjh.get(), this.zzfck.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
