package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
abstract class zzhv<T, B> {
    zzhv() {
    }

    abstract B zza();

    abstract T zza(B b2);

    abstract void zza(B b2, int i2, int i3);

    abstract void zza(B b2, int i2, long j2);

    abstract void zza(B b2, int i2, zzdu zzduVar);

    abstract void zza(B b2, int i2, T t);

    abstract void zza(T t, zzis zzisVar);

    abstract void zza(Object obj, T t);

    abstract boolean zza(zzhe zzheVar);

    final boolean zza(B b2, zzhe zzheVar) throws zzfo {
        int iZzb = zzheVar.zzb();
        int i2 = iZzb >>> 3;
        int i3 = iZzb & 7;
        if (i3 == 0) {
            zza(b2, i2, zzheVar.zzg());
            return true;
        }
        if (i3 == 1) {
            zzb(b2, i2, zzheVar.zzi());
            return true;
        }
        if (i3 == 2) {
            zza((Object) b2, i2, zzheVar.zzn());
            return true;
        }
        if (i3 != 3) {
            if (i3 == 4) {
                return false;
            }
            if (i3 != 5) {
                throw zzfo.zzf();
            }
            zza((Object) b2, i2, zzheVar.zzj());
            return true;
        }
        B bZza = zza();
        int i4 = 4 | (i2 << 3);
        while (zzheVar.zza() != Integer.MAX_VALUE && zza((Object) bZza, zzheVar)) {
        }
        if (i4 != zzheVar.zzb()) {
            throw zzfo.zze();
        }
        zza(b2, i2, zza(bZza));
        return true;
    }

    abstract T zzb(Object obj);

    abstract void zzb(B b2, int i2, long j2);

    abstract void zzb(T t, zzis zzisVar);

    abstract void zzb(Object obj, B b2);

    abstract B zzc(Object obj);

    abstract T zzc(T t, T t2);

    abstract void zzd(Object obj);

    abstract int zze(T t);

    abstract int zzf(T t);
}
