package com.google.android.exoplayer2.util;

import com.google.android.exoplayer2.C;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public final class ParsableByteArray {
    public byte[] data;
    private int limit;
    private int position;

    public ParsableByteArray() {
        this.data = Util.EMPTY_BYTE_ARRAY;
    }

    public ParsableByteArray(int i2) {
        this.data = new byte[i2];
        this.limit = i2;
    }

    public ParsableByteArray(byte[] bArr) {
        this.data = bArr;
        this.limit = bArr.length;
    }

    public ParsableByteArray(byte[] bArr, int i2) {
        this.data = bArr;
        this.limit = i2;
    }

    public int bytesLeft() {
        return this.limit - this.position;
    }

    public int capacity() {
        return this.data.length;
    }

    public int getPosition() {
        return this.position;
    }

    public int limit() {
        return this.limit;
    }

    public char peekChar() {
        byte[] bArr = this.data;
        int i2 = this.position;
        return (char) ((bArr[i2 + 1] & 255) | ((bArr[i2] & 255) << 8));
    }

    public int peekUnsignedByte() {
        return this.data[this.position] & 255;
    }

    public void readBytes(ParsableBitArray parsableBitArray, int i2) {
        readBytes(parsableBitArray.data, 0, i2);
        parsableBitArray.setPosition(0);
    }

    public void readBytes(ByteBuffer byteBuffer, int i2) {
        byteBuffer.put(this.data, this.position, i2);
        this.position += i2;
    }

    public void readBytes(byte[] bArr, int i2, int i3) {
        System.arraycopy(this.data, this.position, bArr, i2, i3);
        this.position += i3;
    }

    public double readDouble() {
        return Double.longBitsToDouble(readLong());
    }

    public float readFloat() {
        return Float.intBitsToFloat(readInt());
    }

    public int readInt() {
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

    public int readInt24() {
        byte[] bArr = this.data;
        int i2 = this.position;
        this.position = i2 + 1;
        int i3 = ((bArr[i2] & 255) << 24) >> 8;
        int i4 = this.position;
        this.position = i4 + 1;
        int i5 = i3 | ((bArr[i4] & 255) << 8);
        int i6 = this.position;
        this.position = i6 + 1;
        return (bArr[i6] & 255) | i5;
    }

    public String readLine() {
        if (bytesLeft() == 0) {
            return null;
        }
        int i2 = this.position;
        while (i2 < this.limit && !Util.isLinebreak(this.data[i2])) {
            i2++;
        }
        int i3 = this.position;
        if (i2 - i3 >= 3) {
            byte[] bArr = this.data;
            if (bArr[i3] == -17 && bArr[i3 + 1] == -69 && bArr[i3 + 2] == -65) {
                this.position = i3 + 3;
            }
        }
        byte[] bArr2 = this.data;
        int i4 = this.position;
        String strFromUtf8Bytes = Util.fromUtf8Bytes(bArr2, i4, i2 - i4);
        this.position = i2;
        int i5 = this.position;
        int i6 = this.limit;
        if (i5 == i6) {
            return strFromUtf8Bytes;
        }
        if (this.data[i5] == 13) {
            this.position = i5 + 1;
            if (this.position == i6) {
                return strFromUtf8Bytes;
            }
        }
        byte[] bArr3 = this.data;
        int i7 = this.position;
        if (bArr3[i7] == 10) {
            this.position = i7 + 1;
        }
        return strFromUtf8Bytes;
    }

    public int readLittleEndianInt() {
        byte[] bArr = this.data;
        int i2 = this.position;
        this.position = i2 + 1;
        int i3 = bArr[i2] & 255;
        int i4 = this.position;
        this.position = i4 + 1;
        int i5 = i3 | ((bArr[i4] & 255) << 8);
        int i6 = this.position;
        this.position = i6 + 1;
        int i7 = i5 | ((bArr[i6] & 255) << 16);
        int i8 = this.position;
        this.position = i8 + 1;
        return ((bArr[i8] & 255) << 24) | i7;
    }

    public int readLittleEndianInt24() {
        byte[] bArr = this.data;
        int i2 = this.position;
        this.position = i2 + 1;
        int i3 = bArr[i2] & 255;
        int i4 = this.position;
        this.position = i4 + 1;
        int i5 = i3 | ((bArr[i4] & 255) << 8);
        int i6 = this.position;
        this.position = i6 + 1;
        return ((bArr[i6] & 255) << 16) | i5;
    }

    public long readLittleEndianLong() {
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
        long j5 = j4 | ((((long) bArr[i5]) & 255) << 24);
        int i6 = this.position;
        this.position = i6 + 1;
        long j6 = j5 | ((((long) bArr[i6]) & 255) << 32);
        int i7 = this.position;
        this.position = i7 + 1;
        long j7 = j6 | ((((long) bArr[i7]) & 255) << 40);
        int i8 = this.position;
        this.position = i8 + 1;
        long j8 = j7 | ((((long) bArr[i8]) & 255) << 48);
        int i9 = this.position;
        this.position = i9 + 1;
        return j8 | ((255 & ((long) bArr[i9])) << 56);
    }

    public short readLittleEndianShort() {
        byte[] bArr = this.data;
        int i2 = this.position;
        this.position = i2 + 1;
        int i3 = bArr[i2] & 255;
        int i4 = this.position;
        this.position = i4 + 1;
        return (short) (((bArr[i4] & 255) << 8) | i3);
    }

    public long readLittleEndianUnsignedInt() {
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

    public int readLittleEndianUnsignedInt24() {
        byte[] bArr = this.data;
        int i2 = this.position;
        this.position = i2 + 1;
        int i3 = bArr[i2] & 255;
        int i4 = this.position;
        this.position = i4 + 1;
        int i5 = i3 | ((bArr[i4] & 255) << 8);
        int i6 = this.position;
        this.position = i6 + 1;
        return ((bArr[i6] & 255) << 16) | i5;
    }

    public int readLittleEndianUnsignedIntToInt() {
        int littleEndianInt = readLittleEndianInt();
        if (littleEndianInt >= 0) {
            return littleEndianInt;
        }
        throw new IllegalStateException("Top bit not zero: " + littleEndianInt);
    }

    public int readLittleEndianUnsignedShort() {
        byte[] bArr = this.data;
        int i2 = this.position;
        this.position = i2 + 1;
        int i3 = bArr[i2] & 255;
        int i4 = this.position;
        this.position = i4 + 1;
        return ((bArr[i4] & 255) << 8) | i3;
    }

    public long readLong() {
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

    public String readNullTerminatedString() {
        if (bytesLeft() == 0) {
            return null;
        }
        int i2 = this.position;
        while (i2 < this.limit && this.data[i2] != 0) {
            i2++;
        }
        byte[] bArr = this.data;
        int i3 = this.position;
        String strFromUtf8Bytes = Util.fromUtf8Bytes(bArr, i3, i2 - i3);
        this.position = i2;
        int i4 = this.position;
        if (i4 < this.limit) {
            this.position = i4 + 1;
        }
        return strFromUtf8Bytes;
    }

    public String readNullTerminatedString(int i2) {
        if (i2 == 0) {
            return "";
        }
        int i3 = (this.position + i2) - 1;
        String strFromUtf8Bytes = Util.fromUtf8Bytes(this.data, this.position, (i3 >= this.limit || this.data[i3] != 0) ? i2 : i2 - 1);
        this.position += i2;
        return strFromUtf8Bytes;
    }

    public short readShort() {
        byte[] bArr = this.data;
        int i2 = this.position;
        this.position = i2 + 1;
        int i3 = (bArr[i2] & 255) << 8;
        int i4 = this.position;
        this.position = i4 + 1;
        return (short) ((bArr[i4] & 255) | i3);
    }

    public String readString(int i2) {
        return readString(i2, Charset.forName(C.UTF8_NAME));
    }

    public String readString(int i2, Charset charset) {
        String str = new String(this.data, this.position, i2, charset);
        this.position += i2;
        return str;
    }

    public int readSynchSafeInt() {
        return (readUnsignedByte() << 21) | (readUnsignedByte() << 14) | (readUnsignedByte() << 7) | readUnsignedByte();
    }

    public int readUnsignedByte() {
        byte[] bArr = this.data;
        int i2 = this.position;
        this.position = i2 + 1;
        return bArr[i2] & 255;
    }

    public int readUnsignedFixedPoint1616() {
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

    public long readUnsignedInt() {
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

    public int readUnsignedInt24() {
        byte[] bArr = this.data;
        int i2 = this.position;
        this.position = i2 + 1;
        int i3 = (bArr[i2] & 255) << 16;
        int i4 = this.position;
        this.position = i4 + 1;
        int i5 = i3 | ((bArr[i4] & 255) << 8);
        int i6 = this.position;
        this.position = i6 + 1;
        return (bArr[i6] & 255) | i5;
    }

    public int readUnsignedIntToInt() {
        int i2 = readInt();
        if (i2 >= 0) {
            return i2;
        }
        throw new IllegalStateException("Top bit not zero: " + i2);
    }

    public long readUnsignedLongToLong() {
        long j2 = readLong();
        if (j2 >= 0) {
            return j2;
        }
        throw new IllegalStateException("Top bit not zero: " + j2);
    }

    public int readUnsignedShort() {
        byte[] bArr = this.data;
        int i2 = this.position;
        this.position = i2 + 1;
        int i3 = (bArr[i2] & 255) << 8;
        int i4 = this.position;
        this.position = i4 + 1;
        return (bArr[i4] & 255) | i3;
    }

    public long readUtf8EncodedLong() {
        int i2;
        int i3;
        long j2 = this.data[this.position];
        int i4 = 7;
        while (true) {
            if (i4 < 0) {
                break;
            }
            int i5 = 1 << i4;
            if ((((long) i5) & j2) != 0) {
                i4--;
            } else if (i4 < 6) {
                j2 &= (long) (i5 - 1);
                i3 = 7 - i4;
            } else if (i4 == 7) {
                i3 = 1;
            }
        }
        i3 = 0;
        if (i3 == 0) {
            throw new NumberFormatException("Invalid UTF-8 sequence first byte: " + j2);
        }
        for (i2 = 1; i2 < i3; i2++) {
            byte b2 = this.data[this.position + i2];
            if ((b2 & 192) != 128) {
                throw new NumberFormatException("Invalid UTF-8 sequence continuation byte: " + j2);
            }
            j2 = (j2 << 6) | ((long) (b2 & 63));
        }
        this.position += i3;
        return j2;
    }

    public void reset() {
        this.position = 0;
        this.limit = 0;
    }

    public void reset(int i2) {
        reset(capacity() < i2 ? new byte[i2] : this.data, i2);
    }

    public void reset(byte[] bArr) {
        reset(bArr, bArr.length);
    }

    public void reset(byte[] bArr, int i2) {
        this.data = bArr;
        this.limit = i2;
        this.position = 0;
    }

    public void setLimit(int i2) {
        Assertions.checkArgument(i2 >= 0 && i2 <= this.data.length);
        this.limit = i2;
    }

    public void setPosition(int i2) {
        Assertions.checkArgument(i2 >= 0 && i2 <= this.limit);
        this.position = i2;
    }

    public void skipBytes(int i2) {
        setPosition(this.position + i2);
    }
}
