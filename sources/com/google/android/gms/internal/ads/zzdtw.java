package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
final class zzdtw {
    private static final zzdtx zzhpp;

    static {
        zzhpp = (!(zzdtt.zzbca() && zzdtt.zzbcb()) || zzdpj.zzaxl()) ? new zzdua() : new zzduc();
    }

    static int zza(CharSequence charSequence) {
        int length = charSequence.length();
        int i2 = 0;
        int i3 = 0;
        while (i3 < length && charSequence.charAt(i3) < 128) {
            i3++;
        }
        int i4 = length;
        while (true) {
            if (i3 >= length) {
                break;
            }
            char cCharAt = charSequence.charAt(i3);
            if (cCharAt < 2048) {
                i4 += (127 - cCharAt) >>> 31;
                i3++;
            } else {
                int length2 = charSequence.length();
                while (i3 < length2) {
                    char cCharAt2 = charSequence.charAt(i3);
                    if (cCharAt2 < 2048) {
                        i2 += (127 - cCharAt2) >>> 31;
                    } else {
                        i2 += 2;
                        if (55296 <= cCharAt2 && cCharAt2 <= 57343) {
                            if (Character.codePointAt(charSequence, i3) < 65536) {
                                throw new zzdtz(i3, length2);
                            }
                            i3++;
                        }
                    }
                    i3++;
                }
                i4 += i2;
            }
        }
        if (i4 >= length) {
            return i4;
        }
        long j2 = ((long) i4) + 4294967296L;
        StringBuilder sb = new StringBuilder(54);
        sb.append("UTF-8 length does not fit in int: ");
        sb.append(j2);
        throw new IllegalArgumentException(sb.toString());
    }

    static int zza(CharSequence charSequence, byte[] bArr, int i2, int i3) {
        return zzhpp.zzb(charSequence, bArr, i2, i3);
    }

    static void zza(CharSequence charSequence, ByteBuffer byteBuffer) {
        zzdtx zzdtxVar = zzhpp;
        if (byteBuffer.hasArray()) {
            int iArrayOffset = byteBuffer.arrayOffset();
            byteBuffer.position(zza(charSequence, byteBuffer.array(), byteBuffer.position() + iArrayOffset, byteBuffer.remaining()) - iArrayOffset);
        } else if (byteBuffer.isDirect()) {
            zzdtxVar.zzb(charSequence, byteBuffer);
        } else {
            zzdtx.zzc(charSequence, byteBuffer);
        }
    }

    public static boolean zzac(byte[] bArr) {
        return zzhpp.zzl(bArr, 0, bArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int zzao(int i2, int i3) {
        if (i2 > -12 || i3 > -65) {
            return -1;
        }
        return i2 ^ (i3 << 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int zzhb(int i2) {
        if (i2 > -12) {
            return -1;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int zzi(int i2, int i3, int i4) {
        if (i2 > -12 || i3 > -65 || i4 > -65) {
            return -1;
        }
        return (i2 ^ (i3 << 8)) ^ (i4 << 16);
    }

    public static boolean zzl(byte[] bArr, int i2, int i3) {
        return zzhpp.zzl(bArr, i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int zzm(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2 - 1];
        int i4 = i3 - i2;
        if (i4 == 0) {
            return zzhb(b2);
        }
        if (i4 == 1) {
            return zzao(b2, bArr[i2]);
        }
        if (i4 == 2) {
            return zzi(b2, bArr[i2], bArr[i2 + 1]);
        }
        throw new AssertionError();
    }

    static String zzn(byte[] bArr, int i2, int i3) {
        return zzhpp.zzn(bArr, i2, i3);
    }
}
