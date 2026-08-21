package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
class zzdbb<E> extends zzdba<E> {
    int size;
    Object[] zzgoz;
    boolean zzgpa;

    zzdbb(int i2) {
        zzdax.zzf(i2, "initialCapacity");
        this.zzgoz = new Object[i2];
        this.size = 0;
    }

    private final void zzdq(int i2) {
        Object[] objArr = this.zzgoz;
        if (objArr.length >= i2) {
            if (this.zzgpa) {
                this.zzgoz = (Object[]) objArr.clone();
                this.zzgpa = false;
                return;
            }
            return;
        }
        int length = objArr.length;
        if (i2 < 0) {
            throw new AssertionError("cannot store more than MAX_VALUE elements");
        }
        int iHighestOneBit = length + (length >> 1) + 1;
        if (iHighestOneBit < i2) {
            iHighestOneBit = Integer.highestOneBit(i2 - 1) << 1;
        }
        if (iHighestOneBit < 0) {
            iHighestOneBit = Integer.MAX_VALUE;
        }
        this.zzgoz = Arrays.copyOf(objArr, iHighestOneBit);
        this.zzgpa = false;
    }

    @Override // com.google.android.gms.internal.ads.zzdba
    /* JADX INFO: renamed from: zzac, reason: merged with bridge method [inline-methods] */
    public zzdbb<E> zzab(E e2) {
        zzdaq.checkNotNull(e2);
        zzdq(this.size + 1);
        Object[] objArr = this.zzgoz;
        int i2 = this.size;
        this.size = i2 + 1;
        objArr[i2] = e2;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdba
    public zzdba<E> zze(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            zzdq(this.size + collection.size());
            if (collection instanceof zzday) {
                this.size = ((zzday) collection).zza(this.zzgoz, this.size);
                return this;
            }
        }
        super.zze(iterable);
        return this;
    }
}
