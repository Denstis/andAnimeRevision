package com.google.android.gms.internal.ads;

import java.nio.ShortBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class zzif {
    private final int zzafn;
    private float zzaga;
    private float zzagb;
    private final int zzala;
    private final int zzalb;
    private final int zzalc;
    private final int zzald;
    private final short[] zzale;
    private int zzalf;
    private short[] zzalg;
    private int zzalh;
    private short[] zzali;
    private int zzalj;
    private short[] zzalk;
    private int zzall;
    private int zzalm;
    private int zzaln;
    private int zzalo;
    private int zzalp;
    private int zzalq;
    private int zzalr;
    private int zzals;
    private int zzalt;
    private int zzalu;

    public zzif(int i2, int i3) {
        this.zzafn = i2;
        this.zzala = i3;
        this.zzalb = i2 / 400;
        this.zzalc = i2 / 65;
        this.zzald = this.zzalc * 2;
        int i4 = this.zzald;
        this.zzale = new short[i4];
        this.zzalf = i4;
        this.zzalg = new short[i4 * i3];
        this.zzalh = i4;
        this.zzali = new short[i4 * i3];
        this.zzalj = i4;
        this.zzalk = new short[i4 * i3];
        this.zzall = 0;
        this.zzalm = 0;
        this.zzalr = 0;
        this.zzaga = 1.0f;
        this.zzagb = 1.0f;
    }

    private final int zza(short[] sArr, int i2, int i3, int i4) {
        int i5 = i2 * this.zzala;
        int i6 = 1;
        int i7 = 0;
        int i8 = 0;
        int i9 = 255;
        while (i3 <= i4) {
            int i10 = 0;
            for (int i11 = 0; i11 < i3; i11++) {
                short s = sArr[i5 + i11];
                short s2 = sArr[i5 + i3 + i11];
                i10 += s >= s2 ? s - s2 : s2 - s;
            }
            if (i10 * i7 < i6 * i3) {
                i7 = i3;
                i6 = i10;
            }
            if (i10 * i9 > i8 * i3) {
                i9 = i3;
                i8 = i10;
            }
            i3++;
        }
        this.zzalt = i6 / i7;
        this.zzalu = i8 / i9;
        return i7;
    }

    private static void zza(int i2, int i3, short[] sArr, int i4, short[] sArr2, int i5, short[] sArr3, int i6) {
        for (int i7 = 0; i7 < i3; i7++) {
            int i8 = (i5 * i3) + i7;
            int i9 = (i6 * i3) + i7;
            int i10 = (i4 * i3) + i7;
            for (int i11 = 0; i11 < i2; i11++) {
                sArr[i10] = (short) (((sArr2[i8] * (i2 - i11)) + (sArr3[i9] * i11)) / i2);
                i10 += i3;
                i8 += i3;
                i9 += i3;
            }
        }
    }

    private final void zza(short[] sArr, int i2, int i3) {
        zzt(i3);
        int i4 = this.zzala;
        System.arraycopy(sArr, i2 * i4, this.zzali, this.zzalo * i4, i4 * i3);
        this.zzalo += i3;
    }

    private final void zzb(short[] sArr, int i2, int i3) {
        int i4 = this.zzald / i3;
        int i5 = this.zzala;
        int i6 = i3 * i5;
        int i7 = i2 * i5;
        for (int i8 = 0; i8 < i4; i8++) {
            int i9 = 0;
            for (int i10 = 0; i10 < i6; i10++) {
                i9 += sArr[(i8 * i6) + i7 + i10];
            }
            this.zzale[i8] = (short) (i9 / i6);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0104  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void zzfs() {
        /*
            Method dump skipped, instruction units count: 585
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzif.zzfs():void");
    }

    private final void zzt(int i2) {
        int i3 = this.zzalo + i2;
        int i4 = this.zzalh;
        if (i3 > i4) {
            this.zzalh = i4 + (i4 / 2) + i2;
            this.zzali = Arrays.copyOf(this.zzali, this.zzalh * this.zzala);
        }
    }

    private final void zzu(int i2) {
        int i3 = this.zzaln + i2;
        int i4 = this.zzalf;
        if (i3 > i4) {
            this.zzalf = i4 + (i4 / 2) + i2;
            this.zzalg = Arrays.copyOf(this.zzalg, this.zzalf * this.zzala);
        }
    }

    public final void setSpeed(float f2) {
        this.zzaga = f2;
    }

    public final void zza(ShortBuffer shortBuffer) {
        int iRemaining = shortBuffer.remaining();
        int i2 = this.zzala;
        int i3 = iRemaining / i2;
        zzu(i3);
        shortBuffer.get(this.zzalg, this.zzaln * this.zzala, ((i2 * i3) << 1) / 2);
        this.zzaln += i3;
        zzfs();
    }

    public final void zzb(ShortBuffer shortBuffer) {
        int iMin = Math.min(shortBuffer.remaining() / this.zzala, this.zzalo);
        shortBuffer.put(this.zzali, 0, this.zzala * iMin);
        this.zzalo -= iMin;
        short[] sArr = this.zzali;
        int i2 = this.zzala;
        System.arraycopy(sArr, iMin * i2, sArr, 0, this.zzalo * i2);
    }

    public final void zzc(float f2) {
        this.zzagb = f2;
    }

    public final void zzev() {
        int i2;
        int i3 = this.zzaln;
        float f2 = this.zzaga;
        float f3 = this.zzagb;
        int i4 = this.zzalo + ((int) ((((i3 / (f2 / f3)) + this.zzalp) / f3) + 0.5f));
        zzu((this.zzald * 2) + i3);
        int i5 = 0;
        while (true) {
            i2 = this.zzald;
            int i6 = this.zzala;
            if (i5 >= i2 * 2 * i6) {
                break;
            }
            this.zzalg[(i6 * i3) + i5] = 0;
            i5++;
        }
        this.zzaln += i2 * 2;
        zzfs();
        if (this.zzalo > i4) {
            this.zzalo = i4;
        }
        this.zzaln = 0;
        this.zzalq = 0;
        this.zzalp = 0;
    }

    public final int zzfr() {
        return this.zzalo;
    }
}
