package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzdrm<K> implements Iterator<Map.Entry<K, Object>> {
    private Iterator<Map.Entry<K, Object>> zzhmh;

    public zzdrm(Iterator<Map.Entry<K, Object>> it) {
        this.zzhmh = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzhmh.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.zzhmh.next();
        return next.getValue() instanceof zzdrh ? new zzdrj(next) : next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.zzhmh.remove();
    }
}
