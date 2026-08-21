package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: Add missing generic type declarations: [E] */
/* JADX INFO: loaded from: classes.dex */
final class zzdvu<E> implements Iterator<E> {
    private int pos = 0;
    private final /* synthetic */ zzdvr zzhxc;

    zzdvu(zzdvr zzdvrVar) {
        this.zzhxc = zzdvrVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.pos < this.zzhxc.zzhxa.size() || this.zzhxc.zzhxb.hasNext();
    }

    @Override // java.util.Iterator
    public final E next() {
        while (this.pos >= this.zzhxc.zzhxa.size()) {
            zzdvr zzdvrVar = this.zzhxc;
            zzdvrVar.zzhxa.add(zzdvrVar.zzhxb.next());
        }
        List<E> list = this.zzhxc.zzhxa;
        int i2 = this.pos;
        this.pos = i2 + 1;
        return list.get(i2);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
