package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzbjs implements zzdwb<Boolean> {
    private final zzdwo<zzcwe> zzfef;

    public zzbjs(zzdwo<zzcwe> zzdwoVar) {
        this.zzfef = zzdwoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return Boolean.valueOf(((Boolean) zzuv.zzon().zzd(this.zzfef.get().zzana() != null ? zzza.zzclc : zzza.zzcrt)).booleanValue());
    }
}
