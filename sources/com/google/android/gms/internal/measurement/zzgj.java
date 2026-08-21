package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
final class zzgj {
    private static final zzgh zza = zzc();
    private static final zzgh zzb = new zzgk();

    static zzgh zza() {
        return zza;
    }

    static zzgh zzb() {
        return zzb;
    }

    private static zzgh zzc() {
        try {
            return (zzgh) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
