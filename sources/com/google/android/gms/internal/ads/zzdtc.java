package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX INFO: loaded from: classes.dex */
final class zzdtc<K, V> implements Iterator<Map.Entry<K, V>> {
    private int pos;
    private final /* synthetic */ zzdta zzhoh;
    private Iterator<Map.Entry<K, V>> zzhoi;

    private zzdtc(zzdta zzdtaVar) {
        this.zzhoh = zzdtaVar;
        this.pos = this.zzhoh.zzhoc.size();
    }

    /* synthetic */ zzdtc(zzdta zzdtaVar, zzdsz zzdszVar) {
        this(zzdtaVar);
    }

    private final Iterator<Map.Entry<K, V>> zzbbt() {
        if (this.zzhoi == null) {
            this.zzhoi = this.zzhoh.zzhof.entrySet().iterator();
        }
        return this.zzhoi;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i2 = this.pos;
        return (i2 > 0 && i2 <= this.zzhoh.zzhoc.size()) || zzbbt().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, V> next;
        if (zzbbt().hasNext()) {
            next = zzbbt().next();
        } else {
            List list = this.zzhoh.zzhoc;
            int i2 = this.pos - 1;
            this.pos = i2;
            next = (Map.Entry<K, V>) list.get(i2);
        }
        return next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
