package com.google.android.gms.internal.ads;

import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class zzcod implements zzdwb<zzcob> {
    private final zzdwo<Set<String>> zzgeh;

    private zzcod(zzdwo<Set<String>> zzdwoVar) {
        this.zzgeh = zzdwoVar;
    }

    public static zzcod zzai(zzdwo<Set<String>> zzdwoVar) {
        return new zzcod(zzdwoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return new zzcob(this.zzgeh.get());
    }
}
