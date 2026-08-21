package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
final class zzdqs extends zzdpg<Float> implements zzdrd<Float>, zzdss, RandomAccess {
    private static final zzdqs zzhke;
    private int size;
    private float[] zzhkf;

    static {
        zzdqs zzdqsVar = new zzdqs(new float[0], 0);
        zzhke = zzdqsVar;
        zzdqsVar.zzaxj();
    }

    zzdqs() {
        this(new float[10], 0);
    }

    private zzdqs(float[] fArr, int i2) {
        this.zzhkf = fArr;
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
        float fFloatValue = ((Float) obj).floatValue();
        zzaxk();
        if (i2 < 0 || i2 > (i3 = this.size)) {
            throw new IndexOutOfBoundsException(zzfk(i2));
        }
        float[] fArr = this.zzhkf;
        if (i3 < fArr.length) {
            System.arraycopy(fArr, i2, fArr, i2 + 1, i3 - i2);
        } else {
            float[] fArr2 = new float[((i3 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i2);
            System.arraycopy(this.zzhkf, i2, fArr2, i2 + 1, this.size - i2);
            this.zzhkf = fArr2;
        }
        this.zzhkf[i2] = fFloatValue;
        this.size++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        zzh(((Float) obj).floatValue());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        zzaxk();
        zzdqx.checkNotNull(collection);
        if (!(collection instanceof zzdqs)) {
            return super.addAll(collection);
        }
        zzdqs zzdqsVar = (zzdqs) collection;
        int i2 = zzdqsVar.size;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.size;
        if (Integer.MAX_VALUE - i3 < i2) {
            throw new OutOfMemoryError();
        }
        int i4 = i3 + i2;
        float[] fArr = this.zzhkf;
        if (i4 > fArr.length) {
            this.zzhkf = Arrays.copyOf(fArr, i4);
        }
        System.arraycopy(zzdqsVar.zzhkf, 0, this.zzhkf, this.size, zzdqsVar.size);
        this.size = i4;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzdqs)) {
            return super.equals(obj);
        }
        zzdqs zzdqsVar = (zzdqs) obj;
        if (this.size != zzdqsVar.size) {
            return false;
        }
        float[] fArr = zzdqsVar.zzhkf;
        for (int i2 = 0; i2 < this.size; i2++) {
            if (Float.floatToIntBits(this.zzhkf[i2]) != Float.floatToIntBits(fArr[i2])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        zzfj(i2);
        return Float.valueOf(this.zzhkf[i2]);
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iFloatToIntBits = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            iFloatToIntBits = (iFloatToIntBits * 31) + Float.floatToIntBits(this.zzhkf[i2]);
        }
        return iFloatToIntBits;
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        zzaxk();
        zzfj(i2);
        float[] fArr = this.zzhkf;
        float f2 = fArr[i2];
        if (i2 < this.size - 1) {
            System.arraycopy(fArr, i2 + 1, fArr, i2, (r2 - i2) - 1);
        }
        this.size--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f2);
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        zzaxk();
        for (int i2 = 0; i2 < this.size; i2++) {
            if (obj.equals(Float.valueOf(this.zzhkf[i2]))) {
                float[] fArr = this.zzhkf;
                System.arraycopy(fArr, i2 + 1, fArr, i2, (this.size - i2) - 1);
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
        float[] fArr = this.zzhkf;
        System.arraycopy(fArr, i3, fArr, i2, this.size - i3);
        this.size -= i3 - i2;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzdpg, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i2, Object obj) {
        float fFloatValue = ((Float) obj).floatValue();
        zzaxk();
        zzfj(i2);
        float[] fArr = this.zzhkf;
        float f2 = fArr[i2];
        fArr[i2] = fFloatValue;
        return Float.valueOf(f2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.ads.zzdrd
    public final /* synthetic */ zzdrd<Float> zzfl(int i2) {
        if (i2 >= this.size) {
            return new zzdqs(Arrays.copyOf(this.zzhkf, i2), this.size);
        }
        throw new IllegalArgumentException();
    }

    public final void zzh(float f2) {
        zzaxk();
        int i2 = this.size;
        float[] fArr = this.zzhkf;
        if (i2 == fArr.length) {
            float[] fArr2 = new float[((i2 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i2);
            this.zzhkf = fArr2;
        }
        float[] fArr3 = this.zzhkf;
        int i3 = this.size;
        this.size = i3 + 1;
        fArr3[i3] = f2;
    }
}
