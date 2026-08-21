package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public final class zzdqx {
    public static final byte[] zzhlj;
    private static final ByteBuffer zzhlk;
    private static final zzdpy zzhll;
    static final Charset UTF_8 = Charset.forName(C.UTF8_NAME);
    private static final Charset ISO_8859_1 = Charset.forName("ISO-8859-1");

    static {
        byte[] bArr = new byte[0];
        zzhlj = bArr;
        zzhlk = ByteBuffer.wrap(bArr);
        byte[] bArr2 = zzhlj;
        zzhll = zzdpy.zzc(bArr2, 0, bArr2.length, false);
    }

    static <T> T checkNotNull(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    public static int hashCode(byte[] bArr) {
        int length = bArr.length;
        int iZza = zza(length, bArr, 0, length);
        if (iZza == 0) {
            return 1;
        }
        return iZza;
    }

    static int zza(int i2, byte[] bArr, int i3, int i4) {
        int i5 = i2;
        for (int i6 = i3; i6 < i3 + i4; i6++) {
            i5 = (i5 * 31) + bArr[i6];
        }
        return i5;
    }

    static <T> T zza(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    public static boolean zzac(byte[] bArr) {
        return zzdtw.zzac(bArr);
    }

    public static String zzad(byte[] bArr) {
        return new String(bArr, UTF_8);
    }

    public static int zzbj(boolean z) {
        return z ? 1231 : 1237;
    }

    static Object zzd(Object obj, Object obj2) {
        return ((zzdsg) obj).zzazx().zzi((zzdsg) obj2).zzazq();
    }

    public static int zzfk(long j2) {
        return (int) (j2 ^ (j2 >>> 32));
    }

    static boolean zzn(zzdsg zzdsgVar) {
        return false;
    }
}
