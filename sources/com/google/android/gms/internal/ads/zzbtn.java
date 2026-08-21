package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class zzbtn implements zzdwb<Set<String>> {
    private final zzdwo<zzbuy> zzfdw;

    public zzbtn(zzdwo<zzbuy> zzdwoVar) {
        this.zzfdw = zzdwoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return (Set) zzdwh.zza(this.zzfdw.get().zzaih() != null ? Collections.singleton("banner") : Collections.emptySet(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
