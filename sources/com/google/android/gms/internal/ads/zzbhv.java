package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzbhv implements zzdwb<Set<zzbqs<zzpj>>> {
    private final zzdwo<Executor> zzfck;
    private final zzdwo<zzbhk> zzfcs;
    private final zzdwo<JSONObject> zzfct;

    private zzbhv(zzdwo<zzbhk> zzdwoVar, zzdwo<Executor> zzdwoVar2, zzdwo<JSONObject> zzdwoVar3) {
        this.zzfcs = zzdwoVar;
        this.zzfck = zzdwoVar2;
        this.zzfct = zzdwoVar3;
    }

    public static zzbhv zzf(zzdwo<zzbhk> zzdwoVar, zzdwo<Executor> zzdwoVar2, zzdwo<JSONObject> zzdwoVar3) {
        return new zzbhv(zzdwoVar, zzdwoVar2, zzdwoVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return (Set) zzdwh.zza(this.zzfct.get() == null ? Collections.emptySet() : Collections.singleton(new zzbqs(this.zzfcs.get(), this.zzfck.get())), "Cannot return null from a non-@Nullable @Provides method");
    }
}
