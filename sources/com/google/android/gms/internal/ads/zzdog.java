package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzdog {
    private final byte[] data;

    private zzdog(byte[] bArr, int i2, int i3) {
        this.data = new byte[i3];
        System.arraycopy(bArr, 0, this.data, 0, i3);
    }

    public static zzdog zzu(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return new zzdog(bArr, 0, bArr.length);
    }

    public final byte[] getBytes() {
        byte[] bArr = this.data;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }
}
