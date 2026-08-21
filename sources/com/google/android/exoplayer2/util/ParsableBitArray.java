package com.google.android.exoplayer2.util;

/* JADX INFO: loaded from: classes.dex */
public final class ParsableBitArray {
    private int bitOffset;
    private int byteLimit;
    private int byteOffset;
    public byte[] data;

    public ParsableBitArray() {
        this.data = Util.EMPTY_BYTE_ARRAY;
    }

    public ParsableBitArray(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public ParsableBitArray(byte[] bArr, int i2) {
        this.data = bArr;
        this.byteLimit = i2;
    }

    private void assertValidOffset() {
        int i2;
        int i3 = this.byteOffset;
        Assertions.checkState(i3 >= 0 && (i3 < (i2 = this.byteLimit) || (i3 == i2 && this.bitOffset == 0)));
    }

    public int bitsLeft() {
        return ((this.byteLimit - this.byteOffset) * 8) - this.bitOffset;
    }

    public void byteAlign() {
        if (this.bitOffset == 0) {
            return;
        }
        this.bitOffset = 0;
        this.byteOffset++;
        assertValidOffset();
    }

    public int getBytePosition() {
        Assertions.checkState(this.bitOffset == 0);
        return this.byteOffset;
    }

    public int getPosition() {
        return (this.byteOffset * 8) + this.bitOffset;
    }

    public void putInt(int i2, int i3) {
        if (i3 < 32) {
            i2 &= (1 << i3) - 1;
        }
        int iMin = Math.min(8 - this.bitOffset, i3);
        int i4 = this.bitOffset;
        int i5 = (8 - i4) - iMin;
        byte[] bArr = this.data;
        int i6 = this.byteOffset;
        bArr[i6] = (byte) (((65280 >> i4) | ((1 << i5) - 1)) & bArr[i6]);
        int i7 = i3 - iMin;
        bArr[i6] = (byte) (((i2 >>> i7) << i5) | bArr[i6]);
        int i8 = i6 + 1;
        while (i7 > 8) {
            this.data[i8] = (byte) (i2 >>> (i7 - 8));
            i7 -= 8;
            i8++;
        }
        int i9 = 8 - i7;
        byte[] bArr2 = this.data;
        bArr2[i8] = (byte) (bArr2[i8] & ((1 << i9) - 1));
        bArr2[i8] = (byte) (((i2 & ((1 << i7) - 1)) << i9) | bArr2[i8]);
        skipBits(i3);
        assertValidOffset();
    }

    public boolean readBit() {
        boolean z = (this.data[this.byteOffset] & (128 >> this.bitOffset)) != 0;
        skipBit();
        return z;
    }

    public int readBits(int i2) {
        int i3;
        if (i2 == 0) {
            return 0;
        }
        this.bitOffset += i2;
        int i4 = 0;
        while (true) {
            i3 = this.bitOffset;
            if (i3 <= 8) {
                break;
            }
            this.bitOffset = i3 - 8;
            byte[] bArr = this.data;
            int i5 = this.byteOffset;
            this.byteOffset = i5 + 1;
            i4 |= (bArr[i5] & 255) << this.bitOffset;
        }
        byte[] bArr2 = this.data;
        int i6 = this.byteOffset;
        int i7 = ((-1) >>> (32 - i2)) & (i4 | ((bArr2[i6] & 255) >> (8 - i3)));
        if (i3 == 8) {
            this.bitOffset = 0;
            this.byteOffset = i6 + 1;
        }
        assertValidOffset();
        return i7;
    }

    public void readBits(byte[] bArr, int i2, int i3) {
        int i4 = (i3 >> 3) + i2;
        while (i2 < i4) {
            byte[] bArr2 = this.data;
            int i5 = this.byteOffset;
            this.byteOffset = i5 + 1;
            byte b2 = bArr2[i5];
            int i6 = this.bitOffset;
            bArr[i2] = (byte) (b2 << i6);
            bArr[i2] = (byte) (((255 & bArr2[this.byteOffset]) >> (8 - i6)) | bArr[i2]);
            i2++;
        }
        int i7 = i3 & 7;
        if (i7 == 0) {
            return;
        }
        bArr[i4] = (byte) (bArr[i4] & (255 >> i7));
        int i8 = this.bitOffset;
        if (i8 + i7 > 8) {
            int i9 = bArr[i4];
            byte[] bArr3 = this.data;
            int i10 = this.byteOffset;
            this.byteOffset = i10 + 1;
            bArr[i4] = (byte) (i9 | ((bArr3[i10] & 255) << i8));
            this.bitOffset = i8 - 8;
        }
        this.bitOffset += i7;
        byte[] bArr4 = this.data;
        int i11 = this.byteOffset;
        int i12 = bArr4[i11] & 255;
        int i13 = this.bitOffset;
        bArr[i4] = (byte) (((byte) ((i12 >> (8 - i13)) << (8 - i7))) | bArr[i4]);
        if (i13 == 8) {
            this.bitOffset = 0;
            this.byteOffset = i11 + 1;
        }
        assertValidOffset();
    }

    public void readBytes(byte[] bArr, int i2, int i3) {
        Assertions.checkState(this.bitOffset == 0);
        System.arraycopy(this.data, this.byteOffset, bArr, i2, i3);
        this.byteOffset += i3;
        assertValidOffset();
    }

    public void reset(ParsableByteArray parsableByteArray) {
        reset(parsableByteArray.data, parsableByteArray.limit());
        setPosition(parsableByteArray.getPosition() * 8);
    }

    public void reset(byte[] bArr) {
        reset(bArr, bArr.length);
    }

    public void reset(byte[] bArr, int i2) {
        this.data = bArr;
        this.byteOffset = 0;
        this.bitOffset = 0;
        this.byteLimit = i2;
    }

    public void setPosition(int i2) {
        this.byteOffset = i2 / 8;
        this.bitOffset = i2 - (this.byteOffset * 8);
        assertValidOffset();
    }

    public void skipBit() {
        int i2 = this.bitOffset + 1;
        this.bitOffset = i2;
        if (i2 == 8) {
            this.bitOffset = 0;
            this.byteOffset++;
        }
        assertValidOffset();
    }

    public void skipBits(int i2) {
        int i3 = i2 / 8;
        this.byteOffset += i3;
        this.bitOffset += i2 - (i3 * 8);
        int i4 = this.bitOffset;
        if (i4 > 7) {
            this.byteOffset++;
            this.bitOffset = i4 - 8;
        }
        assertValidOffset();
    }

    public void skipBytes(int i2) {
        Assertions.checkState(this.bitOffset == 0);
        this.byteOffset += i2;
        assertValidOffset();
    }
}
