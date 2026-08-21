package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class zzcha implements zzdwb<zzcgw> {
    private final zzdwo<Context> zzejy;
    private final zzdwo<zzbjn> zzfxj;

    public zzcha(zzdwo<Context> zzdwoVar, zzdwo<zzbjn> zzdwoVar2) {
        this.zzejy = zzdwoVar;
        this.zzfxj = zzdwoVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return new zzcgw(this.zzejy.get(), this.zzfxj.get());
    }
}
