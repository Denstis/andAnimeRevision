package com.google.android.gms.internal.ads;

import android.util.Pair;

/* JADX INFO: loaded from: classes.dex */
public final class zznu {
    private static final byte[] zzbfz = {0, 0, 0, 1};
    private static final int[] zzbga = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};
    private static final int[] zzbgb = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    private static int zza(zznz zznzVar) {
        int iZzbc = zznzVar.zzbc(5);
        return iZzbc == 31 ? zznzVar.zzbc(6) + 32 : iZzbc;
    }

    private static int zzb(zznz zznzVar) {
        int iZzbc = zznzVar.zzbc(4);
        if (iZzbc == 15) {
            return zznzVar.zzbc(24);
        }
        zznr.checkArgument(iZzbc < 13);
        return zzbga[iZzbc];
    }

    public static byte[] zzc(byte[] bArr, int i2, int i3) {
        byte[] bArr2 = zzbfz;
        byte[] bArr3 = new byte[bArr2.length + i3];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i2, bArr3, zzbfz.length, i3);
        return bArr3;
    }

    public static Pair<Integer, Integer> zze(byte[] bArr) {
        zznz zznzVar = new zznz(bArr);
        int iZza = zza(zznzVar);
        int iZzb = zzb(zznzVar);
        int iZzbc = zznzVar.zzbc(4);
        if (iZza == 5 || iZza == 29) {
            iZzb = zzb(zznzVar);
            if (zza(zznzVar) == 22) {
                iZzbc = zznzVar.zzbc(4);
            }
        }
        int i2 = zzbgb[iZzbc];
        zznr.checkArgument(i2 != -1);
        return Pair.create(Integer.valueOf(iZzb), Integer.valueOf(i2));
    }
}
