package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX INFO: loaded from: classes.dex */
final class zzhk<K, V> implements Iterator<Map.Entry<K, V>> {
    private int zza;
    private Iterator<Map.Entry<K, V>> zzb;
    private final /* synthetic */ zzhi zzc;

    private zzhk(zzhi zzhiVar) {
        this.zzc = zzhiVar;
        this.zza = this.zzc.zzb.size();
    }

    /* synthetic */ zzhk(zzhi zzhiVar, zzhh zzhhVar) {
        this(zzhiVar);
    }

    private final Iterator<Map.Entry<K, V>> zza() {
        if (this.zzb == null) {
            this.zzb = this.zzc.zzf.entrySet().iterator();
        }
        return this.zzb;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i2 = this.zza;
        return (i2 > 0 && i2 <= this.zzc.zzb.size()) || zza().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, V> next;
        if (zza().hasNext()) {
            next = zza().next();
        } else {
            List list = this.zzc.zzb;
            int i2 = this.zza - 1;
            this.zza = i2;
            next = (Map.Entry<K, V>) list.get(i2);
        }
        return next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
