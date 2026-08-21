package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
final class zzei extends zzeg {
    private final byte[] zzd;
    private final boolean zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;

    private zzei(byte[] bArr, int i2, int i3, boolean z) {
        super();
        this.zzk = Integer.MAX_VALUE;
        this.zzd = bArr;
        this.zzf = i3 + i2;
        this.zzh = i2;
        this.zzi = this.zzh;
        this.zze = z;
    }

    private final byte zzaa() throws zzfo {
        int i2 = this.zzh;
        if (i2 == this.zzf) {
            throw zzfo.zza();
        }
        byte[] bArr = this.zzd;
        this.zzh = i2 + 1;
        return bArr[i2];
    }

    private final void zzf(int i2) throws zzfo {
        if (i2 >= 0) {
            int i3 = this.zzf;
            int i4 = this.zzh;
            if (i2 <= i3 - i4) {
                this.zzh = i4 + i2;
                return;
            }
        }
        if (i2 >= 0) {
            throw zzfo.zza();
        }
        throw zzfo.zzb();
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0066, code lost:
    
        if (r2[r3] >= 0) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final int zzv() {
        /*
            r5 = this;
            int r0 = r5.zzh
            int r1 = r5.zzf
            if (r1 == r0) goto L6b
            byte[] r2 = r5.zzd
            int r3 = r0 + 1
            r0 = r2[r0]
            if (r0 < 0) goto L11
            r5.zzh = r3
            return r0
        L11:
            int r1 = r1 - r3
            r4 = 9
            if (r1 < r4) goto L6b
            int r1 = r3 + 1
            r3 = r2[r3]
            int r3 = r3 << 7
            r0 = r0 ^ r3
            if (r0 >= 0) goto L22
            r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
            goto L68
        L22:
            int r3 = r1 + 1
            r1 = r2[r1]
            int r1 = r1 << 14
            r0 = r0 ^ r1
            if (r0 < 0) goto L2f
            r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
        L2d:
            r1 = r3
            goto L68
        L2f:
            int r1 = r3 + 1
            r3 = r2[r3]
            int r3 = r3 << 21
            r0 = r0 ^ r3
            if (r0 >= 0) goto L3d
            r2 = -2080896(0xffffffffffe03f80, float:NaN)
            r0 = r0 ^ r2
            goto L68
        L3d:
            int r3 = r1 + 1
            r1 = r2[r1]
            int r4 = r1 << 28
            r0 = r0 ^ r4
            r4 = 266354560(0xfe03f80, float:2.2112565E-29)
            r0 = r0 ^ r4
            if (r1 >= 0) goto L2d
            int r1 = r3 + 1
            r3 = r2[r3]
            if (r3 >= 0) goto L68
            int r3 = r1 + 1
            r1 = r2[r1]
            if (r1 >= 0) goto L2d
            int r1 = r3 + 1
            r3 = r2[r3]
            if (r3 >= 0) goto L68
            int r3 = r1 + 1
            r1 = r2[r1]
            if (r1 >= 0) goto L2d
            int r1 = r3 + 1
            r2 = r2[r3]
            if (r2 < 0) goto L6b
        L68:
            r5.zzh = r1
            return r0
        L6b:
            long r0 = r5.zzs()
            int r1 = (int) r0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzei.zzv():int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b0, code lost:
    
        if (r2[r0] >= 0) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final long zzw() {
        /*
            r11 = this;
            int r0 = r11.zzh
            int r1 = r11.zzf
            if (r1 == r0) goto Lb5
            byte[] r2 = r11.zzd
            int r3 = r0 + 1
            r0 = r2[r0]
            if (r0 < 0) goto L12
            r11.zzh = r3
            long r0 = (long) r0
            return r0
        L12:
            int r1 = r1 - r3
            r4 = 9
            if (r1 < r4) goto Lb5
            int r1 = r3 + 1
            r3 = r2[r3]
            int r3 = r3 << 7
            r0 = r0 ^ r3
            if (r0 >= 0) goto L26
            r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
        L22:
            long r2 = (long) r0
            r3 = r2
            goto Lb2
        L26:
            int r3 = r1 + 1
            r1 = r2[r1]
            int r1 = r1 << 14
            r0 = r0 ^ r1
            if (r0 < 0) goto L37
            r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
            long r0 = (long) r0
            r9 = r0
            r1 = r3
            r3 = r9
            goto Lb2
        L37:
            int r1 = r3 + 1
            r3 = r2[r3]
            int r3 = r3 << 21
            r0 = r0 ^ r3
            if (r0 >= 0) goto L45
            r2 = -2080896(0xffffffffffe03f80, float:NaN)
            r0 = r0 ^ r2
            goto L22
        L45:
            long r3 = (long) r0
            int r0 = r1 + 1
            r1 = r2[r1]
            long r5 = (long) r1
            r1 = 28
            long r5 = r5 << r1
            long r3 = r3 ^ r5
            r5 = 0
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 < 0) goto L5c
            r1 = 266354560(0xfe03f80, double:1.315966377E-315)
        L58:
            long r1 = r1 ^ r3
            r3 = r1
        L5a:
            r1 = r0
            goto Lb2
        L5c:
            int r1 = r0 + 1
            r0 = r2[r0]
            long r7 = (long) r0
            r0 = 35
            long r7 = r7 << r0
            long r3 = r3 ^ r7
            int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r0 >= 0) goto L70
            r5 = -34093383808(0xfffffff80fe03f80, double:NaN)
        L6e:
            long r3 = r3 ^ r5
            goto Lb2
        L70:
            int r0 = r1 + 1
            r1 = r2[r1]
            long r7 = (long) r1
            r1 = 42
            long r7 = r7 << r1
            long r3 = r3 ^ r7
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 < 0) goto L83
            r1 = 4363953127296(0x3f80fe03f80, double:2.1560793202584E-311)
            goto L58
        L83:
            int r1 = r0 + 1
            r0 = r2[r0]
            long r7 = (long) r0
            r0 = 49
            long r7 = r7 << r0
            long r3 = r3 ^ r7
            int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r0 >= 0) goto L96
            r5 = -558586000294016(0xfffe03f80fe03f80, double:NaN)
            goto L6e
        L96:
            int r0 = r1 + 1
            r1 = r2[r1]
            long r7 = (long) r1
            r1 = 56
            long r7 = r7 << r1
            long r3 = r3 ^ r7
            r7 = 71499008037633920(0xfe03f80fe03f80, double:6.838959413692434E-304)
            long r3 = r3 ^ r7
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 >= 0) goto L5a
            int r1 = r0 + 1
            r0 = r2[r0]
            long r7 = (long) r0
            int r0 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r0 < 0) goto Lb5
        Lb2:
            r11.zzh = r1
            return r3
        Lb5:
            long r0 = r11.zzs()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzei.zzw():long");
    }

    private final int zzx() throws zzfo {
        int i2 = this.zzh;
        if (this.zzf - i2 < 4) {
            throw zzfo.zza();
        }
        byte[] bArr = this.zzd;
        this.zzh = i2 + 4;
        return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    private final long zzy() throws zzfo {
        int i2 = this.zzh;
        if (this.zzf - i2 < 8) {
            throw zzfo.zza();
        }
        byte[] bArr = this.zzd;
        this.zzh = i2 + 8;
        return ((((long) bArr[i2 + 7]) & 255) << 56) | (((long) bArr[i2]) & 255) | ((((long) bArr[i2 + 1]) & 255) << 8) | ((((long) bArr[i2 + 2]) & 255) << 16) | ((((long) bArr[i2 + 3]) & 255) << 24) | ((((long) bArr[i2 + 4]) & 255) << 32) | ((((long) bArr[i2 + 5]) & 255) << 40) | ((((long) bArr[i2 + 6]) & 255) << 48);
    }

    private final void zzz() {
        this.zzf += this.zzg;
        int i2 = this.zzf;
        int i3 = i2 - this.zzi;
        int i4 = this.zzk;
        if (i3 <= i4) {
            this.zzg = 0;
        } else {
            this.zzg = i3 - i4;
            this.zzf = i2 - this.zzg;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final int zza() throws zzfo {
        if (zzt()) {
            this.zzj = 0;
            return 0;
        }
        this.zzj = zzv();
        int i2 = this.zzj;
        if ((i2 >>> 3) != 0) {
            return i2;
        }
        throw zzfo.zzd();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final void zza(int i2) throws zzfo {
        if (this.zzj != i2) {
            throw zzfo.zze();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final double zzb() {
        return Double.longBitsToDouble(zzy());
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final boolean zzb(int i2) throws zzfo {
        int iZza;
        int i3 = i2 & 7;
        int i4 = 0;
        if (i3 == 0) {
            if (this.zzf - this.zzh < 10) {
                while (i4 < 10) {
                    if (zzaa() < 0) {
                        i4++;
                    }
                }
                throw zzfo.zzc();
            }
            while (i4 < 10) {
                byte[] bArr = this.zzd;
                int i5 = this.zzh;
                this.zzh = i5 + 1;
                if (bArr[i5] < 0) {
                    i4++;
                }
            }
            throw zzfo.zzc();
            return true;
        }
        if (i3 == 1) {
            zzf(8);
            return true;
        }
        if (i3 == 2) {
            zzf(zzv());
            return true;
        }
        if (i3 != 3) {
            if (i3 == 4) {
                return false;
            }
            if (i3 != 5) {
                throw zzfo.zzf();
            }
            zzf(4);
            return true;
        }
        do {
            iZza = zza();
            if (iZza == 0) {
                break;
            }
        } while (zzb(iZza));
        zza(((i2 >>> 3) << 3) | 4);
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final float zzc() {
        return Float.intBitsToFloat(zzx());
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final int zzc(int i2) {
        if (i2 < 0) {
            throw zzfo.zzb();
        }
        int iZzu = i2 + zzu();
        int i3 = this.zzk;
        if (iZzu > i3) {
            throw zzfo.zza();
        }
        this.zzk = iZzu;
        zzz();
        return i3;
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final long zzd() {
        return zzw();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final void zzd(int i2) {
        this.zzk = i2;
        zzz();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final long zze() {
        return zzw();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final int zzf() {
        return zzv();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final long zzg() {
        return zzy();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final int zzh() {
        return zzx();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final boolean zzi() {
        return zzw() != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final String zzj() throws zzfo {
        int iZzv = zzv();
        if (iZzv > 0) {
            int i2 = this.zzf;
            int i3 = this.zzh;
            if (iZzv <= i2 - i3) {
                String str = new String(this.zzd, i3, iZzv, zzff.zza);
                this.zzh += iZzv;
                return str;
            }
        }
        if (iZzv == 0) {
            return "";
        }
        if (iZzv < 0) {
            throw zzfo.zzb();
        }
        throw zzfo.zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final String zzk() throws zzfo {
        int iZzv = zzv();
        if (iZzv > 0) {
            int i2 = this.zzf;
            int i3 = this.zzh;
            if (iZzv <= i2 - i3) {
                String strZzb = zzie.zzb(this.zzd, i3, iZzv);
                this.zzh += iZzv;
                return strZzb;
            }
        }
        if (iZzv == 0) {
            return "";
        }
        if (iZzv <= 0) {
            throw zzfo.zzb();
        }
        throw zzfo.zza();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0033  */
    @Override // com.google.android.gms.internal.measurement.zzeg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.internal.measurement.zzdu zzl() throws com.google.android.gms.internal.measurement.zzfo {
        /*
            r3 = this;
            int r0 = r3.zzv()
            if (r0 <= 0) goto L19
            int r1 = r3.zzf
            int r2 = r3.zzh
            int r1 = r1 - r2
            if (r0 > r1) goto L19
            byte[] r1 = r3.zzd
            com.google.android.gms.internal.measurement.zzdu r1 = com.google.android.gms.internal.measurement.zzdu.zza(r1, r2, r0)
            int r2 = r3.zzh
            int r2 = r2 + r0
            r3.zzh = r2
            return r1
        L19:
            if (r0 != 0) goto L1e
            com.google.android.gms.internal.measurement.zzdu r0 = com.google.android.gms.internal.measurement.zzdu.zza
            return r0
        L1e:
            if (r0 <= 0) goto L33
            int r1 = r3.zzf
            int r2 = r3.zzh
            int r1 = r1 - r2
            if (r0 > r1) goto L33
            int r0 = r0 + r2
            r3.zzh = r0
            byte[] r0 = r3.zzd
            int r1 = r3.zzh
            byte[] r0 = java.util.Arrays.copyOfRange(r0, r2, r1)
            goto L39
        L33:
            if (r0 > 0) goto L43
            if (r0 != 0) goto L3e
            byte[] r0 = com.google.android.gms.internal.measurement.zzff.zzb
        L39:
            com.google.android.gms.internal.measurement.zzdu r0 = com.google.android.gms.internal.measurement.zzdu.zza(r0)
            return r0
        L3e:
            com.google.android.gms.internal.measurement.zzfo r0 = com.google.android.gms.internal.measurement.zzfo.zzb()
            throw r0
        L43:
            com.google.android.gms.internal.measurement.zzfo r0 = com.google.android.gms.internal.measurement.zzfo.zza()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzei.zzl():com.google.android.gms.internal.measurement.zzdu");
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final int zzm() {
        return zzv();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final int zzn() {
        return zzv();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final int zzo() {
        return zzx();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final long zzp() {
        return zzy();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final int zzq() {
        return zzeg.zze(zzv());
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final long zzr() {
        return zzeg.zza(zzw());
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    final long zzs() throws zzfo {
        long j2 = 0;
        for (int i2 = 0; i2 < 64; i2 += 7) {
            byte bZzaa = zzaa();
            j2 |= ((long) (bZzaa & 127)) << i2;
            if ((bZzaa & 128) == 0) {
                return j2;
            }
        }
        throw zzfo.zzc();
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final boolean zzt() {
        return this.zzh == this.zzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzeg
    public final int zzu() {
        return this.zzh - this.zzi;
    }
}
