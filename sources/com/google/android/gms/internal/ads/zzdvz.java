package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzdvz<T> implements zzdwb<T> {
    private zzdwo<T> zzhxn;

    public static <T> void zzaw(zzdwo<T> zzdwoVar, zzdwo<T> zzdwoVar2) {
        zzdwh.checkNotNull(zzdwoVar2);
        zzdvz zzdvzVar = (zzdvz) zzdwoVar;
        if (zzdvzVar.zzhxn != null) {
            throw new IllegalStateException();
        }
        zzdvzVar.zzhxn = zzdwoVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final T get() {
        zzdwo<T> zzdwoVar = this.zzhxn;
        if (zzdwoVar != null) {
            return zzdwoVar.get();
        }
        throw new IllegalStateException();
    }
}
