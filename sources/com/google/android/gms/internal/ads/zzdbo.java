package com.google.android.gms.internal.ads;

import java.util.AbstractMap;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX INFO: loaded from: classes.dex */
final class zzdbo<K, V> extends zzdbd<Map.Entry<K, V>> {
    private final /* synthetic */ zzdbp zzgpr;

    zzdbo(zzdbp zzdbpVar) {
        this.zzgpr = zzdbpVar;
    }

    @Override // java.util.List
    public final /* synthetic */ Object get(int i2) {
        zzdaq.zzr(i2, this.zzgpr.size);
        int i3 = i2 * 2;
        return new AbstractMap.SimpleImmutableEntry(this.zzgpr.zzgpo[i3], this.zzgpr.zzgpo[i3 + 1]);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzgpr.size;
    }

    @Override // com.google.android.gms.internal.ads.zzday
    public final boolean zzaoo() {
        return true;
    }
}
