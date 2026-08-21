package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class zzbjg implements zzdwb<zzasm> {
    private final zzdwo<Context> zzejy;
    private final zzbiv zzfec;
    private final zzdwo<zzcwe> zzfef;

    public zzbjg(zzbiv zzbivVar, zzdwo<Context> zzdwoVar, zzdwo<zzcwe> zzdwoVar2) {
        this.zzfec = zzbivVar;
        this.zzejy = zzdwoVar;
        this.zzfef = zzdwoVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return (zzasm) zzdwh.zza(new zzasm(this.zzejy.get(), this.zzfef.get().zzgkh), "Cannot return null from a non-@Nullable @Provides method");
    }
}
