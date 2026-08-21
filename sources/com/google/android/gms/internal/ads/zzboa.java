package com.google.android.gms.internal.ads;

import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class zzboa implements zzdwb<zzbnr> {
    private final zzdwo<Set<zzbqs<zzbna>>> zzfed;

    private zzboa(zzdwo<Set<zzbqs<zzbna>>> zzdwoVar) {
        this.zzfed = zzdwoVar;
    }

    public static zzboa zzj(zzdwo<Set<zzbqs<zzbna>>> zzdwoVar) {
        return new zzboa(zzdwoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return new zzbnr(this.zzfed.get());
    }
}
