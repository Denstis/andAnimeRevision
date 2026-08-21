package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class zzcps implements zzdwb<zzcpq> {
    private final zzdwo<Context> zzejy;
    private final zzdwo<zzddl> zzfck;

    private zzcps(zzdwo<Context> zzdwoVar, zzdwo<zzddl> zzdwoVar2) {
        this.zzejy = zzdwoVar;
        this.zzfck = zzdwoVar2;
    }

    public static zzcps zzao(zzdwo<Context> zzdwoVar, zzdwo<zzddl> zzdwoVar2) {
        return new zzcps(zzdwoVar, zzdwoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return new zzcpq(this.zzejy.get(), this.zzfck.get());
    }
}
