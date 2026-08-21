package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzctt implements zzdwb<String> {
    private final zzctp zzghp;

    public zzctt(zzctp zzctpVar) {
        this.zzghp = zzctpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return (String) zzdwh.zza(this.zzghp.zzamr(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
