package com.google.android.gms.internal.ads;

import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
public class zzdvx<K, V, V2> {
    final LinkedHashMap<K, zzdwo<V>> zzhxl;

    zzdvx(int i2) {
        this.zzhxl = zzdwa.zzhm(i2);
    }

    zzdvx<K, V, V2> zza(K k2, zzdwo<V> zzdwoVar) {
        this.zzhxl.put((K) zzdwh.zza(k2, "key"), (zzdwo<V>) zzdwh.zza(zzdwoVar, "provider"));
        return this;
    }
}
