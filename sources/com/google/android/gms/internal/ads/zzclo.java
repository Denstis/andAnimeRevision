package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzclo implements zzdwb<zzclp> {
    private final zzdwo<zzchm> zzgah;

    private zzclo(zzdwo<zzchm> zzdwoVar) {
        this.zzgah = zzdwoVar;
    }

    public static zzclo zzag(zzdwo<zzchm> zzdwoVar) {
        return new zzclo(zzdwoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return new zzclp(this.zzgah.get());
    }
}
