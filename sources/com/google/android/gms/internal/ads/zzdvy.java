package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
abstract class zzdvy<K, V, V2> implements zzdwb<Map<K, V2>> {
    private final Map<K, zzdwo<V>> zzhxm;

    zzdvy(Map<K, zzdwo<V>> map) {
        this.zzhxm = Collections.unmodifiableMap(map);
    }

    final Map<K, zzdwo<V>> zzbde() {
        return this.zzhxm;
    }
}
