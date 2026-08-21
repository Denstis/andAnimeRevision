package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
final class zzgc extends zzdo<Long> implements zzfm, zzha, RandomAccess {
    private static final zzgc zza;
    private long[] zzb;
    private int zzc;

    static {
        zzgc zzgcVar = new zzgc(new long[0], 0);
        zza = zzgcVar;
        zzgcVar.h_();
    }

    zzgc() {
        this(new long[10], 0);
    }

    private zzgc(long[] jArr, int i2) {
        this.zzb = jArr;
        this.zzc = i2;
    }

    public static zzgc zzd() {
        return zza;
    }

    private final void zzd(int i2) {
        if (i2 < 0 || i2 >= this.zzc) {
            throw new IndexOutOfBoundsException(zze(i2));
        }
    }

    private final String zze(int i2) {
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
        long jLongValue = ((Long) obj).longValue();
        zzc();
        if (i2 < 0 || i2 > (i3 = this.zzc)) {
            throw new IndexOutOfBoundsException(zze(i2));
        }
        long[] jArr = this.zzb;
        if (i3 < jArr.length) {
            System.arraycopy(jArr, i2, jArr, i2 + 1, i3 - i2);
        } else {
            long[] jArr2 = new long[((i3 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i2);
            System.arraycopy(this.zzb, i2, jArr2, i2 + 1, this.zzc - i2);
            this.zzb = jArr2;
        }
        this.zzb[i2] = jLongValue;
        this.zzc++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzdo, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        zza(((Long) obj).longValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzdo, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        zzc();
        zzff.zza(collection);
        if (!(collection instanceof zzgc)) {
            return super.addAll(collection);
        }
        zzgc zzgcVar = (zzgc) collection;
        int i2 = zzgcVar.zzc;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.zzc;
        if (Integer.MAX_VALUE - i3 < i2) {
            throw new OutOfMemoryError();
        }
        int i4 = i3 + i2;
        long[] jArr = this.zzb;
        if (i4 > jArr.length) {
            this.zzb = Arrays.copyOf(jArr, i4);
        }
        System.arraycopy(zzgcVar.zzb, 0, this.zzb, this.zzc, zzgcVar.zzc);
        this.zzc = i4;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzdo, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzgc)) {
            return super.equals(obj);
        }
        zzgc zzgcVar = (zzgc) obj;
        if (this.zzc != zzgcVar.zzc) {
            return false;
        }
        long[] jArr = zzgcVar.zzb;
        for (int i2 = 0; i2 < this.zzc; i2++) {
            if (this.zzb[i2] != jArr[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        return Long.valueOf(zzb(i2));
    }

    @Override // com.google.android.gms.internal.measurement.zzdo, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iZza = 1;
        for (int i2 = 0; i2 < this.zzc; i2++) {
            iZza = (iZza * 31) + zzff.zza(this.zzb[i2]);
        }
        return iZza;
    }

    @Override // com.google.android.gms.internal.measurement.zzdo, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i2) {
        zzc();
        zzd(i2);
        long[] jArr = this.zzb;
        long j2 = jArr[i2];
        if (i2 < this.zzc - 1) {
            System.arraycopy(jArr, i2 + 1, jArr, i2, (r3 - i2) - 1);
        }
        this.zzc--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j2);
    }

    @Override // com.google.android.gms.internal.measurement.zzdo, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        zzc();
        for (int i2 = 0; i2 < this.zzc; i2++) {
            if (obj.equals(Long.valueOf(this.zzb[i2]))) {
                long[] jArr = this.zzb;
                System.arraycopy(jArr, i2 + 1, jArr, i2, (this.zzc - i2) - 1);
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
        long[] jArr = this.zzb;
        System.arraycopy(jArr, i3, jArr, i2, this.zzc - i3);
        this.zzc -= i3 - i2;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzdo, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i2, Object obj) {
        long jLongValue = ((Long) obj).longValue();
        zzc();
        zzd(i2);
        long[] jArr = this.zzb;
        long j2 = jArr[i2];
        jArr[i2] = jLongValue;
        return Long.valueOf(j2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzfm
    public final void zza(long j2) {
        zzc();
        int i2 = this.zzc;
        long[] jArr = this.zzb;
        if (i2 == jArr.length) {
            long[] jArr2 = new long[((i2 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i2);
            this.zzb = jArr2;
        }
        long[] jArr3 = this.zzb;
        int i3 = this.zzc;
        this.zzc = i3 + 1;
        jArr3[i3] = j2;
    }

    @Override // com.google.android.gms.internal.measurement.zzfm
    public final long zzb(int i2) {
        zzd(i2);
        return this.zzb[i2];
    }

    @Override // com.google.android.gms.internal.measurement.zzfl
    /* JADX INFO: renamed from: zzc, reason: merged with bridge method [inline-methods] */
    public final zzfm zza(int i2) {
        if (i2 >= this.zzc) {
            return new zzgc(Arrays.copyOf(this.zzb, i2), this.zzc);
        }
        throw new IllegalArgumentException();
    }
}
