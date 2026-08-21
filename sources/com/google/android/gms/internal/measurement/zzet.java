package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
final class zzet {
    private static final zzes<?> zza = new zzeu();
    private static final zzes<?> zzb = zzc();

    static zzes<?> zza() {
        return zza;
    }

    static zzes<?> zzb() {
        zzes<?> zzesVar = zzb;
        if (zzesVar != null) {
            return zzesVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    private static zzes<?> zzc() {
        try {
            return (zzes) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
