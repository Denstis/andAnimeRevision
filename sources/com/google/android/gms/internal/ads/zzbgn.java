package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzbgn implements zzdwb<zzatm> {
    private static final zzbgn zzfaw = new zzbgn();

    public static zzbgn zzaeb() {
        return zzfaw;
    }

    public static zzatm zzaec() {
        return (zzatm) zzdwh.zza(new zzatm(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return zzaec();
    }
}
