package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzbms implements zzdwb<zzcwc> {
    private final zzbmk zzfgv;

    private zzbms(zzbmk zzbmkVar) {
        this.zzfgv = zzbmkVar;
    }

    public static zzbms zzk(zzbmk zzbmkVar) {
        return new zzbms(zzbmkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return this.zzfgv.zzafv();
    }
}
