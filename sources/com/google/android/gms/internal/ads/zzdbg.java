package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzdbg<E> extends zzday<E> implements Set<E> {
    private transient zzdbd<E> zzgpe;

    zzdbg() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> zzdbg<E> zza(int i2, Object... objArr) {
        while (i2 != 0) {
            if (i2 == 1) {
                return zzae(objArr[0]);
            }
            int iZzdr = zzdr(i2);
            Object[] objArr2 = new Object[iZzdr];
            int i3 = iZzdr - 1;
            int i4 = 0;
            int i5 = 0;
            for (int i6 = 0; i6 < i2; i6++) {
                Object objZzd = zzdbk.zzd(objArr[i6], i6);
                int iHashCode = objZzd.hashCode();
                int iZzdp = zzdaz.zzdp(iHashCode);
                while (true) {
                    int i7 = iZzdp & i3;
                    Object obj = objArr2[i7];
                    if (obj == null) {
                        objArr[i5] = objZzd;
                        objArr2[i7] = objZzd;
                        i4 += iHashCode;
                        i5++;
                        break;
                    }
                    if (!obj.equals(objZzd)) {
                        iZzdp++;
                    }
                }
            }
            Arrays.fill(objArr, i5, i2, (Object) null);
            if (i5 == 1) {
                return new zzdbv(objArr[0], i4);
            }
            if (zzdr(i5) >= iZzdr / 2) {
                if (zzu(i5, objArr.length)) {
                    objArr = Arrays.copyOf(objArr, i5);
                }
                return new zzdbt(objArr, i4, objArr2, i3, i5);
            }
            i2 = i5;
        }
        return zzdbt.zzgpu;
    }

    @SafeVarargs
    public static <E> zzdbg<E> zza(E e2, E e3, E e4, E e5, E e6, E e7, E... eArr) {
        zzdaq.checkArgument(eArr.length <= 2147483641, "the total number of elements must fit in an int");
        Object[] objArr = new Object[eArr.length + 6];
        objArr[0] = e2;
        objArr[1] = e3;
        objArr[2] = e4;
        objArr[3] = e5;
        objArr[4] = e6;
        objArr[5] = e7;
        System.arraycopy(eArr, 0, objArr, 6, eArr.length);
        return zza(objArr.length, objArr);
    }

    public static <E> zzdbg<E> zzae(E e2) {
        return new zzdbv(e2);
    }

    static int zzdr(int i2) {
        int iMax = Math.max(i2, 2);
        if (iMax >= 751619276) {
            zzdaq.checkArgument(iMax < 1073741824, "collection too large");
            return 1073741824;
        }
        int iHighestOneBit = Integer.highestOneBit(iMax - 1) << 1;
        while (true) {
            double d2 = iHighestOneBit;
            Double.isNaN(d2);
            if (d2 * 0.7d >= iMax) {
                return iHighestOneBit;
            }
            iHighestOneBit <<= 1;
        }
    }

    public static <E> zzdbj<E> zzds(int i2) {
        zzdax.zzf(i2, "expectedSize");
        return new zzdbj<>(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zzu(int i2, int i3) {
        return i2 < (i3 >> 1) + (i3 >> 2);
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzdbg) && zzaoq() && ((zzdbg) obj).zzaoq() && hashCode() != obj.hashCode()) {
            return false;
        }
        return zzdbs.zza(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return zzdbs.zzf(this);
    }

    @Override // com.google.android.gms.internal.ads.zzday, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // com.google.android.gms.internal.ads.zzday
    public zzdbd<E> zzaon() {
        zzdbd<E> zzdbdVar = this.zzgpe;
        if (zzdbdVar != null) {
            return zzdbdVar;
        }
        zzdbd<E> zzdbdVarZzaor = zzaor();
        this.zzgpe = zzdbdVarZzaor;
        return zzdbdVarZzaor;
    }

    boolean zzaoq() {
        return false;
    }

    zzdbd<E> zzaor() {
        return zzdbd.zzc(toArray());
    }
}
