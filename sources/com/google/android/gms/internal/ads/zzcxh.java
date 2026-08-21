package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzcxh implements zzdwb<zzddl> {
    private static final zzcxh zzgle = new zzcxh();

    public static zzcxh zzanj() {
        return zzgle;
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        zzddl zzddlVar;
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcrx)).booleanValue()) {
            zzddlVar = zzaxn.zzdwk;
        } else {
            zzddlVar = ((Boolean) zzuv.zzon().zzd(zzza.zzcrw)).booleanValue() ? zzaxn.zzdwi : zzaxn.zzdwm;
        }
        return (zzddl) zzdwh.zza(zzddlVar, "Cannot return null from a non-@Nullable @Provides method");
    }
}
