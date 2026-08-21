package com.google.android.gms.internal.firebase_messaging;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayDeque;
import java.util.Deque;

/* JADX INFO: loaded from: classes.dex */
public final class zzj {
    private static final OutputStream zza = new zzi();

    public static InputStream zza(InputStream inputStream, long j2) {
        return new zzl(inputStream, 1048577L);
    }

    public static byte[] zza(InputStream inputStream) throws IOException {
        int i2;
        zzg.zza(inputStream);
        ArrayDeque arrayDeque = new ArrayDeque(20);
        int iZza = 8192;
        for (int i3 = 0; i3 < 2147483639; i3 = i2) {
            byte[] bArr = new byte[Math.min(iZza, 2147483639 - i3)];
            arrayDeque.add(bArr);
            i2 = i3;
            int i4 = 0;
            while (i4 < bArr.length) {
                int i5 = inputStream.read(bArr, i4, bArr.length - i4);
                if (i5 == -1) {
                    return zza(arrayDeque, i2);
                }
                i4 += i5;
                i2 += i5;
            }
            iZza = zzn.zza(iZza, 2);
        }
        if (inputStream.read() == -1) {
            return zza(arrayDeque, 2147483639);
        }
        throw new OutOfMemoryError("input is too large to fit in a byte array");
    }

    private static byte[] zza(Deque<byte[]> deque, int i2) {
        byte[] bArr = new byte[i2];
        int i3 = i2;
        while (i3 > 0) {
            byte[] bArrRemoveFirst = deque.removeFirst();
            int iMin = Math.min(i3, bArrRemoveFirst.length);
            System.arraycopy(bArrRemoveFirst, 0, bArr, i2 - i3, iMin);
            i3 -= iMin;
        }
        return bArr;
    }
}
