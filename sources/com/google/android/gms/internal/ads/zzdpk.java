package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
final class zzdpk extends zzdpg<Boolean> implements zzdrd<Boolean>, zzdss, RandomAccess {
    private static final zzdpk zzhfv;
    private int size;
    private boolean[] zzhfw;

    static {
        zzdpk zzdpkVar = new zzdpk(new boolean[0], 0);
        zzhfv = zzdpkVar;
        zzdpkVar.zzaxj();
    }

    zzdpk() {
        this(new boolean[10], 0);
    }

    private zzdpk(boolean[] zArr, int i2) {
        this.zzhfw = zArr;
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
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        zzaxk();
        if (i2 < 0 || i2 > (i3 = this.size)) {
            throw new IndexOutOfBoundsException(zzfk(i2));
        }
        boolean[] zArr = this.zzhfw;
        if (i3 < zArr.length) {
            System.arraycopy(zArr, i2, zArr, i2 + 1, i3 - i2);
        } else {
            boolean[] zArr2 = new boolean[((i3 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i2);
            System.arraycopy(this.zzhfw, i2, zArr2, i2 + 1, this.size - i2);
            this.zzhfw = zArr2;
        }
        this.zzhfw[i2] = zBooleanValue;
        this.size++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        addBoolean(((Boolean) obj).booleanValue());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        zzaxk();
        zzdqx.checkNotNull(collection);
        if (!(collection instanceof zzdpk)) {
            return super.addAll(collection);
        }
        zzdpk zzdpkVar = (zzdpk) collection;
        int i2 = zzdpkVar.size;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.size;
        if (Integer.MAX_VALUE - i3 < i2) {
            throw new OutOfMemoryError();
        }
        int i4 = i3 + i2;
        boolean[] zArr = this.zzhfw;
        if (i4 > zArr.length) {
            this.zzhfw = Arrays.copyOf(zArr, i4);
        }
        System.arraycopy(zzdpkVar.zzhfw, 0, this.zzhfw, this.size, zzdpkVar.size);
        this.size = i4;
        ((AbstractList) this).modCount++;
        return true;
    }

    public final void addBoolean(boolean z) {
        zzaxk();
        int i2 = this.size;
        boolean[] zArr = this.zzhfw;
        if (i2 == zArr.length) {
            boolean[] zArr2 = new boolean[((i2 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i2);
            this.zzhfw = zArr2;
        }
        boolean[] zArr3 = this.zzhfw;
        int i3 = this.size;
        this.size = i3 + 1;
        zArr3[i3] = z;
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzdpk)) {
            return super.equals(obj);
        }
        zzdpk zzdpkVar = (zzdpk) obj;
        if (this.size != zzdpkVar.size) {
            return false;
        }
        boolean[] zArr = zzdpkVar.zzhfw;
        for (int i2 = 0; i2 < this.size; i2++) {
            if (this.zzhfw[i2] != zArr[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        zzfj(i2);
        return Boolean.valueOf(this.zzhfw[i2]);
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iZzbj = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            iZzbj = (iZzbj * 31) + zzdqx.zzbj(this.zzhfw[i2]);
        }
        return iZzbj;
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        zzaxk();
        zzfj(i2);
        boolean[] zArr = this.zzhfw;
        boolean z = zArr[i2];
        if (i2 < this.size - 1) {
            System.arraycopy(zArr, i2 + 1, zArr, i2, (r2 - i2) - 1);
        }
        this.size--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z);
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        zzaxk();
        for (int i2 = 0; i2 < this.size; i2++) {
            if (obj.equals(Boolean.valueOf(this.zzhfw[i2]))) {
                boolean[] zArr = this.zzhfw;
                System.arraycopy(zArr, i2 + 1, zArr, i2, (this.size - i2) - 1);
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
        boolean[] zArr = this.zzhfw;
        System.arraycopy(zArr, i3, zArr, i2, this.size - i3);
        this.size -= i3 - i2;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i2, Object obj) {
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        zzaxk();
        zzfj(i2);
        boolean[] zArr = this.zzhfw;
        boolean z = zArr[i2];
        zArr[i2] = zBooleanValue;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.ads.zzdrd
    public final /* synthetic */ zzdrd<Boolean> zzfl(int i2) {
        if (i2 >= this.size) {
            return new zzdpk(Arrays.copyOf(this.zzhfw, i2), this.size);
        }
        throw new IllegalArgumentException();
    }
}
