package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzdsm<T> implements zzdsv<T> {
    private final zzdsg zzhne;
    private final boolean zzhnf;
    private final zzdtn<?, ?> zzhno;
    private final zzdql<?> zzhnp;

    private zzdsm(zzdtn<?, ?> zzdtnVar, zzdql<?> zzdqlVar, zzdsg zzdsgVar) {
        this.zzhno = zzdtnVar;
        this.zzhnf = zzdqlVar.zzm(zzdsgVar);
        this.zzhnp = zzdqlVar;
        this.zzhne = zzdsgVar;
    }

    static <T> zzdsm<T> zza(zzdtn<?, ?> zzdtnVar, zzdql<?> zzdqlVar, zzdsg zzdsgVar) {
        return new zzdsm<>(zzdtnVar, zzdqlVar, zzdsgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdsv
    public final boolean equals(T t, T t2) {
        if (!this.zzhno.zzay(t).equals(this.zzhno.zzay(t2))) {
            return false;
        }
        if (this.zzhnf) {
            return this.zzhnp.zzai(t).equals(this.zzhnp.zzai(t2));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdsv
    public final int hashCode(T t) {
        int iHashCode = this.zzhno.zzay(t).hashCode();
        return this.zzhnf ? (iHashCode * 53) + this.zzhnp.zzai(t).hashCode() : iHashCode;
    }

    @Override // com.google.android.gms.internal.ads.zzdsv
    public final T newInstance() {
        return (T) this.zzhne.zzazy().zzazq();
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x0085 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:? A[LOOP:0: B:46:0x000c->B:54:?, LOOP_END, SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzdsv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zza(T r11, com.google.android.gms.internal.ads.zzdsw r12, com.google.android.gms.internal.ads.zzdqj r13) {
        /*
            r10 = this;
            com.google.android.gms.internal.ads.zzdtn<?, ?> r0 = r10.zzhno
            com.google.android.gms.internal.ads.zzdql<?> r1 = r10.zzhnp
            java.lang.Object r2 = r0.zzaz(r11)
            com.google.android.gms.internal.ads.zzdqm r3 = r1.zzaj(r11)
        Lc:
            int r4 = r12.zzays()     // Catch: java.lang.Throwable -> L8e
            r5 = 2147483647(0x7fffffff, float:NaN)
            if (r4 != r5) goto L19
            r0.zzi(r11, r2)
            return
        L19:
            int r4 = r12.getTag()     // Catch: java.lang.Throwable -> L8e
            r6 = 11
            if (r4 == r6) goto L3e
            r5 = r4 & 7
            r6 = 2
            if (r5 != r6) goto L39
            com.google.android.gms.internal.ads.zzdsg r5 = r10.zzhne     // Catch: java.lang.Throwable -> L8e
            int r4 = r4 >>> 3
            java.lang.Object r4 = r1.zza(r13, r5, r4)     // Catch: java.lang.Throwable -> L8e
            if (r4 == 0) goto L34
            r1.zza(r12, r4, r13, r3)     // Catch: java.lang.Throwable -> L8e
            goto L82
        L34:
            boolean r4 = r0.zza(r2, r12)     // Catch: java.lang.Throwable -> L8e
            goto L83
        L39:
            boolean r4 = r12.zzayt()     // Catch: java.lang.Throwable -> L8e
            goto L83
        L3e:
            r4 = 0
            r6 = 0
            r7 = r6
        L41:
            int r8 = r12.zzays()     // Catch: java.lang.Throwable -> L8e
            if (r8 == r5) goto L6f
            int r8 = r12.getTag()     // Catch: java.lang.Throwable -> L8e
            r9 = 16
            if (r8 != r9) goto L5a
            int r4 = r12.zzayd()     // Catch: java.lang.Throwable -> L8e
            com.google.android.gms.internal.ads.zzdsg r6 = r10.zzhne     // Catch: java.lang.Throwable -> L8e
            java.lang.Object r6 = r1.zza(r13, r6, r4)     // Catch: java.lang.Throwable -> L8e
            goto L41
        L5a:
            r9 = 26
            if (r8 != r9) goto L69
            if (r6 == 0) goto L64
            r1.zza(r12, r6, r13, r3)     // Catch: java.lang.Throwable -> L8e
            goto L41
        L64:
            com.google.android.gms.internal.ads.zzdpm r7 = r12.zzayc()     // Catch: java.lang.Throwable -> L8e
            goto L41
        L69:
            boolean r8 = r12.zzayt()     // Catch: java.lang.Throwable -> L8e
            if (r8 != 0) goto L41
        L6f:
            int r5 = r12.getTag()     // Catch: java.lang.Throwable -> L8e
            r8 = 12
            if (r5 != r8) goto L89
            if (r7 == 0) goto L82
            if (r6 == 0) goto L7f
            r1.zza(r7, r6, r13, r3)     // Catch: java.lang.Throwable -> L8e
            goto L82
        L7f:
            r0.zza(r2, r4, r7)     // Catch: java.lang.Throwable -> L8e
        L82:
            r4 = 1
        L83:
            if (r4 != 0) goto Lc
            r0.zzi(r11, r2)
            return
        L89:
            com.google.android.gms.internal.ads.zzdrg r12 = com.google.android.gms.internal.ads.zzdrg.zzbag()     // Catch: java.lang.Throwable -> L8e
            throw r12     // Catch: java.lang.Throwable -> L8e
        L8e:
            r12 = move-exception
            r0.zzi(r11, r2)
            goto L94
        L93:
            throw r12
        L94:
            goto L93
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdsm.zza(java.lang.Object, com.google.android.gms.internal.ads.zzdsw, com.google.android.gms.internal.ads.zzdqj):void");
    }

    @Override // com.google.android.gms.internal.ads.zzdsv
    public final void zza(T t, zzduk zzdukVar) {
        for (T t2 : this.zzhnp.zzai(t)) {
            zzdqo zzdqoVar = (zzdqo) t2.getKey();
            if (zzdqoVar.zzazi() != zzduh.MESSAGE || zzdqoVar.zzazj() || zzdqoVar.zzazk()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            zzdukVar.zzb(zzdqoVar.zzab(), t2 instanceof zzdrj ? ((zzdrj) t2).zzbam().zzaxg() : t2.getValue());
        }
        zzdtn<?, ?> zzdtnVar = this.zzhno;
        zzdtnVar.zzc(zzdtnVar.zzay(t), zzdukVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0099 A[EDGE_INSN: B:57:0x0099->B:34:0x0099 BREAK  A[LOOP:1: B:18:0x0053->B:62:0x0053], SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzdsv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zza(T r10, byte[] r11, int r12, int r13, com.google.android.gms.internal.ads.zzdpl r14) throws com.google.android.gms.internal.ads.zzdrg {
        /*
            r9 = this;
            r0 = r10
            com.google.android.gms.internal.ads.zzdqw r0 = (com.google.android.gms.internal.ads.zzdqw) r0
            com.google.android.gms.internal.ads.zzdtq r1 = r0.zzhkr
            com.google.android.gms.internal.ads.zzdtq r2 = com.google.android.gms.internal.ads.zzdtq.zzbbx()
            if (r1 != r2) goto L11
            com.google.android.gms.internal.ads.zzdtq r1 = com.google.android.gms.internal.ads.zzdtq.zzbby()
            r0.zzhkr = r1
        L11:
            com.google.android.gms.internal.ads.zzdqw$zzb r10 = (com.google.android.gms.internal.ads.zzdqw.zzb) r10
            r10.zzazz()
            r10 = 0
            r0 = r10
        L18:
            if (r12 >= r13) goto La4
            int r4 = com.google.android.gms.internal.ads.zzdpi.zza(r11, r12, r14)
            int r2 = r14.zzhfx
            r12 = 11
            r3 = 2
            if (r2 == r12) goto L51
            r12 = r2 & 7
            if (r12 != r3) goto L4c
            com.google.android.gms.internal.ads.zzdql<?> r12 = r9.zzhnp
            com.google.android.gms.internal.ads.zzdqj r0 = r14.zzhga
            com.google.android.gms.internal.ads.zzdsg r3 = r9.zzhne
            int r5 = r2 >>> 3
            java.lang.Object r12 = r12.zza(r0, r3, r5)
            r0 = r12
            com.google.android.gms.internal.ads.zzdqw$zze r0 = (com.google.android.gms.internal.ads.zzdqw.zze) r0
            if (r0 != 0) goto L43
            r3 = r11
            r5 = r13
            r6 = r1
            r7 = r14
            int r12 = com.google.android.gms.internal.ads.zzdpi.zza(r2, r3, r4, r5, r6, r7)
            goto L18
        L43:
            com.google.android.gms.internal.ads.zzdsr.zzbbf()
            java.lang.NoSuchMethodError r10 = new java.lang.NoSuchMethodError
            r10.<init>()
            throw r10
        L4c:
            int r12 = com.google.android.gms.internal.ads.zzdpi.zza(r2, r11, r4, r13, r14)
            goto L18
        L51:
            r12 = 0
            r2 = r10
        L53:
            if (r4 >= r13) goto L99
            int r4 = com.google.android.gms.internal.ads.zzdpi.zza(r11, r4, r14)
            int r5 = r14.zzhfx
            int r6 = r5 >>> 3
            r7 = r5 & 7
            if (r6 == r3) goto L7b
            r8 = 3
            if (r6 == r8) goto L65
            goto L90
        L65:
            if (r0 != 0) goto L72
            if (r7 != r3) goto L90
            int r4 = com.google.android.gms.internal.ads.zzdpi.zze(r11, r4, r14)
            java.lang.Object r2 = r14.zzhfz
            com.google.android.gms.internal.ads.zzdpm r2 = (com.google.android.gms.internal.ads.zzdpm) r2
            goto L53
        L72:
            com.google.android.gms.internal.ads.zzdsr.zzbbf()
            java.lang.NoSuchMethodError r10 = new java.lang.NoSuchMethodError
            r10.<init>()
            throw r10
        L7b:
            if (r7 != 0) goto L90
            int r4 = com.google.android.gms.internal.ads.zzdpi.zza(r11, r4, r14)
            int r12 = r14.zzhfx
            com.google.android.gms.internal.ads.zzdql<?> r0 = r9.zzhnp
            com.google.android.gms.internal.ads.zzdqj r5 = r14.zzhga
            com.google.android.gms.internal.ads.zzdsg r6 = r9.zzhne
            java.lang.Object r0 = r0.zza(r5, r6, r12)
            com.google.android.gms.internal.ads.zzdqw$zze r0 = (com.google.android.gms.internal.ads.zzdqw.zze) r0
            goto L53
        L90:
            r6 = 12
            if (r5 == r6) goto L99
            int r4 = com.google.android.gms.internal.ads.zzdpi.zza(r5, r11, r4, r13, r14)
            goto L53
        L99:
            if (r2 == 0) goto La1
            int r12 = r12 << 3
            r12 = r12 | r3
            r1.zzc(r12, r2)
        La1:
            r12 = r4
            goto L18
        La4:
            if (r12 != r13) goto La7
            return
        La7:
            com.google.android.gms.internal.ads.zzdrg r10 = com.google.android.gms.internal.ads.zzdrg.zzbai()
            goto Lad
        Lac:
            throw r10
        Lad:
            goto Lac
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdsm.zza(java.lang.Object, byte[], int, int, com.google.android.gms.internal.ads.zzdpl):void");
    }

    @Override // com.google.android.gms.internal.ads.zzdsv
    public final void zzak(T t) {
        this.zzhno.zzak(t);
        this.zzhnp.zzak(t);
    }

    @Override // com.google.android.gms.internal.ads.zzdsv
    public final int zzau(T t) {
        zzdtn<?, ?> zzdtnVar = this.zzhno;
        int iZzba = zzdtnVar.zzba(zzdtnVar.zzay(t)) + 0;
        return this.zzhnf ? iZzba + this.zzhnp.zzai(t).zzazd() : iZzba;
    }

    @Override // com.google.android.gms.internal.ads.zzdsv
    public final boolean zzaw(T t) {
        return this.zzhnp.zzai(t).isInitialized();
    }

    @Override // com.google.android.gms.internal.ads.zzdsv
    public final void zzf(T t, T t2) {
        zzdsx.zza(this.zzhno, t, t2);
        if (this.zzhnf) {
            zzdsx.zza(this.zzhnp, t, t2);
        }
    }
}
