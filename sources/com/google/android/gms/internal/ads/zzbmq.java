package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public final class zzbmq implements zzdwb<Bundle> {
    private final zzbmk zzfgv;

    private zzbmq(zzbmk zzbmkVar) {
        this.zzfgv = zzbmkVar;
    }

    public static zzbmq zzh(zzbmk zzbmkVar) {
        return new zzbmq(zzbmkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return this.zzfgv.zzafw();
    }
}
