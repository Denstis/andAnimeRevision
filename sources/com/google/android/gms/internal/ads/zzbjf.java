package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzbjf implements zzdwb<zzbqs<zzbnj>> {
    private final zzdwo<zzbkd> zzfdd;
    private final zzbiv zzfec;

    public zzbjf(zzbiv zzbivVar, zzdwo<zzbkd> zzdwoVar) {
        this.zzfec = zzbivVar;
        this.zzfdd = zzdwoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return (zzbqs) zzdwh.zza(new zzbqs(this.zzfdd.get(), zzaxn.zzdwm), "Cannot return null from a non-@Nullable @Provides method");
    }
}
