package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class zzcjq implements zzdwb<zzcjm> {
    private final zzdwo<Context> zzejy;
    private final zzdwo<zzbzc> zzfxj;

    public zzcjq(zzdwo<Context> zzdwoVar, zzdwo<zzbzc> zzdwoVar2) {
        this.zzejy = zzdwoVar;
        this.zzfxj = zzdwoVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return new zzcjm(this.zzejy.get(), this.zzfxj.get());
    }
}
