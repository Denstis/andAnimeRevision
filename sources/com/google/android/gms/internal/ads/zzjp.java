package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzjp {
    private static final long[] zzaqs = {128, 64, 32, 16, 8, 4, 2, 1};
    private int length;
    private int state;
    private final byte[] zzana = new byte[8];

    public static long zza(byte[] bArr, int i2, boolean z) {
        long j2 = ((long) bArr[0]) & 255;
        if (z) {
            j2 &= zzaqs[i2 - 1] ^ (-1);
        }
        for (int i3 = 1; i3 < i2; i3++) {
            j2 = (j2 << 8) | (((long) bArr[i3]) & 255);
        }
        return j2;
    }

    public static int zzaj(int i2) {
        long j2;
        int i3 = 0;
        do {
            long[] jArr = zzaqs;
            if (i3 >= jArr.length) {
                return -1;
            }
            j2 = jArr[i3] & ((long) i2);
            i3++;
        } while (j2 == 0);
        return i3;
    }

    public final void reset() {
        this.state = 0;
        this.length = 0;
    }

    public final long zza(zziv zzivVar, boolean z, boolean z2, int i2) {
        if (this.state == 0) {
            if (!zzivVar.zza(this.zzana, 0, 1, z)) {
                return -1L;
            }
            this.length = zzaj(this.zzana[0] & 255);
            if (this.length == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.state = 1;
        }
        int i3 = this.length;
        if (i3 > i2) {
            this.state = 0;
            return -2L;
        }
        if (i3 != 1) {
            zzivVar.readFully(this.zzana, 1, i3 - 1);
        }
        this.state = 0;
        return zza(this.zzana, this.length, z2);
    }

    public final int zzgi() {
        return this.length;
    }
}
