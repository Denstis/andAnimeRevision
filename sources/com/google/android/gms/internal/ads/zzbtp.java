package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzbtp implements zzdwb<String> {
    private static final zzbtp zzfji = new zzbtp();

    public static zzbtp zzahb() {
        return zzfji;
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return (String) zzdwh.zza("native", "Cannot return null from a non-@Nullable @Provides method");
    }
}
