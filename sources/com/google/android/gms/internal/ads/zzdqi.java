package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
final class zzdqi extends zzdpg<Double> implements zzdrd<Double>, zzdss, RandomAccess {
    private static final zzdqi zzhhg;
    private int size;
    private double[] zzhhh;

    static {
        zzdqi zzdqiVar = new zzdqi(new double[0], 0);
        zzhhg = zzdqiVar;
        zzdqiVar.zzaxj();
    }

    zzdqi() {
        this(new double[10], 0);
    }

    private zzdqi(double[] dArr, int i2) {
        this.zzhhh = dArr;
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
        double dDoubleValue = ((Double) obj).doubleValue();
        zzaxk();
        if (i2 < 0 || i2 > (i3 = this.size)) {
            throw new IndexOutOfBoundsException(zzfk(i2));
        }
        double[] dArr = this.zzhhh;
        if (i3 < dArr.length) {
            System.arraycopy(dArr, i2, dArr, i2 + 1, i3 - i2);
        } else {
            double[] dArr2 = new double[((i3 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i2);
            System.arraycopy(this.zzhhh, i2, dArr2, i2 + 1, this.size - i2);
            this.zzhhh = dArr2;
        }
        this.zzhhh[i2] = dDoubleValue;
        this.size++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        zzd(((Double) obj).doubleValue());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        zzaxk();
        zzdqx.checkNotNull(collection);
        if (!(collection instanceof zzdqi)) {
            return super.addAll(collection);
        }
        zzdqi zzdqiVar = (zzdqi) collection;
        int i2 = zzdqiVar.size;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.size;
        if (Integer.MAX_VALUE - i3 < i2) {
            throw new OutOfMemoryError();
        }
        int i4 = i3 + i2;
        double[] dArr = this.zzhhh;
        if (i4 > dArr.length) {
            this.zzhhh = Arrays.copyOf(dArr, i4);
        }
        System.arraycopy(zzdqiVar.zzhhh, 0, this.zzhhh, this.size, zzdqiVar.size);
        this.size = i4;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzdqi)) {
            return super.equals(obj);
        }
        zzdqi zzdqiVar = (zzdqi) obj;
        if (this.size != zzdqiVar.size) {
            return false;
        }
        double[] dArr = zzdqiVar.zzhhh;
        for (int i2 = 0; i2 < this.size; i2++) {
            if (Double.doubleToLongBits(this.zzhhh[i2]) != Double.doubleToLongBits(dArr[i2])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        zzfj(i2);
        return Double.valueOf(this.zzhhh[i2]);
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iZzfk = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            iZzfk = (iZzfk * 31) + zzdqx.zzfk(Double.doubleToLongBits(this.zzhhh[i2]));
        }
        return iZzfk;
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        zzaxk();
        zzfj(i2);
        double[] dArr = this.zzhhh;
        double d2 = dArr[i2];
        if (i2 < this.size - 1) {
            System.arraycopy(dArr, i2 + 1, dArr, i2, (r3 - i2) - 1);
        }
        this.size--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d2);
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        zzaxk();
        for (int i2 = 0; i2 < this.size; i2++) {
            if (obj.equals(Double.valueOf(this.zzhhh[i2]))) {
                double[] dArr = this.zzhhh;
                System.arraycopy(dArr, i2 + 1, dArr, i2, (this.size - i2) - 1);
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
        double[] dArr = this.zzhhh;
        System.arraycopy(dArr, i3, dArr, i2, this.size - i3);
        this.size -= i3 - i2;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i2, Object obj) {
        double dDoubleValue = ((Double) obj).doubleValue();
        zzaxk();
        zzfj(i2);
        double[] dArr = this.zzhhh;
        double d2 = dArr[i2];
        dArr[i2] = dDoubleValue;
        return Double.valueOf(d2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    public final void zzd(double d2) {
        zzaxk();
        int i2 = this.size;
        double[] dArr = this.zzhhh;
        if (i2 == dArr.length) {
            double[] dArr2 = new double[((i2 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i2);
            this.zzhhh = dArr2;
        }
        double[] dArr3 = this.zzhhh;
        int i3 = this.size;
        this.size = i3 + 1;
        dArr3[i3] = d2;
    }

    @Override // com.google.android.gms.internal.ads.zzdrd
    public final /* synthetic */ zzdrd<Double> zzfl(int i2) {
        if (i2 >= this.size) {
            return new zzdqi(Arrays.copyOf(this.zzhhh, i2), this.size);
        }
        throw new IllegalArgumentException();
    }
}
