package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzbjq implements zzdwb<String> {
    private static final zzbjq zzfei = new zzbjq();

    public static zzbjq zzaff() {
        return zzfei;
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return (String) zzdwh.zza("banner", "Cannot return null from a non-@Nullable @Provides method");
    }
}
