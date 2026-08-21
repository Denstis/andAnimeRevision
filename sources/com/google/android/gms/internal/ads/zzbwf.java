package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzbwf implements zzdwb<zzbuz> {
    private final zzdwo<zzbwa> zzetc;
    private final zzbwc zzfnv;

    public zzbwf(zzbwc zzbwcVar, zzdwo<zzbwa> zzdwoVar) {
        this.zzfnv = zzbwcVar;
        this.zzetc = zzdwoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return (zzbuz) zzdwh.zza(this.zzetc.get(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
