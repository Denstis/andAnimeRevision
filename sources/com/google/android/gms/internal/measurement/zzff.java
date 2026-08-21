package com.google.android.gms.internal.measurement;

import com.google.android.exoplayer2.C;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public final class zzff {
    public static final byte[] zzb;
    private static final ByteBuffer zzd;
    private static final zzeg zze;
    static final Charset zza = Charset.forName(C.UTF8_NAME);
    private static final Charset zzc = Charset.forName("ISO-8859-1");

    static {
        byte[] bArr = new byte[0];
        zzb = bArr;
        zzd = ByteBuffer.wrap(bArr);
        byte[] bArr2 = zzb;
        zze = zzeg.zza(bArr2, 0, bArr2.length, false);
    }

    static int zza(int i2, byte[] bArr, int i3, int i4) {
        int i5 = i2;
        for (int i6 = i3; i6 < i3 + i4; i6++) {
            i5 = (i5 * 31) + bArr[i6];
        }
        return i5;
    }

    public static int zza(long j2) {
        return (int) (j2 ^ (j2 >>> 32));
    }

    public static int zza(boolean z) {
        return z ? 1231 : 1237;
    }

    static <T> T zza(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    static Object zza(Object obj, Object obj2) {
        return ((zzgo) obj).zzbr().zza((zzgo) obj2).zzt();
    }

    static <T> T zza(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    static boolean zza(zzgo zzgoVar) {
        if (!(zzgoVar instanceof zzdm)) {
            return false;
        }
        return false;
    }

    public static boolean zza(byte[] bArr) {
        return zzie.zza(bArr);
    }

    public static String zzb(byte[] bArr) {
        return new String(bArr, zza);
    }

    public static int zzc(byte[] bArr) {
        int length = bArr.length;
        int iZza = zza(length, bArr, 0, length);
        if (iZza == 0) {
            return 1;
        }
        return iZza;
    }
}
