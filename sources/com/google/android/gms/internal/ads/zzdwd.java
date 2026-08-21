package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzdwd<K, V> extends zzdvy<K, V, V> {
    private static final zzdwo<Map<Object, Object>> zzhxq = zzdwe.zzbb(Collections.emptyMap());

    private zzdwd(Map<K, zzdwo<V>> map) {
        super(map);
    }

    public static <K, V> zzdwf<K, V> zzho(int i2) {
        return new zzdwf<>(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        LinkedHashMap linkedHashMapZzhm = zzdwa.zzhm(zzbde().size());
        for (Map.Entry<K, zzdwo<V>> entry : zzbde().entrySet()) {
            linkedHashMapZzhm.put(entry.getKey(), entry.getValue().get());
        }
        return Collections.unmodifiableMap(linkedHashMapZzhm);
    }
}
