package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class zzbxf implements zzdwb<zzbxb> {
    private final zzdwo<Executor> zzfck;
    private final zzdwo<zzbwq> zzfor;

    public zzbxf(zzdwo<Executor> zzdwoVar, zzdwo<zzbwq> zzdwoVar2) {
        this.zzfck = zzdwoVar;
        this.zzfor = zzdwoVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return new zzbxb(this.zzfck.get(), this.zzfor.get());
    }
}
