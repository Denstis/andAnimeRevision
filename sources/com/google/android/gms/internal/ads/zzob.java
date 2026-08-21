package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzob {
    private byte[] data;
    private int zzbgg;
    private int zzbgh = 0;
    private int zzbgi;

    public zzob(byte[] bArr, int i2, int i3) {
        this.data = bArr;
        this.zzbgg = i2;
        this.zzbgi = i3;
        zzil();
    }

    private final boolean zzbe(int i2) {
        if (2 > i2 || i2 >= this.zzbgi) {
            return false;
        }
        byte[] bArr = this.data;
        return bArr[i2] == 3 && bArr[i2 + (-2)] == 0 && bArr[i2 - 1] == 0;
    }

    private final int zzik() {
        int i2 = 0;
        while (!zzih()) {
            i2++;
        }
        return ((1 << i2) - 1) + (i2 > 0 ? zzbc(i2) : 0);
    }

    private final void zzil() {
        int i2;
        int i3;
        int i4 = this.zzbgg;
        zznr.checkState(i4 >= 0 && (i2 = this.zzbgh) >= 0 && i2 < 8 && (i4 < (i3 = this.zzbgi) || (i4 == i3 && i2 == 0)));
    }

    public final int zzbc(int i2) {
        int i3;
        int i4;
        if (i2 == 0) {
            return 0;
        }
        int i5 = i2 / 8;
        int i6 = 0;
        for (int i7 = 0; i7 < i5; i7++) {
            int i8 = zzbe(this.zzbgg + 1) ? this.zzbgg + 2 : this.zzbgg + 1;
            int i9 = this.zzbgh;
            if (i9 != 0) {
                byte[] bArr = this.data;
                i4 = ((bArr[i8] & 255) >>> (8 - i9)) | ((bArr[this.zzbgg] & 255) << i9);
            } else {
                i4 = this.data[this.zzbgg];
            }
            i2 -= 8;
            i6 |= (255 & i4) << i2;
            this.zzbgg = i8;
        }
        if (i2 > 0) {
            int i10 = this.zzbgh + i2;
            byte b2 = (byte) (255 >> (8 - i2));
            int i11 = zzbe(this.zzbgg + 1) ? this.zzbgg + 2 : this.zzbgg + 1;
            byte[] bArr2 = this.data;
            int i12 = this.zzbgg;
            if (i10 > 8) {
                i3 = (b2 & (((255 & bArr2[i11]) >> (16 - i10)) | ((bArr2[i12] & 255) << (i10 - 8)))) | i6;
            } else {
                i3 = (b2 & ((255 & bArr2[i12]) >> (8 - i10))) | i6;
                if (i10 == 8) {
                }
                i6 = i3;
                this.zzbgh = i10 % 8;
            }
            this.zzbgg = i11;
            i6 = i3;
            this.zzbgh = i10 % 8;
        }
        zzil();
        return i6;
    }

    public final void zzbd(int i2) {
        int i3 = this.zzbgg;
        this.zzbgg = (i2 / 8) + i3;
        this.zzbgh += i2 % 8;
        int i4 = this.zzbgh;
        if (i4 > 7) {
            this.zzbgg++;
            this.zzbgh = i4 - 8;
        }
        while (true) {
            i3++;
            if (i3 > this.zzbgg) {
                zzil();
                return;
            } else if (zzbe(i3)) {
                this.zzbgg++;
                i3 += 2;
            }
        }
    }

    public final boolean zzih() {
        return zzbc(1) == 1;
    }

    public final int zzii() {
        return zzik();
    }

    public final int zzij() {
        int iZzik = zzik();
        return (iZzik % 2 == 0 ? -1 : 1) * ((iZzik + 1) / 2);
    }
}
