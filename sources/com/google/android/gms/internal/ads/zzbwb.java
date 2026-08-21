package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzbwb implements zzdwb<zzbvy> {
    private final zzdwo<zzbuv> zzete;
    private final zzdwo<zzbur> zzfkg;

    public zzbwb(zzdwo<zzbur> zzdwoVar, zzdwo<zzbuv> zzdwoVar2) {
        this.zzfkg = zzdwoVar;
        this.zzete = zzdwoVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return new zzbvy(this.zzfkg.get(), this.zzete.get());
    }
}
