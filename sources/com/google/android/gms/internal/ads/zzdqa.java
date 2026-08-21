package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzdqa extends zzdpy {
    private final byte[] buffer;
    private int limit;
    private int pos;
    private final boolean zzhgo;
    private int zzhgp;
    private int zzhgq;
    private int zzhgr;
    private int zzhgs;

    private zzdqa(byte[] bArr, int i2, int i3, boolean z) {
        super();
        this.zzhgs = Integer.MAX_VALUE;
        this.buffer = bArr;
        this.limit = i3 + i2;
        this.pos = i2;
        this.zzhgq = this.pos;
        this.zzhgo = z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0066, code lost:
    
        if (r2[r3] >= 0) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final int zzaym() {
        /*
            r5 = this;
            int r0 = r5.pos
            int r1 = r5.limit
            if (r1 == r0) goto L6b
            byte[] r2 = r5.buffer
            int r3 = r0 + 1
            r0 = r2[r0]
            if (r0 < 0) goto L11
            r5.pos = r3
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
            r5.pos = r1
            return r0
        L6b:
            long r0 = r5.zzayj()
            int r1 = (int) r0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdqa.zzaym():int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b0, code lost:
    
        if (r2[r0] >= 0) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final long zzayn() {
        /*
            r11 = this;
            int r0 = r11.pos
            int r1 = r11.limit
            if (r1 == r0) goto Lb5
            byte[] r2 = r11.buffer
            int r3 = r0 + 1
            r0 = r2[r0]
            if (r0 < 0) goto L12
            r11.pos = r3
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
            r11.pos = r1
            return r3
        Lb5:
            long r0 = r11.zzayj()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdqa.zzayn():long");
    }

    private final int zzayo() throws zzdrg {
        int i2 = this.pos;
        if (this.limit - i2 < 4) {
            throw zzdrg.zzbac();
        }
        byte[] bArr = this.buffer;
        this.pos = i2 + 4;
        return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    private final long zzayp() throws zzdrg {
        int i2 = this.pos;
        if (this.limit - i2 < 8) {
            throw zzdrg.zzbac();
        }
        byte[] bArr = this.buffer;
        this.pos = i2 + 8;
        return ((((long) bArr[i2 + 7]) & 255) << 56) | (((long) bArr[i2]) & 255) | ((((long) bArr[i2 + 1]) & 255) << 8) | ((((long) bArr[i2 + 2]) & 255) << 16) | ((((long) bArr[i2 + 3]) & 255) << 24) | ((((long) bArr[i2 + 4]) & 255) << 32) | ((((long) bArr[i2 + 5]) & 255) << 40) | ((((long) bArr[i2 + 6]) & 255) << 48);
    }

    private final void zzayq() {
        this.limit += this.zzhgp;
        int i2 = this.limit;
        int i3 = i2 - this.zzhgq;
        int i4 = this.zzhgs;
        if (i3 <= i4) {
            this.zzhgp = 0;
        } else {
            this.zzhgp = i3 - i4;
            this.limit = i2 - this.zzhgp;
        }
    }

    private final byte zzayr() throws zzdrg {
        int i2 = this.pos;
        if (i2 == this.limit) {
            throw zzdrg.zzbac();
        }
        byte[] bArr = this.buffer;
        this.pos = i2 + 1;
        return bArr[i2];
    }

    private final void zzfu(int i2) throws zzdrg {
        if (i2 >= 0) {
            int i3 = this.limit;
            int i4 = this.pos;
            if (i2 <= i3 - i4) {
                this.pos = i4 + i2;
                return;
            }
        }
        if (i2 >= 0) {
            throw zzdrg.zzbac();
        }
        throw zzdrg.zzbad();
    }

    @Override // com.google.android.gms.internal.ads.zzdpy
    public final double readDouble() {
        return Double.longBitsToDouble(zzayp());
    }

    @Override // com.google.android.gms.internal.ads.zzdpy
    public final float readFloat() {
        return Float.intBitsToFloat(zzayo());
    }

    @Override // com.google.android.gms.internal.ads.zzdpy
    public final String readString() throws zzdrg {
        int iZzaym = zzaym();
        if (iZzaym > 0) {
            int i2 = this.limit;
            int i3 = this.pos;
            if (iZzaym <= i2 - i3) {
                String str = new String(this.buffer, i3, iZzaym, zzdqx.UTF_8);
                this.pos += iZzaym;
                return str;
            }
        }
        if (iZzaym == 0) {
            return "";
        }
        if (iZzaym < 0) {
            throw zzdrg.zzbad();
        }
        throw zzdrg.zzbac();
    }

    @Override // com.google.android.gms.internal.ads.zzdpy
    public final int zzaxu() throws zzdrg {
        if (zzayk()) {
            this.zzhgr = 0;
            return 0;
        }
        this.zzhgr = zzaym();
        int i2 = this.zzhgr;
        if ((i2 >>> 3) != 0) {
            return i2;
        }
        throw zzdrg.zzbaf();
    }

    @Override // com.google.android.gms.internal.ads.zzdpy
    public final long zzaxv() {
        return zzayn();
    }

    @Override // com.google.android.gms.internal.ads.zzdpy
    public final long zzaxw() {
        return zzayn();
    }

    @Override // com.google.android.gms.internal.ads.zzdpy
    public final int zzaxx() {
        return zzaym();
    }

    @Override // com.google.android.gms.internal.ads.zzdpy
    public final long zzaxy() {
        return zzayp();
    }

    @Override // com.google.android.gms.internal.ads.zzdpy
    public final int zzaxz() {
        return zzayo();
    }

    @Override // com.google.android.gms.internal.ads.zzdpy
    public final boolean zzaya() {
        return zzayn() != 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdpy
    public final String zzayb() throws zzdrg {
        int iZzaym = zzaym();
        if (iZzaym > 0) {
            int i2 = this.limit;
            int i3 = this.pos;
            if (iZzaym <= i2 - i3) {
                String strZzn = zzdtw.zzn(this.buffer, i3, iZzaym);
                this.pos += iZzaym;
                return strZzn;
            }
        }
        if (iZzaym == 0) {
            return "";
        }
        if (iZzaym <= 0) {
            throw zzdrg.zzbad();
        }
        throw zzdrg.zzbac();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0033  */
    @Override // com.google.android.gms.internal.ads.zzdpy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.internal.ads.zzdpm zzayc() throws com.google.android.gms.internal.ads.zzdrg {
        /*
            r3 = this;
            int r0 = r3.zzaym()
            if (r0 <= 0) goto L19
            int r1 = r3.limit
            int r2 = r3.pos
            int r1 = r1 - r2
            if (r0 > r1) goto L19
            byte[] r1 = r3.buffer
            com.google.android.gms.internal.ads.zzdpm r1 = com.google.android.gms.internal.ads.zzdpm.zzh(r1, r2, r0)
            int r2 = r3.pos
            int r2 = r2 + r0
            r3.pos = r2
            return r1
        L19:
            if (r0 != 0) goto L1e
            com.google.android.gms.internal.ads.zzdpm r0 = com.google.android.gms.internal.ads.zzdpm.zzhgb
            return r0
        L1e:
            if (r0 <= 0) goto L33
            int r1 = r3.limit
            int r2 = r3.pos
            int r1 = r1 - r2
            if (r0 > r1) goto L33
            int r0 = r0 + r2
            r3.pos = r0
            byte[] r0 = r3.buffer
            int r1 = r3.pos
            byte[] r0 = java.util.Arrays.copyOfRange(r0, r2, r1)
            goto L39
        L33:
            if (r0 > 0) goto L43
            if (r0 != 0) goto L3e
            byte[] r0 = com.google.android.gms.internal.ads.zzdqx.zzhlj
        L39:
            com.google.android.gms.internal.ads.zzdpm r0 = com.google.android.gms.internal.ads.zzdpm.zzz(r0)
            return r0
        L3e:
            com.google.android.gms.internal.ads.zzdrg r0 = com.google.android.gms.internal.ads.zzdrg.zzbad()
            throw r0
        L43:
            com.google.android.gms.internal.ads.zzdrg r0 = com.google.android.gms.internal.ads.zzdrg.zzbac()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdqa.zzayc():com.google.android.gms.internal.ads.zzdpm");
    }

    @Override // com.google.android.gms.internal.ads.zzdpy
    public final int zzayd() {
        return zzaym();
    }

    @Override // com.google.android.gms.internal.ads.zzdpy
    public final int zzaye() {
        return zzaym();
    }

    @Override // com.google.android.gms.internal.ads.zzdpy
    public final int zzayf() {
        return zzayo();
    }

    @Override // com.google.android.gms.internal.ads.zzdpy
    public final long zzayg() {
        return zzayp();
    }

    @Override // com.google.android.gms.internal.ads.zzdpy
    public final int zzayh() {
        return zzdpy.zzft(zzaym());
    }

    @Override // com.google.android.gms.internal.ads.zzdpy
    public final long zzayi() {
        return zzdpy.zzez(zzayn());
    }

    @Override // com.google.android.gms.internal.ads.zzdpy
    final long zzayj() throws zzdrg {
        long j2 = 0;
        for (int i2 = 0; i2 < 64; i2 += 7) {
            byte bZzayr = zzayr();
            j2 |= ((long) (bZzayr & 127)) << i2;
            if ((bZzayr & 128) == 0) {
                return j2;
            }
        }
        throw zzdrg.zzbae();
    }

    @Override // com.google.android.gms.internal.ads.zzdpy
    public final boolean zzayk() {
        return this.pos == this.limit;
    }

    @Override // com.google.android.gms.internal.ads.zzdpy
    public final int zzayl() {
        return this.pos - this.zzhgq;
    }

    @Override // com.google.android.gms.internal.ads.zzdpy
    public final void zzfp(int i2) throws zzdrg {
        if (this.zzhgr != i2) {
            throw zzdrg.zzbag();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdpy
    public final boolean zzfq(int i2) throws zzdrg {
        int iZzaxu;
        int i3 = i2 & 7;
        int i4 = 0;
        if (i3 == 0) {
            if (this.limit - this.pos < 10) {
                while (i4 < 10) {
                    if (zzayr() < 0) {
                        i4++;
                    }
                }
                throw zzdrg.zzbae();
            }
            while (i4 < 10) {
                byte[] bArr = this.buffer;
                int i5 = this.pos;
                this.pos = i5 + 1;
                if (bArr[i5] < 0) {
                    i4++;
                }
            }
            throw zzdrg.zzbae();
            return true;
        }
        if (i3 == 1) {
            zzfu(8);
            return true;
        }
        if (i3 == 2) {
            zzfu(zzaym());
            return true;
        }
        if (i3 != 3) {
            if (i3 == 4) {
                return false;
            }
            if (i3 != 5) {
                throw zzdrg.zzbah();
            }
            zzfu(4);
            return true;
        }
        do {
            iZzaxu = zzaxu();
            if (iZzaxu == 0) {
                break;
            }
        } while (zzfq(iZzaxu));
        zzfp(((i2 >>> 3) << 3) | 4);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdpy
    public final int zzfr(int i2) {
        if (i2 < 0) {
            throw zzdrg.zzbad();
        }
        int iZzayl = i2 + zzayl();
        int i3 = this.zzhgs;
        if (iZzayl > i3) {
            throw zzdrg.zzbac();
        }
        this.zzhgs = iZzayl;
        zzayq();
        return i3;
    }

    @Override // com.google.android.gms.internal.ads.zzdpy
    public final void zzfs(int i2) {
        this.zzhgs = i2;
        zzayq();
    }
}
