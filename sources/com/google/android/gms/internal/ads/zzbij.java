package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzbij implements zzdwb<String> {
    private static final zzbij zzfdi = new zzbij();

    public static zzbij zzaex() {
        return zzfdi;
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return (String) zzdwh.zza("app_open_ad", "Cannot return null from a non-@Nullable @Provides method");
    }
}
