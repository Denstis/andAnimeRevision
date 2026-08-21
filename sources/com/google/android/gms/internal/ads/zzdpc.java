package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzdpc {
    private final byte[] zzhfn = new byte[256];
    private int zzhfo;
    private int zzhfp;

    public zzdpc(byte[] bArr) {
        for (int i2 = 0; i2 < 256; i2++) {
            this.zzhfn[i2] = (byte) i2;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < 256; i4++) {
            byte[] bArr2 = this.zzhfn;
            i3 = (i3 + bArr2[i4] + bArr[i4 % bArr.length]) & 255;
            byte b2 = bArr2[i4];
            bArr2[i4] = bArr2[i3];
            bArr2[i3] = b2;
        }
        this.zzhfo = 0;
        this.zzhfp = 0;
    }

    public final void zzx(byte[] bArr) {
        int i2 = this.zzhfo;
        int i3 = this.zzhfp;
        for (int i4 = 0; i4 < bArr.length; i4++) {
            i2 = (i2 + 1) & 255;
            byte[] bArr2 = this.zzhfn;
            i3 = (i3 + bArr2[i2]) & 255;
            byte b2 = bArr2[i2];
            bArr2[i2] = bArr2[i3];
            bArr2[i3] = b2;
            bArr[i4] = (byte) (bArr2[(bArr2[i2] + bArr2[i3]) & 255] ^ bArr[i4]);
        }
        this.zzhfo = i2;
        this.zzhfp = i3;
    }
}
