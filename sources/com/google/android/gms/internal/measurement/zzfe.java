package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzfd;

/* JADX INFO: loaded from: classes.dex */
final class zzfe implements zzgl {
    private static final zzfe zza = new zzfe();

    private zzfe() {
    }

    public static zzfe zza() {
        return zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzgl
    public final boolean zza(Class<?> cls) {
        return zzfd.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.measurement.zzgl
    public final zzgm zzb(Class<?> cls) {
        if (!zzfd.class.isAssignableFrom(cls)) {
            String strValueOf = String.valueOf(cls.getName());
            throw new IllegalArgumentException(strValueOf.length() != 0 ? "Unsupported message type: ".concat(strValueOf) : new String("Unsupported message type: "));
        }
        try {
            return (zzgm) zzfd.zza(cls.asSubclass(zzfd.class)).zza(zzfd.zze.zzc, (Object) null, (Object) null);
        } catch (Exception e2) {
            String strValueOf2 = String.valueOf(cls.getName());
            throw new RuntimeException(strValueOf2.length() != 0 ? "Unable to get message info for ".concat(strValueOf2) : new String("Unable to get message info for "), e2);
        }
    }
}
