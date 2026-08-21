package com.google.android.exoplayer2.extractor.ts;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.util.ParsableByteArray;

/* JADX INFO: loaded from: classes.dex */
public final class TsUtil {
    private TsUtil() {
    }

    public static int findSyncBytePosition(byte[] bArr, int i2, int i3) {
        while (i2 < i3 && bArr[i2] != 71) {
            i2++;
        }
        return i2;
    }

    public static long readPcrFromPacket(ParsableByteArray parsableByteArray, int i2, int i3) {
        parsableByteArray.setPosition(i2);
        if (parsableByteArray.bytesLeft() < 5) {
            return C.TIME_UNSET;
        }
        int i4 = parsableByteArray.readInt();
        if ((8388608 & i4) != 0 || ((2096896 & i4) >> 8) != i3) {
            return C.TIME_UNSET;
        }
        if (((i4 & 32) != 0) && parsableByteArray.readUnsignedByte() >= 7 && parsableByteArray.bytesLeft() >= 7) {
            if ((parsableByteArray.readUnsignedByte() & 16) == 16) {
                byte[] bArr = new byte[6];
                parsableByteArray.readBytes(bArr, 0, bArr.length);
                return readPcrValueFromPcrBytes(bArr);
            }
        }
        return C.TIME_UNSET;
    }

    private static long readPcrValueFromPcrBytes(byte[] bArr) {
        return ((((long) bArr[0]) & 255) << 25) | ((((long) bArr[1]) & 255) << 17) | ((((long) bArr[2]) & 255) << 9) | ((((long) bArr[3]) & 255) << 1) | ((255 & ((long) bArr[4])) >> 7);
    }
}
