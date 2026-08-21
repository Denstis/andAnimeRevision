package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzbvf implements zzdwb<zzbur> {
    private final zzbvd zzfmg;

    private zzbvf(zzbvd zzbvdVar) {
        this.zzfmg = zzbvdVar;
    }

    public static zzbvf zza(zzbvd zzbvdVar) {
        return new zzbvf(zzbvdVar);
    }

    public static zzbur zzb(zzbvd zzbvdVar) {
        return (zzbur) zzdwh.zza(zzbvdVar.zzaim(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return zzb(this.zzfmg);
    }
}
