package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class zzdsu<E> extends zzdpg<E> {
    private static final zzdsu<Object> zzhnw;
    private int size;
    private E[] zzgpq;

    static {
        zzdsu<Object> zzdsuVar = new zzdsu<>(new Object[0], 0);
        zzhnw = zzdsuVar;
        zzdsuVar.zzaxj();
    }

    zzdsu() {
        this(new Object[10], 0);
    }

    private zzdsu(E[] eArr, int i2) {
        this.zzgpq = eArr;
        this.size = i2;
    }

    public static <E> zzdsu<E> zzbbi() {
        return (zzdsu<E>) zzhnw;
    }

    private final void zzfj(int i2) {
        if (i2 < 0 || i2 >= this.size) {
            throw new IndexOutOfBoundsException(zzfk(i2));
        }
    }

    private final String zzfk(int i2) {
        int i3 = this.size;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i2);
        sb.append(", Size:");
        sb.append(i3);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractList, java.util.List
    public final void add(int i2, E e2) {
        int i3;
        zzaxk();
        if (i2 < 0 || i2 > (i3 = this.size)) {
            throw new IndexOutOfBoundsException(zzfk(i2));
        }
        E[] eArr = this.zzgpq;
        if (i3 < eArr.length) {
            System.arraycopy(eArr, i2, eArr, i2 + 1, i3 - i2);
        } else {
            E[] eArr2 = (E[]) new Object[((i3 * 3) / 2) + 1];
            System.arraycopy(eArr, 0, eArr2, 0, i2);
            System.arraycopy(this.zzgpq, i2, eArr2, i2 + 1, this.size - i2);
            this.zzgpq = eArr2;
        }
        this.zzgpq[i2] = e2;
        this.size++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e2) {
        zzaxk();
        int i2 = this.size;
        E[] eArr = this.zzgpq;
        if (i2 == eArr.length) {
            this.zzgpq = (E[]) Arrays.copyOf(eArr, ((i2 * 3) / 2) + 1);
        }
        E[] eArr2 = this.zzgpq;
        int i3 = this.size;
        this.size = i3 + 1;
        eArr2[i3] = e2;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i2) {
        zzfj(i2);
        return this.zzgpq[i2];
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractList, java.util.List
    public final E remove(int i2) {
        zzaxk();
        zzfj(i2);
        E[] eArr = this.zzgpq;
        E e2 = eArr[i2];
        if (i2 < this.size - 1) {
            System.arraycopy(eArr, i2 + 1, eArr, i2, (r2 - i2) - 1);
        }
        this.size--;
        ((AbstractList) this).modCount++;
        return e2;
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractList, java.util.List
    public final E set(int i2, E e2) {
        zzaxk();
        zzfj(i2);
        E[] eArr = this.zzgpq;
        E e3 = eArr[i2];
        eArr[i2] = e2;
        ((AbstractList) this).modCount++;
        return e3;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.ads.zzdrd
    public final /* synthetic */ zzdrd zzfl(int i2) {
        if (i2 >= this.size) {
            return new zzdsu(Arrays.copyOf(this.zzgpq, i2), this.size);
        }
        throw new IllegalArgumentException();
    }
}
