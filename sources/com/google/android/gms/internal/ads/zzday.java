package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzday<E> extends AbstractCollection<E> implements Serializable {
    private static final Object[] zzgoy = new Object[0];

    zzday() {
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean add(E e2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public abstract boolean contains(Object obj);

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        return toArray(zzgoy);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        zzdaq.checkNotNull(tArr);
        int size = size();
        if (tArr.length < size) {
            Object[] objArrZzaok = zzaok();
            if (objArrZzaok != null) {
                return (T[]) Arrays.copyOfRange(objArrZzaok, zzaol(), zzaom(), tArr.getClass());
            }
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), size));
        } else if (tArr.length > size) {
            tArr[size] = null;
        }
        zza(tArr, 0);
        return tArr;
    }

    int zza(Object[] objArr, int i2) {
        zzdbu zzdbuVar = (zzdbu) iterator();
        while (zzdbuVar.hasNext()) {
            objArr[i2] = zzdbuVar.next();
            i2++;
        }
        return i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* JADX INFO: renamed from: zzaoj, reason: merged with bridge method [inline-methods] */
    public abstract zzdbu<E> iterator();

    Object[] zzaok() {
        return null;
    }

    int zzaol() {
        throw new UnsupportedOperationException();
    }

    int zzaom() {
        throw new UnsupportedOperationException();
    }

    public zzdbd<E> zzaon() {
        return isEmpty() ? zzdbd.zzaop() : zzdbd.zzc(toArray());
    }

    abstract boolean zzaoo();
}
