package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
final class zzfc extends zzdo<Float> implements zzfl<Float>, zzha, RandomAccess {
    private static final zzfc zza;
    private float[] zzb;
    private int zzc;

    static {
        zzfc zzfcVar = new zzfc(new float[0], 0);
        zza = zzfcVar;
        zzfcVar.h_();
    }

    zzfc() {
        this(new float[10], 0);
    }

    private zzfc(float[] fArr, int i2) {
        this.zzb = fArr;
        this.zzc = i2;
    }

    private final void zzb(int i2) {
        if (i2 < 0 || i2 >= this.zzc) {
            throw new IndexOutOfBoundsException(zzc(i2));
        }
    }

    private final String zzc(int i2) {
        int i3 = this.zzc;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i2);
        sb.append(", Size:");
        sb.append(i3);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzdo, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i2, Object obj) {
        int i3;
        float fFloatValue = ((Float) obj).floatValue();
        zzc();
        if (i2 < 0 || i2 > (i3 = this.zzc)) {
            throw new IndexOutOfBoundsException(zzc(i2));
        }
        float[] fArr = this.zzb;
        if (i3 < fArr.length) {
            System.arraycopy(fArr, i2, fArr, i2 + 1, i3 - i2);
        } else {
            float[] fArr2 = new float[((i3 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i2);
            System.arraycopy(this.zzb, i2, fArr2, i2 + 1, this.zzc - i2);
            this.zzb = fArr2;
        }
        this.zzb[i2] = fFloatValue;
        this.zzc++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzdo, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        zza(((Float) obj).floatValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzdo, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        zzc();
        zzff.zza(collection);
        if (!(collection instanceof zzfc)) {
            return super.addAll(collection);
        }
        zzfc zzfcVar = (zzfc) collection;
        int i2 = zzfcVar.zzc;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.zzc;
        if (Integer.MAX_VALUE - i3 < i2) {
            throw new OutOfMemoryError();
        }
        int i4 = i3 + i2;
        float[] fArr = this.zzb;
        if (i4 > fArr.length) {
            this.zzb = Arrays.copyOf(fArr, i4);
        }
        System.arraycopy(zzfcVar.zzb, 0, this.zzb, this.zzc, zzfcVar.zzc);
        this.zzc = i4;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzdo, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzfc)) {
            return super.equals(obj);
        }
        zzfc zzfcVar = (zzfc) obj;
        if (this.zzc != zzfcVar.zzc) {
            return false;
        }
        float[] fArr = zzfcVar.zzb;
        for (int i2 = 0; i2 < this.zzc; i2++) {
            if (Float.floatToIntBits(this.zzb[i2]) != Float.floatToIntBits(fArr[i2])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        zzb(i2);
        return Float.valueOf(this.zzb[i2]);
    }

    @Override // com.google.android.gms.internal.measurement.zzdo, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iFloatToIntBits = 1;
        for (int i2 = 0; i2 < this.zzc; i2++) {
            iFloatToIntBits = (iFloatToIntBits * 31) + Float.floatToIntBits(this.zzb[i2]);
        }
        return iFloatToIntBits;
    }

    @Override // com.google.android.gms.internal.measurement.zzdo, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        zzc();
        zzb(i2);
        float[] fArr = this.zzb;
        float f2 = fArr[i2];
        if (i2 < this.zzc - 1) {
            System.arraycopy(fArr, i2 + 1, fArr, i2, (r2 - i2) - 1);
        }
        this.zzc--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f2);
    }

    @Override // com.google.android.gms.internal.measurement.zzdo, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        zzc();
        for (int i2 = 0; i2 < this.zzc; i2++) {
            if (obj.equals(Float.valueOf(this.zzb[i2]))) {
                float[] fArr = this.zzb;
                System.arraycopy(fArr, i2 + 1, fArr, i2, (this.zzc - i2) - 1);
                this.zzc--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i2, int i3) {
        zzc();
        if (i3 < i2) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        float[] fArr = this.zzb;
        System.arraycopy(fArr, i3, fArr, i2, this.zzc - i3);
        this.zzc -= i3 - i2;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzdo, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i2, Object obj) {
        float fFloatValue = ((Float) obj).floatValue();
        zzc();
        zzb(i2);
        float[] fArr = this.zzb;
        float f2 = fArr[i2];
        fArr[i2] = fFloatValue;
        return Float.valueOf(f2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzfl
    public final /* synthetic */ zzfl<Float> zza(int i2) {
        if (i2 >= this.zzc) {
            return new zzfc(Arrays.copyOf(this.zzb, i2), this.zzc);
        }
        throw new IllegalArgumentException();
    }

    public final void zza(float f2) {
        zzc();
        int i2 = this.zzc;
        float[] fArr = this.zzb;
        if (i2 == fArr.length) {
            float[] fArr2 = new float[((i2 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i2);
            this.zzb = fArr2;
        }
        float[] fArr3 = this.zzb;
        int i3 = this.zzc;
        this.zzc = i3 + 1;
        fArr3[i3] = f2;
    }
}
