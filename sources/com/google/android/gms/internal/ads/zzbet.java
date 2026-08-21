package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzbet implements zzdwb<zzaxl> {
    private final zzbel zzejv;

    public zzbet(zzbel zzbelVar) {
        this.zzejv = zzbelVar;
    }

    public static zzaxl zzb(zzbel zzbelVar) {
        return (zzaxl) zzdwh.zza(zzbelVar.zzabr(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return zzb(this.zzejv);
    }
}
