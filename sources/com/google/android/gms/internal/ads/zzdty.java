package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzdty {
    /* JADX INFO: Access modifiers changed from: private */
    public static void zza(byte b2, byte b3, byte b4, byte b5, char[] cArr, int i2) throws zzdrg {
        if (zzh(b3) || (((b2 << 28) + (b3 + 112)) >> 30) != 0 || zzh(b4) || zzh(b5)) {
            throw zzdrg.zzbaj();
        }
        int i3 = ((b2 & 7) << 18) | ((b3 & 63) << 12) | ((b4 & 63) << 6) | (b5 & 63);
        cArr[i2] = (char) ((i3 >>> 10) + 55232);
        cArr[i2 + 1] = (char) ((i3 & 1023) + 56320);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zza(byte b2, byte b3, byte b4, char[] cArr, int i2) throws zzdrg {
        if (zzh(b3) || ((b2 == -32 && b3 < -96) || ((b2 == -19 && b3 >= -96) || zzh(b4)))) {
            throw zzdrg.zzbaj();
        }
        cArr[i2] = (char) (((b2 & 15) << 12) | ((b3 & 63) << 6) | (b4 & 63));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zza(byte b2, byte b3, char[] cArr, int i2) throws zzdrg {
        if (b2 < -62 || zzh(b3)) {
            throw zzdrg.zzbaj();
        }
        cArr[i2] = (char) (((b2 & 31) << 6) | (b3 & 63));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zza(byte b2, char[] cArr, int i2) {
        cArr[i2] = (char) b2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zze(byte b2) {
        return b2 >= 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zzf(byte b2) {
        return b2 < -32;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zzg(byte b2) {
        return b2 < -16;
    }

    private static boolean zzh(byte b2) {
        return b2 > -65;
    }
}
