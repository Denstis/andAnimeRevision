package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX INFO: loaded from: classes.dex */
final class zzdti<K, V> implements Iterator<Map.Entry<K, V>> {
    private int pos;
    private final /* synthetic */ zzdta zzhoh;
    private Iterator<Map.Entry<K, V>> zzhoi;
    private boolean zzhom;

    private zzdti(zzdta zzdtaVar) {
        this.zzhoh = zzdtaVar;
        this.pos = -1;
    }

    /* synthetic */ zzdti(zzdta zzdtaVar, zzdsz zzdszVar) {
        this(zzdtaVar);
    }

    private final Iterator<Map.Entry<K, V>> zzbbt() {
        if (this.zzhoi == null) {
            this.zzhoi = this.zzhoh.zzhod.entrySet().iterator();
        }
        return this.zzhoi;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.pos + 1 < this.zzhoh.zzhoc.size() || (!this.zzhoh.zzhod.isEmpty() && zzbbt().hasNext());
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        this.zzhom = true;
        int i2 = this.pos + 1;
        this.pos = i2;
        return i2 < this.zzhoh.zzhoc.size() ? (Map.Entry<K, V>) this.zzhoh.zzhoc.get(this.pos) : zzbbt().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.zzhom) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.zzhom = false;
        this.zzhoh.zzbbr();
        if (this.pos >= this.zzhoh.zzhoc.size()) {
            zzbbt().remove();
            return;
        }
        zzdta zzdtaVar = this.zzhoh;
        int i2 = this.pos;
        this.pos = i2 - 1;
        zzdtaVar.zzha(i2);
    }
}
