package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class zzdok {
    private static void zza(byte[] bArr, long j2, int i2) {
        int i3 = 0;
        while (i3 < 4) {
            bArr[i2 + i3] = (byte) (255 & j2);
            i3++;
            j2 >>= 8;
        }
    }

    private static long zze(byte[] bArr, int i2) {
        return ((long) (((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16))) & 4294967295L;
    }

    static byte[] zzf(byte[] bArr, byte[] bArr2) {
        if (bArr.length != 32) {
            throw new IllegalArgumentException("The key length in bytes must be 32.");
        }
        long jZzg = zzg(bArr, 0, 0) & 67108863;
        int i2 = 2;
        int i3 = 3;
        long jZzg2 = zzg(bArr, 3, 2) & 67108611;
        long jZzg3 = zzg(bArr, 6, 4) & 67092735;
        long jZzg4 = zzg(bArr, 9, 6) & 66076671;
        long jZzg5 = zzg(bArr, 12, 8) & 1048575;
        long j2 = jZzg2 * 5;
        long j3 = jZzg3 * 5;
        long j4 = jZzg4 * 5;
        long j5 = jZzg5 * 5;
        byte[] bArr3 = new byte[17];
        long j6 = 0;
        long j7 = 0;
        long j8 = 0;
        long j9 = 0;
        long j10 = 0;
        int i4 = 0;
        while (i4 < bArr2.length) {
            int iMin = Math.min(16, bArr2.length - i4);
            System.arraycopy(bArr2, i4, bArr3, 0, iMin);
            bArr3[iMin] = 1;
            if (iMin != 16) {
                Arrays.fill(bArr3, iMin + 1, 17, (byte) 0);
            }
            long jZzg6 = j10 + zzg(bArr3, 0, 0);
            long jZzg7 = j6 + zzg(bArr3, i3, i2);
            long jZzg8 = j7 + zzg(bArr3, 6, 4);
            long jZzg9 = j8 + zzg(bArr3, 9, 6);
            long jZzg10 = j9 + (zzg(bArr3, 12, 8) | ((long) (bArr3[16] << 24)));
            long j11 = (jZzg6 * jZzg) + (jZzg7 * j5) + (jZzg8 * j4) + (jZzg9 * j3) + (jZzg10 * j2);
            long j12 = (jZzg6 * jZzg2) + (jZzg7 * jZzg) + (jZzg8 * j5) + (jZzg9 * j4) + (jZzg10 * j3);
            long j13 = (jZzg6 * jZzg3) + (jZzg7 * jZzg2) + (jZzg8 * jZzg) + (jZzg9 * j5) + (jZzg10 * j4);
            long j14 = (jZzg6 * jZzg4) + (jZzg7 * jZzg3) + (jZzg8 * jZzg2) + (jZzg9 * jZzg) + (jZzg10 * j5);
            long j15 = j12 + (j11 >> 26);
            long j16 = j13 + (j15 >> 26);
            long j17 = j14 + (j16 >> 26);
            long j18 = (jZzg6 * jZzg5) + (jZzg7 * jZzg4) + (jZzg8 * jZzg3) + (jZzg9 * jZzg2) + (jZzg10 * jZzg) + (j17 >> 26);
            long j19 = (j11 & 67108863) + ((j18 >> 26) * 5);
            j6 = (j15 & 67108863) + (j19 >> 26);
            i4 += 16;
            j7 = j16 & 67108863;
            j8 = j17 & 67108863;
            j9 = j18 & 67108863;
            j10 = j19 & 67108863;
            i2 = 2;
            i3 = 3;
        }
        long j20 = j7 + (j6 >> 26);
        long j21 = j20 & 67108863;
        long j22 = j8 + (j20 >> 26);
        long j23 = j22 & 67108863;
        long j24 = j9 + (j22 >> 26);
        long j25 = j24 & 67108863;
        long j26 = j10 + ((j24 >> 26) * 5);
        long j27 = j26 & 67108863;
        long j28 = (j6 & 67108863) + (j26 >> 26);
        long j29 = j27 + 5;
        long j30 = j29 & 67108863;
        long j31 = (j29 >> 26) + j28;
        long j32 = j21 + (j31 >> 26);
        long j33 = j23 + (j32 >> 26);
        long j34 = j33 & 67108863;
        long j35 = (j25 + (j33 >> 26)) - 67108864;
        long j36 = j35 >> 63;
        long j37 = j27 & j36;
        long j38 = j28 & j36;
        long j39 = j21 & j36;
        long j40 = j23 & j36;
        long j41 = j25 & j36;
        long j42 = j36 ^ (-1);
        long j43 = (j31 & 67108863 & j42) | j38;
        long j44 = (j32 & 67108863 & j42) | j39;
        long j45 = (j34 & j42) | j40;
        long j46 = (j35 & j42) | j41;
        long j47 = ((j43 << 26) | j37 | (j30 & j42)) & 4294967295L;
        long j48 = ((j43 >> 6) | (j44 << 20)) & 4294967295L;
        long j49 = ((j44 >> 12) | (j45 << 14)) & 4294967295L;
        long j50 = ((j45 >> 18) | (j46 << 8)) & 4294967295L;
        long jZze = j47 + zze(bArr, 16);
        long j51 = jZze & 4294967295L;
        long jZze2 = j48 + zze(bArr, 20) + (jZze >> 32);
        long j52 = jZze2 & 4294967295L;
        long jZze3 = j49 + zze(bArr, 24) + (jZze2 >> 32);
        long j53 = jZze3 & 4294967295L;
        long jZze4 = (j50 + zze(bArr, 28) + (jZze3 >> 32)) & 4294967295L;
        byte[] bArr4 = new byte[16];
        zza(bArr4, j51, 0);
        zza(bArr4, j52, 4);
        zza(bArr4, j53, 8);
        zza(bArr4, jZze4, 12);
        return bArr4;
    }

    private static long zzg(byte[] bArr, int i2, int i3) {
        return (zze(bArr, i2) >> i3) & 67108863;
    }
}
