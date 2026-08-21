package com.google.android.gms.common.util;

import com.google.android.gms.common.annotation.KeepForSdk;

/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public final class HexDumpUtils {
    @KeepForSdk
    public static String dump(byte[] bArr, int i2, int i3, boolean z) {
        if (bArr == null || bArr.length == 0 || i2 < 0 || i3 <= 0 || i2 + i3 > bArr.length) {
            return null;
        }
        StringBuilder sb = new StringBuilder((z ? 75 : 57) * (((i3 + 16) - 1) / 16));
        int i4 = i2;
        int i5 = i3;
        int i6 = 0;
        int i7 = 0;
        while (i5 > 0) {
            if (i6 == 0) {
                sb.append(i3 < 65536 ? String.format("%04X:", Integer.valueOf(i4)) : String.format("%08X:", Integer.valueOf(i4)));
                i7 = i4;
            } else if (i6 == 8) {
                sb.append(" -");
            }
            sb.append(String.format(" %02X", Integer.valueOf(bArr[i4] & 255)));
            i5--;
            i6++;
            if (z && (i6 == 16 || i5 == 0)) {
                int i8 = 16 - i6;
                if (i8 > 0) {
                    for (int i9 = 0; i9 < i8; i9++) {
                        sb.append("   ");
                    }
                }
                if (i8 >= 8) {
                    sb.append("  ");
                }
                sb.append("  ");
                for (int i10 = 0; i10 < i6; i10++) {
                    char c2 = (char) bArr[i7 + i10];
                    if (c2 < ' ' || c2 > '~') {
                        c2 = '.';
                    }
                    sb.append(c2);
                }
            }
            if (i6 == 16 || i5 == 0) {
                sb.append('\n');
                i6 = 0;
            }
            i4++;
        }
        return sb.toString();
    }
}
