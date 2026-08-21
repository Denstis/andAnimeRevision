package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzbug implements zzdwb<zzbuh> {
    private final zzdwo<zzbur> zzfkg;

    private zzbug(zzdwo<zzbur> zzdwoVar) {
        this.zzfkg = zzdwoVar;
    }

    public static zzbug zzw(zzdwo<zzbur> zzdwoVar) {
        return new zzbug(zzdwoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return new zzbuh(this.zzfkg.get());
    }
}
