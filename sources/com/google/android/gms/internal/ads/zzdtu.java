package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
final class zzdtu implements Iterator<String> {
    private final /* synthetic */ zzdts zzhos;
    private Iterator<String> zzhpo;

    zzdtu(zzdts zzdtsVar) {
        this.zzhos = zzdtsVar;
        this.zzhpo = this.zzhos.zzhot.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzhpo.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.zzhpo.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
