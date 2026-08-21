package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzcpw implements zzdwb<zzcpu> {
    private final zzdwo<zzddl> zzfck;

    private zzcpw(zzdwo<zzddl> zzdwoVar) {
        this.zzfck = zzdwoVar;
    }

    public static zzcpw zzaj(zzdwo<zzddl> zzdwoVar) {
        return new zzcpw(zzdwoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return new zzcpu(this.zzfck.get());
    }
}
