package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzckn implements zzdwb<zzckk> {
    private final zzdwo<zzclp> zzgah;

    private zzckn(zzdwo<zzclp> zzdwoVar) {
        this.zzgah = zzdwoVar;
    }

    public static zzckn zzaf(zzdwo<zzclp> zzdwoVar) {
        return new zzckn(zzdwoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return new zzckk(this.zzgah.get());
    }
}
