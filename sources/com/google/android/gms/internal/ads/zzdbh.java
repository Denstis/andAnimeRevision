package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzdbh<K, V> implements Serializable, Map<K, V> {
    private static final Map.Entry<?, ?>[] zzgpf = new Map.Entry[0];
    private transient zzdbg<Map.Entry<K, V>> zzgpg;
    private transient zzdbg<K> zzgph;
    private transient zzday<V> zzgpi;

    zzdbh() {
    }

    public static <K, V> zzdbh<K, V> zza(K k2, V v, K k3, V v2, K k4, V v3, K k5, V v4, K k6, V v5) {
        zzdax.zzb(k2, v);
        zzdax.zzb(k3, v2);
        zzdax.zzb(k4, v3);
        zzdax.zzb(k5, v4);
        zzdax.zzb(k6, v5);
        return zzdbm.zzc(5, new Object[]{k2, v, k3, v2, k4, v3, k5, v4, k6, v5});
    }

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return ((zzday) values()).contains(obj);
    }

    @Override // java.util.Map
    public /* synthetic */ Set entrySet() {
        zzdbg<Map.Entry<K, V>> zzdbgVar = this.zzgpg;
        if (zzdbgVar != null) {
            return zzdbgVar;
        }
        zzdbg<Map.Entry<K, V>> zzdbgVarZzaos = zzaos();
        this.zzgpg = zzdbgVarZzaos;
        return zzdbgVarZzaos;
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    @Override // java.util.Map
    public abstract V get(Object obj);

    @Override // java.util.Map
    public final V getOrDefault(Object obj, V v) {
        V v2 = get(obj);
        return v2 != null ? v2 : v;
    }

    @Override // java.util.Map
    public int hashCode() {
        return zzdbs.zzf((zzdbg) entrySet());
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public /* synthetic */ Set keySet() {
        zzdbg<K> zzdbgVar = this.zzgph;
        if (zzdbgVar != null) {
            return zzdbgVar;
        }
        zzdbg<K> zzdbgVarZzaot = zzaot();
        this.zzgph = zzdbgVarZzaot;
        return zzdbgVarZzaot;
    }

    @Override // java.util.Map
    @Deprecated
    public final V put(K k2, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final V remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        int size = size();
        zzdax.zzf(size, "size");
        StringBuilder sb = new StringBuilder((int) Math.min(((long) size) << 3, 1073741824L));
        sb.append('{');
        boolean z = true;
        for (Map.Entry<K, V> entry : entrySet()) {
            if (!z) {
                sb.append(", ");
            }
            z = false;
            sb.append(entry.getKey());
            sb.append('=');
            sb.append(entry.getValue());
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // java.util.Map
    public /* synthetic */ Collection values() {
        zzday<V> zzdayVar = this.zzgpi;
        if (zzdayVar != null) {
            return zzdayVar;
        }
        zzday<V> zzdayVarZzaou = zzaou();
        this.zzgpi = zzdayVarZzaou;
        return zzdayVarZzaou;
    }

    abstract zzdbg<Map.Entry<K, V>> zzaos();

    abstract zzdbg<K> zzaot();

    abstract zzday<V> zzaou();
}
