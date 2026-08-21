package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public final class zzdmm {
    private static final Charset UTF_8 = Charset.forName(C.UTF8_NAME);

    public static byte[] decode(String str) {
        byte[] bytes = str.getBytes(UTF_8);
        int length = bytes.length;
        zzdmo zzdmoVar = new zzdmo(2, new byte[(length * 3) / 4]);
        if (!zzdmoVar.zzb(bytes, 0, length, true)) {
            throw new IllegalArgumentException("bad base-64");
        }
        int i2 = zzdmoVar.zzhbk;
        byte[] bArr = zzdmoVar.zzhbj;
        if (i2 == bArr.length) {
            return bArr;
        }
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, 0, bArr2, 0, i2);
        return bArr2;
    }
}
