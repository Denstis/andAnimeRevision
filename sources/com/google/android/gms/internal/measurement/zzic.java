package com.google.android.gms.internal.measurement;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
final class zzic implements Iterator<String> {
    private Iterator<String> zza;
    private final /* synthetic */ zzia zzb;

    zzic(zzia zziaVar) {
        this.zzb = zziaVar;
        this.zza = this.zzb.zza.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.zza.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
