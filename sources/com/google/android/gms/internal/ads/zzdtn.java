package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
abstract class zzdtn<T, B> {
    zzdtn() {
    }

    abstract void zza(B b2, int i2, long j2);

    abstract void zza(B b2, int i2, zzdpm zzdpmVar);

    abstract void zza(B b2, int i2, T t);

    abstract void zza(T t, zzduk zzdukVar);

    abstract boolean zza(zzdsw zzdswVar);

    final boolean zza(B b2, zzdsw zzdswVar) throws zzdrg {
        int tag = zzdswVar.getTag();
        int i2 = tag >>> 3;
        int i3 = tag & 7;
        if (i3 == 0) {
            zza(b2, i2, zzdswVar.zzaxw());
            return true;
        }
        if (i3 == 1) {
            zzb(b2, i2, zzdswVar.zzaxy());
            return true;
        }
        if (i3 == 2) {
            zza((Object) b2, i2, zzdswVar.zzayc());
            return true;
        }
        if (i3 != 3) {
            if (i3 == 4) {
                return false;
            }
            if (i3 != 5) {
                throw zzdrg.zzbah();
            }
            zzc(b2, i2, zzdswVar.zzaxz());
            return true;
        }
        B bZzbbw = zzbbw();
        int i4 = 4 | (i2 << 3);
        while (zzdswVar.zzays() != Integer.MAX_VALUE && zza(bZzbbw, zzdswVar)) {
        }
        if (i4 != zzdswVar.getTag()) {
            throw zzdrg.zzbag();
        }
        zza(b2, i2, zzaq(bZzbbw));
        return true;
    }

    abstract void zzak(Object obj);

    abstract T zzaq(B b2);

    abstract int zzau(T t);

    abstract T zzay(Object obj);

    abstract B zzaz(Object obj);

    abstract void zzb(B b2, int i2, long j2);

    abstract int zzba(T t);

    abstract B zzbbw();

    abstract void zzc(B b2, int i2, int i3);

    abstract void zzc(T t, zzduk zzdukVar);

    abstract void zzh(Object obj, T t);

    abstract void zzi(Object obj, B b2);

    abstract T zzj(T t, T t2);
}
