package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzdrv implements zzdsd {
    private zzdsd[] zzhms;

    zzdrv(zzdsd... zzdsdVarArr) {
        this.zzhms = zzdsdVarArr;
    }

    @Override // com.google.android.gms.internal.ads.zzdsd
    public final boolean zzc(Class<?> cls) {
        for (zzdsd zzdsdVar : this.zzhms) {
            if (zzdsdVar.zzc(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzdsd
    public final zzdse zzd(Class<?> cls) {
        for (zzdsd zzdsdVar : this.zzhms) {
            if (zzdsdVar.zzc(cls)) {
                return zzdsdVar.zzd(cls);
            }
        }
        String strValueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(strValueOf.length() != 0 ? "No factory is available for message type: ".concat(strValueOf) : new String("No factory is available for message type: "));
    }
}
