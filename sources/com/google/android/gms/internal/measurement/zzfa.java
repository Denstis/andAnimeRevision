package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class zzfa {
    static final /* synthetic */ int[] zza;
    static final /* synthetic */ int[] zzb = new int[zzfq.values().length];

    static {
        try {
            zzb[zzfq.BYTE_STRING.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            zzb[zzfq.MESSAGE.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            zzb[zzfq.STRING.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        zza = new int[zzez.values().length];
        try {
            zza[zzez.MAP.ordinal()] = 1;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            zza[zzez.VECTOR.ordinal()] = 2;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            zza[zzez.SCALAR.ordinal()] = 3;
        } catch (NoSuchFieldError unused6) {
        }
    }
}
