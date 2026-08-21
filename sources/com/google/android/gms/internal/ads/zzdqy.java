package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
final class zzdqy extends zzdpg<Integer> implements zzdrb, zzdss, RandomAccess {
    private static final zzdqy zzhlm;
    private int size;
    private int[] zzhln;

    static {
        zzdqy zzdqyVar = new zzdqy(new int[0], 0);
        zzhlm = zzdqyVar;
        zzdqyVar.zzaxj();
    }

    zzdqy() {
        this(new int[10], 0);
    }

    private zzdqy(int[] iArr, int i2) {
        this.zzhln = iArr;
        this.size = i2;
    }

    public static zzdqy zzbab() {
        return zzhlm;
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
        int iIntValue = ((Integer) obj).intValue();
        zzaxk();
        if (i2 < 0 || i2 > (i3 = this.size)) {
            throw new IndexOutOfBoundsException(zzfk(i2));
        }
        int[] iArr = this.zzhln;
        if (i3 < iArr.length) {
            System.arraycopy(iArr, i2, iArr, i2 + 1, i3 - i2);
        } else {
            int[] iArr2 = new int[((i3 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            System.arraycopy(this.zzhln, i2, iArr2, i2 + 1, this.size - i2);
            this.zzhln = iArr2;
        }
        this.zzhln[i2] = iIntValue;
        this.size++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        zzgp(((Integer) obj).intValue());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        zzaxk();
        zzdqx.checkNotNull(collection);
        if (!(collection instanceof zzdqy)) {
            return super.addAll(collection);
        }
        zzdqy zzdqyVar = (zzdqy) collection;
        int i2 = zzdqyVar.size;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.size;
        if (Integer.MAX_VALUE - i3 < i2) {
            throw new OutOfMemoryError();
        }
        int i4 = i3 + i2;
        int[] iArr = this.zzhln;
        if (i4 > iArr.length) {
            this.zzhln = Arrays.copyOf(iArr, i4);
        }
        System.arraycopy(zzdqyVar.zzhln, 0, this.zzhln, this.size, zzdqyVar.size);
        this.size = i4;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzdqy)) {
            return super.equals(obj);
        }
        zzdqy zzdqyVar = (zzdqy) obj;
        if (this.size != zzdqyVar.size) {
            return false;
        }
        int[] iArr = zzdqyVar.zzhln;
        for (int i2 = 0; i2 < this.size; i2++) {
            if (this.zzhln[i2] != iArr[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        return Integer.valueOf(getInt(i2));
    }

    public final int getInt(int i2) {
        zzfj(i2);
        return this.zzhln[i2];
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i2 = 1;
        for (int i3 = 0; i3 < this.size; i3++) {
            i2 = (i2 * 31) + this.zzhln[i3];
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        zzaxk();
        zzfj(i2);
        int[] iArr = this.zzhln;
        int i3 = iArr[i2];
        if (i2 < this.size - 1) {
            System.arraycopy(iArr, i2 + 1, iArr, i2, (r2 - i2) - 1);
        }
        this.size--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i3);
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        zzaxk();
        for (int i2 = 0; i2 < this.size; i2++) {
            if (obj.equals(Integer.valueOf(this.zzhln[i2]))) {
                int[] iArr = this.zzhln;
                System.arraycopy(iArr, i2 + 1, iArr, i2, (this.size - i2) - 1);
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
        int[] iArr = this.zzhln;
        System.arraycopy(iArr, i3, iArr, i2, this.size - i3);
        this.size -= i3 - i2;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i2, Object obj) {
        int iIntValue = ((Integer) obj).intValue();
        zzaxk();
        zzfj(i2);
        int[] iArr = this.zzhln;
        int i3 = iArr[i2];
        iArr[i2] = iIntValue;
        return Integer.valueOf(i3);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.ads.zzdrd
    /* JADX INFO: renamed from: zzgo, reason: merged with bridge method [inline-methods] */
    public final zzdrb zzfl(int i2) {
        if (i2 >= this.size) {
            return new zzdqy(Arrays.copyOf(this.zzhln, i2), this.size);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.ads.zzdrb
    public final void zzgp(int i2) {
        zzaxk();
        int i3 = this.size;
        int[] iArr = this.zzhln;
        if (i3 == iArr.length) {
            int[] iArr2 = new int[((i3 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i3);
            this.zzhln = iArr2;
        }
        int[] iArr3 = this.zzhln;
        int i4 = this.size;
        this.size = i4 + 1;
        iArr3[i4] = i2;
    }
}
