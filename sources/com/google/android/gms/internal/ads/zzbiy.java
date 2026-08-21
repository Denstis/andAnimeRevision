package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzbiy implements zzdwb<zzcvu> {
    private final zzbiv zzfec;

    public zzbiy(zzbiv zzbivVar) {
        this.zzfec = zzbivVar;
    }

    public static zzcvu zza(zzbiv zzbivVar) {
        return (zzcvu) zzdwh.zza(zzbivVar.zzafd(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return zza(this.zzfec);
    }
}
