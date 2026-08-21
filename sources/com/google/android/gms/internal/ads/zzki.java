package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzki {
    private static final int[] zzaxh = {zzof.zzbi("isom"), zzof.zzbi("iso2"), zzof.zzbi("iso3"), zzof.zzbi("iso4"), zzof.zzbi("iso5"), zzof.zzbi("iso6"), zzof.zzbi("avc1"), zzof.zzbi("hvc1"), zzof.zzbi("hev1"), zzof.zzbi("mp41"), zzof.zzbi("mp42"), zzof.zzbi("3g2a"), zzof.zzbi("3g2b"), zzof.zzbi("3gr6"), zzof.zzbi("3gs6"), zzof.zzbi("3ge6"), zzof.zzbi("3gg6"), zzof.zzbi("M4V "), zzof.zzbi("M4A "), zzof.zzbi("f4v "), zzof.zzbi("kddi"), zzof.zzbi("M4VP"), zzof.zzbi("qt  "), zzof.zzbi("MSNV")};

    /* JADX WARN: Removed duplicated region for block: B:73:0x00a5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00a7 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean zzd(com.google.android.gms.internal.ads.zziv r16) {
        /*
            r0 = r16
            long r1 = r16.getLength()
            r3 = 4096(0x1000, double:2.0237E-320)
            r5 = -1
            int r7 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r7 == 0) goto L12
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 <= 0) goto L13
        L12:
            r1 = r3
        L13:
            int r2 = (int) r1
            com.google.android.gms.internal.ads.zzoc r1 = new com.google.android.gms.internal.ads.zzoc
            r3 = 64
            r1.<init>(r3)
            r3 = 0
            r4 = 0
            r5 = 0
        L1e:
            if (r4 >= r2) goto Lb7
            r7 = 8
            r1.reset(r7)
            byte[] r8 = r1.data
            r0.zza(r8, r3, r7)
            long r8 = r1.zzio()
            int r10 = r1.readInt()
            r11 = 1
            r13 = 16
            int r14 = (r8 > r11 ? 1 : (r8 == r11 ? 0 : -1))
            if (r14 != 0) goto L47
            byte[] r8 = r1.data
            r0.zza(r8, r7, r7)
            r1.zzbf(r13)
            long r8 = r1.zzis()
            goto L49
        L47:
            r13 = 8
        L49:
            long r11 = (long) r13
            int r14 = (r8 > r11 ? 1 : (r8 == r11 ? 0 : -1))
            if (r14 < 0) goto Lbe
            int r4 = r4 + r13
            int r13 = com.google.android.gms.internal.ads.zzjs.zzary
            if (r10 == r13) goto L1e
            int r13 = com.google.android.gms.internal.ads.zzjs.zzash
            if (r10 == r13) goto Lb5
            int r13 = com.google.android.gms.internal.ads.zzjs.zzasj
            if (r10 != r13) goto L5c
            goto Lb5
        L5c:
            long r13 = (long) r4
            long r13 = r13 + r8
            long r13 = r13 - r11
            long r6 = (long) r2
            int r15 = (r13 > r6 ? 1 : (r13 == r6 ? 0 : -1))
            if (r15 >= 0) goto Lb7
            long r8 = r8 - r11
            int r6 = (int) r8
            int r4 = r4 + r6
            int r7 = com.google.android.gms.internal.ads.zzjs.zzaqx
            if (r10 != r7) goto Lae
            r7 = 8
            if (r6 < r7) goto Lbe
            r1.reset(r6)
            byte[] r7 = r1.data
            r0.zza(r7, r3, r6)
            int r6 = r6 / 4
            r7 = 0
        L7a:
            if (r7 >= r6) goto Laa
            r8 = 1
            if (r7 != r8) goto L84
            r8 = 4
            r1.zzbh(r8)
            goto La7
        L84:
            int r8 = r1.readInt()
            int r9 = r8 >>> 8
            java.lang.String r10 = "3gp"
            int r10 = com.google.android.gms.internal.ads.zzof.zzbi(r10)
            if (r9 != r10) goto L94
        L92:
            r8 = 1
            goto La3
        L94:
            int[] r9 = com.google.android.gms.internal.ads.zzki.zzaxh
            int r10 = r9.length
            r11 = 0
        L98:
            if (r11 >= r10) goto La2
            r12 = r9[r11]
            if (r12 != r8) goto L9f
            goto L92
        L9f:
            int r11 = r11 + 1
            goto L98
        La2:
            r8 = 0
        La3:
            if (r8 == 0) goto La7
            r5 = 1
            goto Laa
        La7:
            int r7 = r7 + 1
            goto L7a
        Laa:
            if (r5 == 0) goto Lbe
            goto L1e
        Lae:
            if (r6 == 0) goto L1e
            r0.zzac(r6)
            goto L1e
        Lb5:
            r0 = 1
            goto Lb8
        Lb7:
            r0 = 0
        Lb8:
            if (r5 == 0) goto Lbe
            if (r0 != 0) goto Lbe
            r0 = 1
            return r0
        Lbe:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzki.zzd(com.google.android.gms.internal.ads.zziv):boolean");
    }
}
