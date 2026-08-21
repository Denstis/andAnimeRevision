package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzblh implements zzdwb<zzble> {
    private final zzdwo<zzbnr> zzesa;

    private zzblh(zzdwo<zzbnr> zzdwoVar) {
        this.zzesa = zzdwoVar;
    }

    public static zzblh zze(zzdwo<zzbnr> zzdwoVar) {
        return new zzblh(zzdwoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return new zzble(this.zzesa.get());
    }
}
