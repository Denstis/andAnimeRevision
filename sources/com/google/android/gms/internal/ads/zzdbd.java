package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzdbd<E> extends zzday<E> implements List<E>, RandomAccess {
    private static final zzdbx<Object> zzgpb = new zzdbf(zzdbn.zzgpp, 0);

    zzdbd() {
    }

    public static <E> zzdbd<E> zzad(E e2) {
        Object[] objArr = {e2};
        for (int i2 = 0; i2 <= 0; i2++) {
            zzdbk.zzd(objArr[0], 0);
        }
        return zzb(objArr, 1);
    }

    public static <E> zzdbd<E> zzaop() {
        return (zzdbd<E>) zzdbn.zzgpp;
    }

    public static <E> zzdbd<E> zzb(E[] eArr) {
        if (eArr.length == 0) {
            return (zzdbd<E>) zzdbn.zzgpp;
        }
        Object[] objArr = (Object[]) eArr.clone();
        int length = objArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            zzdbk.zzd(objArr[i2], i2);
        }
        return zzb(objArr, objArr.length);
    }

    static <E> zzdbd<E> zzb(Object[] objArr, int i2) {
        return i2 == 0 ? (zzdbd<E>) zzdbn.zzgpp : new zzdbn(objArr, i2);
    }

    static <E> zzdbd<E> zzc(Object[] objArr) {
        return zzb(objArr, objArr.length);
    }

    public static <E> zzdbd<E> zzf(Iterable<? extends E> iterable) {
        zzdaq.checkNotNull(iterable);
        if (!(iterable instanceof Collection)) {
            Iterator<? extends E> it = iterable.iterator();
            if (!it.hasNext()) {
                return (zzdbd<E>) zzdbn.zzgpp;
            }
            E next = it.next();
            if (!it.hasNext()) {
                return zzad(next);
            }
            zzdbc zzdbcVar = (zzdbc) ((zzdbc) new zzdbc().zzab(next)).zza(it);
            zzdbcVar.zzgpa = true;
            return zzb(zzdbcVar.zzgoz, zzdbcVar.size);
        }
        Collection collection = (Collection) iterable;
        if (collection instanceof zzday) {
            zzdbd<E> zzdbdVarZzaon = ((zzday) collection).zzaon();
            if (!zzdbdVarZzaon.zzaoo()) {
                return zzdbdVarZzaon;
            }
            Object[] array = zzdbdVarZzaon.toArray();
            return zzb(array, array.length);
        }
        Object[] array2 = collection.toArray();
        int length = array2.length;
        for (int i2 = 0; i2 < length; i2++) {
            zzdbk.zzd(array2[i2], i2);
        }
        return zzb(array2, array2.length);
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i2, E e2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int i2, Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzday, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (obj == zzdaq.checkNotNull(this)) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            int size = size();
            if (size == list.size()) {
                if (list instanceof RandomAccess) {
                    for (int i2 = 0; i2 < size; i2++) {
                        if (zzdao.equal(get(i2), list.get(i2))) {
                        }
                    }
                    return true;
                }
                int size2 = size();
                Iterator<E> it = list.iterator();
                int i3 = 0;
                while (true) {
                    if (i3 < size2) {
                        if (!it.hasNext()) {
                            break;
                        }
                        E e2 = get(i3);
                        i3++;
                        if (!zzdao.equal(e2, it.next())) {
                            break;
                        }
                    } else if (!it.hasNext()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        int size = size();
        int iHashCode = 1;
        for (int i2 = 0; i2 < size; i2++) {
            iHashCode = (((iHashCode * 31) + get(i2).hashCode()) ^ (-1)) ^ (-1);
        }
        return iHashCode;
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        int i2 = 0;
        if (obj == null) {
            while (i2 < size) {
                if (get(i2) == null) {
                    return i2;
                }
                i2++;
            }
        } else {
            while (i2 < size) {
                if (obj.equals(get(i2))) {
                    return i2;
                }
                i2++;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        if (obj == null) {
            for (int size = size() - 1; size >= 0; size--) {
                if (get(size) == null) {
                    return size;
                }
            }
        } else {
            for (int size2 = size() - 1; size2 >= 0; size2--) {
                if (obj.equals(get(size2))) {
                    return size2;
                }
            }
        }
        return -1;
    }

    @Override // java.util.List
    public /* synthetic */ ListIterator listIterator() {
        return (zzdbx) listIterator(0);
    }

    @Override // java.util.List
    public /* synthetic */ ListIterator listIterator(int i2) {
        zzdaq.zzs(i2, size());
        return isEmpty() ? zzgpb : new zzdbf(this, i2);
    }

    @Override // java.util.List
    @Deprecated
    public final E remove(int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final E set(int i2, E e2) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzday
    int zza(Object[] objArr, int i2) {
        int size = size();
        for (int i3 = 0; i3 < size; i3++) {
            objArr[i2 + i3] = get(i3);
        }
        return i2 + size;
    }

    @Override // com.google.android.gms.internal.ads.zzday, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* JADX INFO: renamed from: zzaoj */
    public final zzdbu<E> iterator() {
        return (zzdbx) listIterator();
    }

    @Override // com.google.android.gms.internal.ads.zzday
    public final zzdbd<E> zzaon() {
        return this;
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: zzt */
    public zzdbd<E> subList(int i2, int i3) {
        zzdaq.zzf(i2, i3, size());
        int i4 = i3 - i2;
        return i4 == size() ? this : i4 == 0 ? (zzdbd<E>) zzdbn.zzgpp : new zzdbe(this, i2, i4);
    }
}
