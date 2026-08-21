package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class zzbwn implements zzdwb<zzbwl> {
    private final zzdwo<zzavy> zzepv;
    private final zzdwo<Executor> zzfck;
    private final zzdwo<Clock> zzfco;

    public zzbwn(zzdwo<zzavy> zzdwoVar, zzdwo<Clock> zzdwoVar2, zzdwo<Executor> zzdwoVar3) {
        this.zzepv = zzdwoVar;
        this.zzfco = zzdwoVar2;
        this.zzfck = zzdwoVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return new zzbwl(this.zzepv.get(), this.zzfco.get(), this.zzfck.get());
    }
}
