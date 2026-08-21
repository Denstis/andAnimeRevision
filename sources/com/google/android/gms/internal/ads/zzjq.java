package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzjq {
    private final zzoc zzant = new zzoc(8);
    private int zzaqt;

    private final long zzc(zziv zzivVar) {
        int i2 = 0;
        zzivVar.zza(this.zzant.data, 0, 1);
        int i3 = this.zzant.data[0] & 255;
        if (i3 == 0) {
            return Long.MIN_VALUE;
        }
        int i4 = 128;
        int i5 = 0;
        while ((i3 & i4) == 0) {
            i4 >>= 1;
            i5++;
        }
        int i6 = i3 & (i4 ^ (-1));
        zzivVar.zza(this.zzant.data, 1, i5);
        while (i2 < i5) {
            i2++;
            i6 = (this.zzant.data[i2] & 255) + (i6 << 8);
        }
        this.zzaqt += i5 + 1;
        return i6;
    }

    public final boolean zza(zziv zzivVar) {
        long length = zzivVar.getLength();
        long j2 = 1024;
        if (length != -1 && length <= 1024) {
            j2 = length;
        }
        int i2 = (int) j2;
        zzivVar.zza(this.zzant.data, 0, 4);
        long jZzio = this.zzant.zzio();
        this.zzaqt = 4;
        while (jZzio != 440786851) {
            int i3 = this.zzaqt + 1;
            this.zzaqt = i3;
            if (i3 == i2) {
                return false;
            }
            zzivVar.zza(this.zzant.data, 0, 1);
            jZzio = ((jZzio << 8) & (-256)) | ((long) (this.zzant.data[0] & 255));
        }
        long jZzc = zzc(zzivVar);
        long j3 = this.zzaqt;
        if (jZzc != Long.MIN_VALUE && (length == -1 || j3 + jZzc < length)) {
            while (true) {
                int i4 = this.zzaqt;
                long j4 = j3 + jZzc;
                if (i4 < j4) {
                    if (zzc(zzivVar) == Long.MIN_VALUE) {
                        return false;
                    }
                    long jZzc2 = zzc(zzivVar);
                    if (jZzc2 < 0 || jZzc2 > 2147483647L) {
                        break;
                    }
                    if (jZzc2 != 0) {
                        zzivVar.zzac((int) jZzc2);
                        this.zzaqt = (int) (((long) this.zzaqt) + jZzc2);
                    }
                } else if (i4 == j4) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }
}
