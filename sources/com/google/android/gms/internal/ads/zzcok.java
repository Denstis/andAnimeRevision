package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class zzcok implements zzcru<zzcrr<Bundle>> {
    private final Executor executor;
    private final zzatr zzbml;

    zzcok(Executor executor, zzatr zzatrVar) {
        this.executor = executor;
        this.zzbml = zzatrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcru
    public final zzddi<zzcrr<Bundle>> zzalv() {
        return ((Boolean) zzuv.zzon().zzd(zzza.zzcne)).booleanValue() ? zzdcy.zzah(null) : zzdcy.zzb(this.zzbml.zzui(), zzcoj.zzdos, this.executor);
    }
}
