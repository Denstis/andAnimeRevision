package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
final class zzdbi<T> extends zzdbu<T> {
    private boolean zzgpj;
    private final /* synthetic */ Object zzgpk;

    zzdbi(Object obj) {
        this.zzgpk = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.zzgpj;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (this.zzgpj) {
            throw new NoSuchElementException();
        }
        this.zzgpj = true;
        return (T) this.zzgpk;
    }
}
