package com.google.android.gms.internal.measurement;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
final class zzdx extends zzdz {
    private int zza = 0;
    private final int zzb;
    private final /* synthetic */ zzdu zzc;

    zzdx(zzdu zzduVar) {
        this.zzc = zzduVar;
        this.zzb = this.zzc.zza();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza < this.zzb;
    }

    @Override // com.google.android.gms.internal.measurement.zzed
    public final byte zza() {
        int i2 = this.zza;
        if (i2 >= this.zzb) {
            throw new NoSuchElementException();
        }
        this.zza = i2 + 1;
        return this.zzc.zzb(i2);
    }
}
