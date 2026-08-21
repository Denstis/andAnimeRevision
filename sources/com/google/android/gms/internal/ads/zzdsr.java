package com.google.android.gms.internal.ads;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes.dex */
final class zzdsr {
    private static final zzdsr zzhnt = new zzdsr();
    private final ConcurrentMap<Class<?>, zzdsv<?>> zzhnv = new ConcurrentHashMap();
    private final zzdsy zzhnu = new zzdrt();

    private zzdsr() {
    }

    public static zzdsr zzbbf() {
        return zzhnt;
    }

    public final <T> zzdsv<T> zzax(T t) {
        return zzh(t.getClass());
    }

    public final <T> zzdsv<T> zzh(Class<T> cls) {
        zzdqx.zza(cls, "messageType");
        zzdsv<T> zzdsvVar = (zzdsv) this.zzhnv.get(cls);
        if (zzdsvVar != null) {
            return zzdsvVar;
        }
        zzdsv<T> zzdsvVarZzg = this.zzhnu.zzg(cls);
        zzdqx.zza(cls, "messageType");
        zzdqx.zza(zzdsvVarZzg, "schema");
        zzdsv<T> zzdsvVar2 = (zzdsv) this.zzhnv.putIfAbsent(cls, zzdsvVarZzg);
        return zzdsvVar2 != null ? zzdsvVar2 : zzdsvVarZzg;
    }
}
