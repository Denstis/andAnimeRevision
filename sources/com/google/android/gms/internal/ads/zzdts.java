package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
public final class zzdts extends AbstractList<String> implements zzdrn, RandomAccess {
    private final zzdrn zzhot;

    public zzdts(zzdrn zzdrnVar) {
        this.zzhot = zzdrnVar;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        return (String) this.zzhot.get(i2);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new zzdtu(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i2) {
        return new zzdtr(this, i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzhot.size();
    }

    @Override // com.google.android.gms.internal.ads.zzdrn
    public final List<?> zzban() {
        return this.zzhot.zzban();
    }

    @Override // com.google.android.gms.internal.ads.zzdrn
    public final zzdrn zzbao() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdrn
    public final void zzdb(zzdpm zzdpmVar) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzdrn
    public final Object zzgq(int i2) {
        return this.zzhot.zzgq(i2);
    }
}
