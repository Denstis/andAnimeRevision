package com.google.android.gms.internal.ads;

import java.util.ListIterator;

/* JADX INFO: loaded from: classes.dex */
final class zzdtr implements ListIterator<String> {
    private final /* synthetic */ int zzgqx;
    private ListIterator<String> zzhor;
    private final /* synthetic */ zzdts zzhos;

    zzdtr(zzdts zzdtsVar, int i2) {
        this.zzhos = zzdtsVar;
        this.zzgqx = i2;
        this.zzhor = this.zzhos.zzhot.listIterator(this.zzgqx);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.zzhor.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.zzhor.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.zzhor.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.zzhor.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.zzhor.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.zzhor.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void set(String str) {
        throw new UnsupportedOperationException();
    }
}
