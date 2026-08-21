package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX INFO: loaded from: classes.dex */
final class zzhq<K, V> implements Iterator<Map.Entry<K, V>> {
    private int zza;
    private boolean zzb;
    private Iterator<Map.Entry<K, V>> zzc;
    private final /* synthetic */ zzhi zzd;

    private zzhq(zzhi zzhiVar) {
        this.zzd = zzhiVar;
        this.zza = -1;
    }

    /* synthetic */ zzhq(zzhi zzhiVar, zzhh zzhhVar) {
        this(zzhiVar);
    }

    private final Iterator<Map.Entry<K, V>> zza() {
        if (this.zzc == null) {
            this.zzc = this.zzd.zzc.entrySet().iterator();
        }
        return this.zzc;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza + 1 < this.zzd.zzb.size() || (!this.zzd.zzc.isEmpty() && zza().hasNext());
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        this.zzb = true;
        int i2 = this.zza + 1;
        this.zza = i2;
        return i2 < this.zzd.zzb.size() ? (Map.Entry<K, V>) this.zzd.zzb.get(this.zza) : zza().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.zzb) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.zzb = false;
        this.zzd.zzf();
        if (this.zza >= this.zzd.zzb.size()) {
            zza().remove();
            return;
        }
        zzhi zzhiVar = this.zzd;
        int i2 = this.zza;
        this.zza = i2 - 1;
        zzhiVar.zzc(i2);
    }
}
