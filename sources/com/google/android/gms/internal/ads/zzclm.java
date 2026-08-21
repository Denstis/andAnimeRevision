package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class zzclm implements zzdwb<zzcli> {
    private final zzdwo<Context> zzejy;
    private final zzdwo<zzbso> zzfxj;

    public zzclm(zzdwo<Context> zzdwoVar, zzdwo<zzbso> zzdwoVar2) {
        this.zzejy = zzdwoVar;
        this.zzfxj = zzdwoVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return new zzcli(this.zzejy.get(), this.zzfxj.get());
    }
}
