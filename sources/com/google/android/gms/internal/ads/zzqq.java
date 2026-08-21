package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import java.nio.charset.Charset;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public final class zzqq extends zzqf {
    private MessageDigest zzbql;
    private final int zzbqs;
    private final int zzbqt;

    public zzqq(int i2) {
        int i3 = i2 / 8;
        this.zzbqs = i2 % 8 > 0 ? i3 + 1 : i3;
        this.zzbqt = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzqf
    public final byte[] zzbq(String str) {
        synchronized (this.mLock) {
            this.zzbql = zzlz();
            if (this.zzbql == null) {
                return new byte[0];
            }
            this.zzbql.reset();
            this.zzbql.update(str.getBytes(Charset.forName(C.UTF8_NAME)));
            byte[] bArrDigest = this.zzbql.digest();
            byte[] bArr = new byte[bArrDigest.length > this.zzbqs ? this.zzbqs : bArrDigest.length];
            System.arraycopy(bArrDigest, 0, bArr, 0, bArr.length);
            if (this.zzbqt % 8 > 0) {
                long j2 = 0;
                for (int i2 = 0; i2 < bArr.length; i2++) {
                    if (i2 > 0) {
                        j2 <<= 8;
                    }
                    j2 += (long) (bArr[i2] & 255);
                }
                long j3 = j2 >>> (8 - (this.zzbqt % 8));
                for (int i3 = this.zzbqs - 1; i3 >= 0; i3--) {
                    bArr[i3] = (byte) (255 & j3);
                    j3 >>>= 8;
                }
            }
            return bArr;
        }
    }
}
