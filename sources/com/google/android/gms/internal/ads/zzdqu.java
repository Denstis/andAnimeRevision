package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;

/* JADX INFO: loaded from: classes.dex */
final class zzdqu implements zzdsd {
    private static final zzdqu zzhkm = new zzdqu();

    private zzdqu() {
    }

    public static zzdqu zzazl() {
        return zzhkm;
    }

    @Override // com.google.android.gms.internal.ads.zzdsd
    public final boolean zzc(Class<?> cls) {
        return zzdqw.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.ads.zzdsd
    public final zzdse zzd(Class<?> cls) {
        if (!zzdqw.class.isAssignableFrom(cls)) {
            String strValueOf = String.valueOf(cls.getName());
            throw new IllegalArgumentException(strValueOf.length() != 0 ? "Unsupported message type: ".concat(strValueOf) : new String("Unsupported message type: "));
        }
        try {
            return (zzdse) zzdqw.zzf(cls.asSubclass(zzdqw.class)).zza(zzdqw.zzd.zzhkx, (Object) null, (Object) null);
        } catch (Exception e2) {
            String strValueOf2 = String.valueOf(cls.getName());
            throw new RuntimeException(strValueOf2.length() != 0 ? "Unable to get message info for ".concat(strValueOf2) : new String("Unable to get message info for "), e2);
        }
    }
}
