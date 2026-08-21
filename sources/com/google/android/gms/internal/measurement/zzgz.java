package com.google.android.gms.internal.measurement;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes.dex */
final class zzgz {
    private static final zzgz zza = new zzgz();
    private final ConcurrentMap<Class<?>, zzhd<?>> zzc = new ConcurrentHashMap();
    private final zzhg zzb = new zzgb();

    private zzgz() {
    }

    public static zzgz zza() {
        return zza;
    }

    public final <T> zzhd<T> zza(Class<T> cls) {
        zzff.zza(cls, "messageType");
        zzhd<T> zzhdVar = (zzhd) this.zzc.get(cls);
        if (zzhdVar != null) {
            return zzhdVar;
        }
        zzhd<T> zzhdVarZza = this.zzb.zza(cls);
        zzff.zza(cls, "messageType");
        zzff.zza(zzhdVarZza, "schema");
        zzhd<T> zzhdVar2 = (zzhd) this.zzc.putIfAbsent(cls, zzhdVarZza);
        return zzhdVar2 != null ? zzhdVar2 : zzhdVarZza;
    }

    public final <T> zzhd<T> zza(T t) {
        return zza((Class) t.getClass());
    }
}
