package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
final class zzgy {
    private static final zzgw zza = zzc();
    private static final zzgw zzb = new zzgv();

    static zzgw zza() {
        return zza;
    }

    static zzgw zzb() {
        return zzb;
    }

    private static zzgw zzc() {
        try {
            return (zzgw) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
