package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* JADX INFO: loaded from: classes.dex */
public final class zzcbu implements zzdwb<zzcbv> {
    private final zzdwo<Clock> zzfco;

    public zzcbu(zzdwo<Clock> zzdwoVar) {
        this.zzfco = zzdwoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return new zzcbv(this.zzfco.get());
    }
}
