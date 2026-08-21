package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: loaded from: classes.dex */
public final class zzcgd<DelegateT, AdapterT> implements zzcga<AdapterT> {

    @VisibleForTesting
    private final zzcga<DelegateT> zzfxe;
    private final zzdal<DelegateT, AdapterT> zzfxf;

    public zzcgd(zzcga<DelegateT> zzcgaVar, zzdal<DelegateT, AdapterT> zzdalVar) {
        this.zzfxe = zzcgaVar;
        this.zzfxf = zzdalVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcga
    public final boolean zza(zzcvz zzcvzVar, zzcvr zzcvrVar) {
        return this.zzfxe.zza(zzcvzVar, zzcvrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcga
    public final zzddi<AdapterT> zzb(zzcvz zzcvzVar, zzcvr zzcvrVar) {
        return zzdcy.zzb(this.zzfxe.zzb(zzcvzVar, zzcvrVar), this.zzfxf, zzaxn.zzdwi);
    }
}
