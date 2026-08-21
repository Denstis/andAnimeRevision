package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class zzcar implements zzdwb<Set<zzbqs<zzcym>>> {
    private final zzdwo<Executor> zzfck;
    private final zzdwo<zzcay> zzfcs;

    private zzcar(zzdwo<Executor> zzdwoVar, zzdwo<zzcay> zzdwoVar2) {
        this.zzfck = zzdwoVar;
        this.zzfcs = zzdwoVar2;
    }

    public static zzcar zzr(zzdwo<Executor> zzdwoVar, zzdwo<zzcay> zzdwoVar2) {
        return new zzcar(zzdwoVar, zzdwoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        Executor executor = this.zzfck.get();
        return (Set) zzdwh.zza(((Boolean) zzuv.zzon().zzd(zzza.zzcql)).booleanValue() ? Collections.singleton(new zzbqs(this.zzfcs.get(), executor)) : Collections.emptySet(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
