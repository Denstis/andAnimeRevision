package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
final class zzdru extends zzdpg<Long> implements zzdrd<Long>, zzdss, RandomAccess {
    private static final zzdru zzhmq;
    private int size;
    private long[] zzhmr;

    static {
        zzdru zzdruVar = new zzdru(new long[0], 0);
        zzhmq = zzdruVar;
        zzdruVar.zzaxj();
    }

    zzdru() {
        this(new long[10], 0);
    }

    private zzdru(long[] jArr, int i2) {
        this.zzhmr = jArr;
        this.size = i2;
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
    public final /* synthetic */ void add(int i2, Object obj) {
        int i3;
        long jLongValue = ((Long) obj).longValue();
        zzaxk();
        if (i2 < 0 || i2 > (i3 = this.size)) {
            throw new IndexOutOfBoundsException(zzfk(i2));
        }
        long[] jArr = this.zzhmr;
        if (i3 < jArr.length) {
            System.arraycopy(jArr, i2, jArr, i2 + 1, i3 - i2);
        } else {
            long[] jArr2 = new long[((i3 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i2);
            System.arraycopy(this.zzhmr, i2, jArr2, i2 + 1, this.size - i2);
            this.zzhmr = jArr2;
        }
        this.zzhmr[i2] = jLongValue;
        this.size++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        zzfl(((Long) obj).longValue());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        zzaxk();
        zzdqx.checkNotNull(collection);
        if (!(collection instanceof zzdru)) {
            return super.addAll(collection);
        }
        zzdru zzdruVar = (zzdru) collection;
        int i2 = zzdruVar.size;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.size;
        if (Integer.MAX_VALUE - i3 < i2) {
            throw new OutOfMemoryError();
        }
        int i4 = i3 + i2;
        long[] jArr = this.zzhmr;
        if (i4 > jArr.length) {
            this.zzhmr = Arrays.copyOf(jArr, i4);
        }
        System.arraycopy(zzdruVar.zzhmr, 0, this.zzhmr, this.size, zzdruVar.size);
        this.size = i4;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzdru)) {
            return super.equals(obj);
        }
        zzdru zzdruVar = (zzdru) obj;
        if (this.size != zzdruVar.size) {
            return false;
        }
        long[] jArr = zzdruVar.zzhmr;
        for (int i2 = 0; i2 < this.size; i2++) {
            if (this.zzhmr[i2] != jArr[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        return Long.valueOf(getLong(i2));
    }

    public final long getLong(int i2) {
        zzfj(i2);
        return this.zzhmr[i2];
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iZzfk = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            iZzfk = (iZzfk * 31) + zzdqx.zzfk(this.zzhmr[i2]);
        }
        return iZzfk;
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        zzaxk();
        zzfj(i2);
        long[] jArr = this.zzhmr;
        long j2 = jArr[i2];
        if (i2 < this.size - 1) {
            System.arraycopy(jArr, i2 + 1, jArr, i2, (r3 - i2) - 1);
        }
        this.size--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j2);
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        zzaxk();
        for (int i2 = 0; i2 < this.size; i2++) {
            if (obj.equals(Long.valueOf(this.zzhmr[i2]))) {
                long[] jArr = this.zzhmr;
                System.arraycopy(jArr, i2 + 1, jArr, i2, (this.size - i2) - 1);
                this.size--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i2, int i3) {
        zzaxk();
        if (i3 < i2) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.zzhmr;
        System.arraycopy(jArr, i3, jArr, i2, this.size - i3);
        this.size -= i3 - i2;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i2, Object obj) {
        long jLongValue = ((Long) obj).longValue();
        zzaxk();
        zzfj(i2);
        long[] jArr = this.zzhmr;
        long j2 = jArr[i2];
        jArr[i2] = jLongValue;
        return Long.valueOf(j2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.ads.zzdrd
    public final /* synthetic */ zzdrd<Long> zzfl(int i2) {
        if (i2 >= this.size) {
            return new zzdru(Arrays.copyOf(this.zzhmr, i2), this.size);
        }
        throw new IllegalArgumentException();
    }

    public final void zzfl(long j2) {
        zzaxk();
        int i2 = this.size;
        long[] jArr = this.zzhmr;
        if (i2 == jArr.length) {
            long[] jArr2 = new long[((i2 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i2);
            this.zzhmr = jArr2;
        }
        long[] jArr3 = this.zzhmr;
        int i3 = this.size;
        this.size = i3 + 1;
        jArr3[i3] = j2;
    }
}
