package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzoc {
    public byte[] data;
    private int limit;
    private int position;

    public zzoc() {
    }

    public zzoc(int i2) {
        this.data = new byte[i2];
        this.limit = i2;
    }

    public zzoc(byte[] bArr) {
        this.data = bArr;
        this.limit = bArr.length;
    }

    public final int capacity() {
        byte[] bArr = this.data;
        if (bArr == null) {
            return 0;
        }
        return bArr.length;
    }

    public final int getPosition() {
        return this.position;
    }

    public final int limit() {
        return this.limit;
    }

    public final int readInt() {
        byte[] bArr = this.data;
        int i2 = this.position;
        this.position = i2 + 1;
        int i3 = (bArr[i2] & 255) << 24;
        int i4 = this.position;
        this.position = i4 + 1;
        int i5 = i3 | ((bArr[i4] & 255) << 16);
        int i6 = this.position;
        this.position = i6 + 1;
        int i7 = i5 | ((bArr[i6] & 255) << 8);
        int i8 = this.position;
        this.position = i8 + 1;
        return (bArr[i8] & 255) | i7;
    }

    public final long readLong() {
        byte[] bArr = this.data;
        int i2 = this.position;
        this.position = i2 + 1;
        long j2 = (((long) bArr[i2]) & 255) << 56;
        int i3 = this.position;
        this.position = i3 + 1;
        long j3 = j2 | ((((long) bArr[i3]) & 255) << 48);
        int i4 = this.position;
        this.position = i4 + 1;
        long j4 = j3 | ((((long) bArr[i4]) & 255) << 40);
        int i5 = this.position;
        this.position = i5 + 1;
        long j5 = j4 | ((((long) bArr[i5]) & 255) << 32);
        int i6 = this.position;
        this.position = i6 + 1;
        long j6 = j5 | ((((long) bArr[i6]) & 255) << 24);
        int i7 = this.position;
        this.position = i7 + 1;
        long j7 = j6 | ((((long) bArr[i7]) & 255) << 16);
        int i8 = this.position;
        this.position = i8 + 1;
        long j8 = j7 | ((((long) bArr[i8]) & 255) << 8);
        int i9 = this.position;
        this.position = i9 + 1;
        return j8 | (255 & ((long) bArr[i9]));
    }

    public final short readShort() {
        byte[] bArr = this.data;
        int i2 = this.position;
        this.position = i2 + 1;
        int i3 = (bArr[i2] & 255) << 8;
        int i4 = this.position;
        this.position = i4 + 1;
        return (short) ((bArr[i4] & 255) | i3);
    }

    public final int readUnsignedByte() {
        byte[] bArr = this.data;
        int i2 = this.position;
        this.position = i2 + 1;
        return bArr[i2] & 255;
    }

    public final int readUnsignedShort() {
        byte[] bArr = this.data;
        int i2 = this.position;
        this.position = i2 + 1;
        int i3 = (bArr[i2] & 255) << 8;
        int i4 = this.position;
        this.position = i4 + 1;
        return (bArr[i4] & 255) | i3;
    }

    public final void reset() {
        this.position = 0;
        this.limit = 0;
    }

    public final void reset(int i2) {
        zzb(capacity() < i2 ? new byte[i2] : this.data, i2);
    }

    public final void zzb(byte[] bArr, int i2) {
        this.data = bArr;
        this.limit = i2;
        this.position = 0;
    }

    public final void zzbf(int i2) {
        zznr.checkArgument(i2 >= 0 && i2 <= this.data.length);
        this.limit = i2;
    }

    public final void zzbg(int i2) {
        zznr.checkArgument(i2 >= 0 && i2 <= this.limit);
        this.position = i2;
    }

    public final void zzbh(int i2) {
        zzbg(this.position + i2);
    }

    public final String zzbi(int i2) {
        if (i2 == 0) {
            return "";
        }
        int i3 = (this.position + i2) - 1;
        String str = new String(this.data, this.position, (i3 >= this.limit || this.data[i3] != 0) ? i2 : i2 - 1);
        this.position += i2;
        return str;
    }

    public final void zze(byte[] bArr, int i2, int i3) {
        System.arraycopy(this.data, this.position, bArr, i2, i3);
        this.position += i3;
    }

    public final int zzim() {
        return this.limit - this.position;
    }

    public final int zzin() {
        byte[] bArr = this.data;
        int i2 = this.position;
        this.position = i2 + 1;
        int i3 = bArr[i2] & 255;
        int i4 = this.position;
        this.position = i4 + 1;
        return ((bArr[i4] & 255) << 8) | i3;
    }

    public final long zzio() {
        byte[] bArr = this.data;
        int i2 = this.position;
        this.position = i2 + 1;
        long j2 = (((long) bArr[i2]) & 255) << 24;
        int i3 = this.position;
        this.position = i3 + 1;
        long j3 = j2 | ((((long) bArr[i3]) & 255) << 16);
        int i4 = this.position;
        this.position = i4 + 1;
        long j4 = j3 | ((((long) bArr[i4]) & 255) << 8);
        int i5 = this.position;
        this.position = i5 + 1;
        return j4 | (255 & ((long) bArr[i5]));
    }

    public final long zzip() {
        byte[] bArr = this.data;
        int i2 = this.position;
        this.position = i2 + 1;
        long j2 = ((long) bArr[i2]) & 255;
        int i3 = this.position;
        this.position = i3 + 1;
        long j3 = j2 | ((((long) bArr[i3]) & 255) << 8);
        int i4 = this.position;
        this.position = i4 + 1;
        long j4 = j3 | ((((long) bArr[i4]) & 255) << 16);
        int i5 = this.position;
        this.position = i5 + 1;
        return j4 | ((255 & ((long) bArr[i5])) << 24);
    }

    public final int zziq() {
        byte[] bArr = this.data;
        int i2 = this.position;
        this.position = i2 + 1;
        int i3 = (bArr[i2] & 255) << 8;
        int i4 = this.position;
        this.position = i4 + 1;
        int i5 = (bArr[i4] & 255) | i3;
        this.position += 2;
        return i5;
    }

    public final int zzir() {
        int i2 = readInt();
        if (i2 >= 0) {
            return i2;
        }
        StringBuilder sb = new StringBuilder(29);
        sb.append("Top bit not zero: ");
        sb.append(i2);
        throw new IllegalStateException(sb.toString());
    }

    public final long zzis() {
        long j2 = readLong();
        if (j2 >= 0) {
            return j2;
        }
        StringBuilder sb = new StringBuilder(38);
        sb.append("Top bit not zero: ");
        sb.append(j2);
        throw new IllegalStateException(sb.toString());
    }
}
