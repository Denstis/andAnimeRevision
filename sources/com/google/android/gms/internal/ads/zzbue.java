package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class zzbue implements zzdwb<zzbhx> {
    private final zzdwo<Context> zzejy;
    private final zzdwo<Executor> zzfck;
    private final zzdwo<Clock> zzfco;
    private final zzdwo<zzpe> zzfkm;

    public zzbue(zzdwo<zzpe> zzdwoVar, zzdwo<Executor> zzdwoVar2, zzdwo<Context> zzdwoVar3, zzdwo<Clock> zzdwoVar4) {
        this.zzfkm = zzdwoVar;
        this.zzfck = zzdwoVar2;
        this.zzejy = zzdwoVar3;
        this.zzfco = zzdwoVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        zzpe zzpeVar = this.zzfkm.get();
        Executor executor = this.zzfck.get();
        Context context = this.zzejy.get();
        return (zzbhx) zzdwh.zza(new zzbhx(executor, new zzbhi(context, zzpeVar), this.zzfco.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
