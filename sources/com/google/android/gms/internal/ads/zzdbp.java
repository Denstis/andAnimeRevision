package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzdbp<K, V> extends zzdbg<Map.Entry<K, V>> {
    private final transient int size;
    private final transient Object[] zzgpo;
    private final transient zzdbh<K, V> zzgps;
    private final transient int zzgpt = 0;

    zzdbp(zzdbh<K, V> zzdbhVar, Object[] objArr, int i2, int i3) {
        this.zzgps = zzdbhVar;
        this.zzgpo = objArr;
        this.size = i3;
    }

    @Override // com.google.android.gms.internal.ads.zzday, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.zzgps.get(key))) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.ads.zzday
    final int zza(Object[] objArr, int i2) {
        return zzaon().zza(objArr, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzdbg, com.google.android.gms.internal.ads.zzday, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* JADX INFO: renamed from: zzaoj */
    public final zzdbu<Map.Entry<K, V>> iterator() {
        return (zzdbu) zzaon().iterator();
    }

    @Override // com.google.android.gms.internal.ads.zzday
    final boolean zzaoo() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdbg
    final zzdbd<Map.Entry<K, V>> zzaor() {
        return new zzdbo(this);
    }
}
