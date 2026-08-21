package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zznz {
    private byte[] data;
    private int zzbgg;
    private int zzbgh;
    private int zzbgi;

    public zznz() {
    }

    public zznz(byte[] bArr) {
        this(bArr, bArr.length);
    }

    private zznz(byte[] bArr, int i2) {
        this.data = bArr;
        this.zzbgi = i2;
    }

    public final int zzbc(int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        boolean z = false;
        if (i2 == 0) {
            return 0;
        }
        int i7 = i2 / 8;
        int i8 = i2;
        int i9 = 0;
        for (int i10 = 0; i10 < i7; i10++) {
            int i11 = this.zzbgh;
            if (i11 != 0) {
                byte[] bArr = this.data;
                int i12 = this.zzbgg;
                i6 = ((bArr[i12 + 1] & 255) >>> (8 - i11)) | ((bArr[i12] & 255) << i11);
            } else {
                i6 = this.data[this.zzbgg];
            }
            i8 -= 8;
            i9 |= (255 & i6) << i8;
            this.zzbgg++;
        }
        if (i8 > 0) {
            int i13 = this.zzbgh + i8;
            byte b2 = (byte) (255 >> (8 - i8));
            byte[] bArr2 = this.data;
            int i14 = this.zzbgg;
            if (i13 > 8) {
                i5 = (b2 & (((bArr2[i14 + 1] & 255) >> (16 - i13)) | ((bArr2[i14] & 255) << (i13 - 8)))) | i9;
            } else {
                i5 = (b2 & ((bArr2[i14] & 255) >> (8 - i13))) | i9;
                if (i13 == 8) {
                }
                i9 = i5;
                this.zzbgh = i13 % 8;
            }
            this.zzbgg = i14 + 1;
            i9 = i5;
            this.zzbgh = i13 % 8;
        }
        int i15 = this.zzbgg;
        if (i15 >= 0 && (i3 = this.zzbgh) >= 0 && i3 < 8 && (i15 < (i4 = this.zzbgi) || (i15 == i4 && i3 == 0))) {
            z = true;
        }
        zznr.checkState(z);
        return i9;
    }
}
