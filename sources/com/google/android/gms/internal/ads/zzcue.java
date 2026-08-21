package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbmi;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class zzcue<RequestComponentT extends zzbmi<AdT>, AdT> implements zzcud<RequestComponentT, AdT> {
    private RequestComponentT zzght;

    @Override // com.google.android.gms.internal.ads.zzcud
    public final zzddi<AdT> zza(zzbml<RequestComponentT> zzbmlVar, Executor executor) {
        this.zzght = zzbmlVar.zzace();
        return this.zzght.zzaca().zzafs();
    }

    @Override // com.google.android.gms.internal.ads.zzcud
    public final /* synthetic */ Object zzamt() {
        return this.zzght;
    }
}
