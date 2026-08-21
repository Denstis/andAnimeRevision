package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzdba<E> {
    zzdba() {
    }

    public zzdba<E> zza(Iterator<? extends E> it) {
        while (it.hasNext()) {
            zzab(it.next());
        }
        return this;
    }

    public abstract zzdba<E> zzab(E e2);

    public zzdba<E> zze(Iterable<? extends E> iterable) {
        Iterator<? extends E> it = iterable.iterator();
        while (it.hasNext()) {
            zzab(it.next());
        }
        return this;
    }
}
