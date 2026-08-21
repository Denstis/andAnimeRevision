package com.google.android.gms.internal.ads;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class zzdqd implements zzdsw {
    private int tag;
    private final zzdpy zzhgu;
    private int zzhgv;
    private int zzhgw = 0;

    private zzdqd(zzdpy zzdpyVar) {
        this.zzhgu = (zzdpy) zzdqx.zza(zzdpyVar, "input");
        this.zzhgu.zzhgm = this;
    }

    public static zzdqd zza(zzdpy zzdpyVar) {
        zzdqd zzdqdVar = zzdpyVar.zzhgm;
        return zzdqdVar != null ? zzdqdVar : new zzdqd(zzdpyVar);
    }

    private final Object zza(zzdue zzdueVar, Class<?> cls, zzdqj zzdqjVar) throws zzdrf {
        switch (zzdqc.zzhgt[zzdueVar.ordinal()]) {
            case 1:
                return Boolean.valueOf(zzaya());
            case 2:
                return zzayc();
            case 3:
                return Double.valueOf(readDouble());
            case 4:
                return Integer.valueOf(zzaye());
            case 5:
                return Integer.valueOf(zzaxz());
            case 6:
                return Long.valueOf(zzaxy());
            case 7:
                return Float.valueOf(readFloat());
            case 8:
                return Integer.valueOf(zzaxx());
            case 9:
                return Long.valueOf(zzaxw());
            case 10:
                zzfv(2);
                return zzc(zzdsr.zzbbf().zzh(cls), zzdqjVar);
            case 11:
                return Integer.valueOf(zzayf());
            case 12:
                return Long.valueOf(zzayg());
            case 13:
                return Integer.valueOf(zzayh());
            case 14:
                return Long.valueOf(zzayi());
            case 15:
                return zzayb();
            case 16:
                return Integer.valueOf(zzayd());
            case 17:
                return Long.valueOf(zzaxv());
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    private final void zza(List<String> list, boolean z) throws zzdrf {
        int iZzaxu;
        int iZzaxu2;
        if ((this.tag & 7) != 2) {
            throw zzdrg.zzbah();
        }
        if (!(list instanceof zzdrn) || z) {
            do {
                list.add(z ? zzayb() : readString());
                if (this.zzhgu.zzayk()) {
                    return;
                } else {
                    iZzaxu = this.zzhgu.zzaxu();
                }
            } while (iZzaxu == this.tag);
            this.zzhgw = iZzaxu;
            return;
        }
        zzdrn zzdrnVar = (zzdrn) list;
        do {
            zzdrnVar.zzdb(zzayc());
            if (this.zzhgu.zzayk()) {
                return;
            } else {
                iZzaxu2 = this.zzhgu.zzaxu();
            }
        } while (iZzaxu2 == this.tag);
        this.zzhgw = iZzaxu2;
    }

    private final <T> T zzc(zzdsv<T> zzdsvVar, zzdqj zzdqjVar) throws zzdrg {
        int iZzayd = this.zzhgu.zzayd();
        zzdpy zzdpyVar = this.zzhgu;
        if (zzdpyVar.zzhgj >= zzdpyVar.zzhgk) {
            throw new zzdrg("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
        }
        int iZzfr = zzdpyVar.zzfr(iZzayd);
        T tNewInstance = zzdsvVar.newInstance();
        this.zzhgu.zzhgj++;
        zzdsvVar.zza(tNewInstance, this, zzdqjVar);
        zzdsvVar.zzak(tNewInstance);
        this.zzhgu.zzfp(0);
        r5.zzhgj--;
        this.zzhgu.zzfs(iZzfr);
        return tNewInstance;
    }

    private final <T> T zzd(zzdsv<T> zzdsvVar, zzdqj zzdqjVar) {
        int i2 = this.zzhgv;
        this.zzhgv = ((this.tag >>> 3) << 3) | 4;
        try {
            T tNewInstance = zzdsvVar.newInstance();
            zzdsvVar.zza(tNewInstance, this, zzdqjVar);
            zzdsvVar.zzak(tNewInstance);
            if (this.tag == this.zzhgv) {
                return tNewInstance;
            }
            throw zzdrg.zzbai();
        } finally {
            this.zzhgv = i2;
        }
    }

    private final void zzfv(int i2) throws zzdrf {
        if ((this.tag & 7) != i2) {
            throw zzdrg.zzbah();
        }
    }

    private static void zzfw(int i2) throws zzdrg {
        if ((i2 & 7) != 0) {
            throw zzdrg.zzbai();
        }
    }

    private static void zzfx(int i2) throws zzdrg {
        if ((i2 & 3) != 0) {
            throw zzdrg.zzbai();
        }
    }

    private final void zzfy(int i2) throws zzdrg {
        if (this.zzhgu.zzayl() != i2) {
            throw zzdrg.zzbac();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final int getTag() {
        return this.tag;
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final double readDouble() throws zzdrf {
        zzfv(1);
        return this.zzhgu.readDouble();
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final float readFloat() throws zzdrf {
        zzfv(5);
        return this.zzhgu.readFloat();
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final String readString() throws zzdrf {
        zzfv(2);
        return this.zzhgu.readString();
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final void readStringList(List<String> list) throws zzdrf {
        zza(list, false);
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final <T> T zza(zzdsv<T> zzdsvVar, zzdqj zzdqjVar) throws zzdrf {
        zzfv(2);
        return (T) zzc(zzdsvVar, zzdqjVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzdsw
    public final <T> void zza(List<T> list, zzdsv<T> zzdsvVar, zzdqj zzdqjVar) throws zzdrf {
        int iZzaxu;
        int i2 = this.tag;
        if ((i2 & 7) != 2) {
            throw zzdrg.zzbah();
        }
        do {
            list.add(zzc(zzdsvVar, zzdqjVar));
            if (this.zzhgu.zzayk() || this.zzhgw != 0) {
                return;
            } else {
                iZzaxu = this.zzhgu.zzaxu();
            }
        } while (iZzaxu == i2);
        this.zzhgw = iZzaxu;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x005b, code lost:
    
        r8.put(r2, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0063, code lost:
    
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzdsw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final <K, V> void zza(java.util.Map<K, V> r8, com.google.android.gms.internal.ads.zzdrx<K, V> r9, com.google.android.gms.internal.ads.zzdqj r10) throws com.google.android.gms.internal.ads.zzdrf {
        /*
            r7 = this;
            r0 = 2
            r7.zzfv(r0)
            com.google.android.gms.internal.ads.zzdpy r1 = r7.zzhgu
            int r1 = r1.zzayd()
            com.google.android.gms.internal.ads.zzdpy r2 = r7.zzhgu
            int r1 = r2.zzfr(r1)
            K r2 = r9.zzhmu
            V r3 = r9.zzcfq
        L14:
            int r4 = r7.zzays()     // Catch: java.lang.Throwable -> L64
            r5 = 2147483647(0x7fffffff, float:NaN)
            if (r4 == r5) goto L5b
            com.google.android.gms.internal.ads.zzdpy r5 = r7.zzhgu     // Catch: java.lang.Throwable -> L64
            boolean r5 = r5.zzayk()     // Catch: java.lang.Throwable -> L64
            if (r5 != 0) goto L5b
            r5 = 1
            java.lang.String r6 = "Unable to parse map entry."
            if (r4 == r5) goto L46
            if (r4 == r0) goto L39
            boolean r4 = r7.zzayt()     // Catch: com.google.android.gms.internal.ads.zzdrf -> L4e java.lang.Throwable -> L64
            if (r4 == 0) goto L33
            goto L14
        L33:
            com.google.android.gms.internal.ads.zzdrg r4 = new com.google.android.gms.internal.ads.zzdrg     // Catch: com.google.android.gms.internal.ads.zzdrf -> L4e java.lang.Throwable -> L64
            r4.<init>(r6)     // Catch: com.google.android.gms.internal.ads.zzdrf -> L4e java.lang.Throwable -> L64
            throw r4     // Catch: com.google.android.gms.internal.ads.zzdrf -> L4e java.lang.Throwable -> L64
        L39:
            com.google.android.gms.internal.ads.zzdue r4 = r9.zzhmv     // Catch: com.google.android.gms.internal.ads.zzdrf -> L4e java.lang.Throwable -> L64
            V r5 = r9.zzcfq     // Catch: com.google.android.gms.internal.ads.zzdrf -> L4e java.lang.Throwable -> L64
            java.lang.Class r5 = r5.getClass()     // Catch: com.google.android.gms.internal.ads.zzdrf -> L4e java.lang.Throwable -> L64
            java.lang.Object r3 = r7.zza(r4, r5, r10)     // Catch: com.google.android.gms.internal.ads.zzdrf -> L4e java.lang.Throwable -> L64
            goto L14
        L46:
            com.google.android.gms.internal.ads.zzdue r4 = r9.zzhmt     // Catch: com.google.android.gms.internal.ads.zzdrf -> L4e java.lang.Throwable -> L64
            r5 = 0
            java.lang.Object r2 = r7.zza(r4, r5, r5)     // Catch: com.google.android.gms.internal.ads.zzdrf -> L4e java.lang.Throwable -> L64
            goto L14
        L4e:
            boolean r4 = r7.zzayt()     // Catch: java.lang.Throwable -> L64
            if (r4 == 0) goto L55
            goto L14
        L55:
            com.google.android.gms.internal.ads.zzdrg r8 = new com.google.android.gms.internal.ads.zzdrg     // Catch: java.lang.Throwable -> L64
            r8.<init>(r6)     // Catch: java.lang.Throwable -> L64
            throw r8     // Catch: java.lang.Throwable -> L64
        L5b:
            r8.put(r2, r3)     // Catch: java.lang.Throwable -> L64
            com.google.android.gms.internal.ads.zzdpy r8 = r7.zzhgu
            r8.zzfs(r1)
            return
        L64:
            r8 = move-exception
            com.google.android.gms.internal.ads.zzdpy r9 = r7.zzhgu
            r9.zzfs(r1)
            goto L6c
        L6b:
            throw r8
        L6c:
            goto L6b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdqd.zza(java.util.Map, com.google.android.gms.internal.ads.zzdrx, com.google.android.gms.internal.ads.zzdqj):void");
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final long zzaxv() throws zzdrf {
        zzfv(0);
        return this.zzhgu.zzaxv();
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final long zzaxw() throws zzdrf {
        zzfv(0);
        return this.zzhgu.zzaxw();
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final int zzaxx() throws zzdrf {
        zzfv(0);
        return this.zzhgu.zzaxx();
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final long zzaxy() throws zzdrf {
        zzfv(1);
        return this.zzhgu.zzaxy();
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final int zzaxz() throws zzdrf {
        zzfv(5);
        return this.zzhgu.zzaxz();
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final boolean zzaya() throws zzdrf {
        zzfv(0);
        return this.zzhgu.zzaya();
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final String zzayb() throws zzdrf {
        zzfv(2);
        return this.zzhgu.zzayb();
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final zzdpm zzayc() throws zzdrf {
        zzfv(2);
        return this.zzhgu.zzayc();
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final int zzayd() throws zzdrf {
        zzfv(0);
        return this.zzhgu.zzayd();
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final int zzaye() throws zzdrf {
        zzfv(0);
        return this.zzhgu.zzaye();
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final int zzayf() throws zzdrf {
        zzfv(5);
        return this.zzhgu.zzayf();
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final long zzayg() throws zzdrf {
        zzfv(1);
        return this.zzhgu.zzayg();
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final int zzayh() throws zzdrf {
        zzfv(0);
        return this.zzhgu.zzayh();
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final long zzayi() throws zzdrf {
        zzfv(0);
        return this.zzhgu.zzayi();
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final int zzays() {
        int i2 = this.zzhgw;
        if (i2 != 0) {
            this.tag = i2;
            this.zzhgw = 0;
        } else {
            this.tag = this.zzhgu.zzaxu();
        }
        int i3 = this.tag;
        if (i3 == 0 || i3 == this.zzhgv) {
            return Integer.MAX_VALUE;
        }
        return i3 >>> 3;
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final boolean zzayt() {
        int i2;
        if (this.zzhgu.zzayk() || (i2 = this.tag) == this.zzhgv) {
            return false;
        }
        return this.zzhgu.zzfq(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final <T> T zzb(zzdsv<T> zzdsvVar, zzdqj zzdqjVar) throws zzdrf {
        zzfv(3);
        return (T) zzd(zzdsvVar, zzdqjVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzdsw
    public final <T> void zzb(List<T> list, zzdsv<T> zzdsvVar, zzdqj zzdqjVar) throws zzdrf {
        int iZzaxu;
        int i2 = this.tag;
        if ((i2 & 7) != 3) {
            throw zzdrg.zzbah();
        }
        do {
            list.add(zzd(zzdsvVar, zzdqjVar));
            if (this.zzhgu.zzayk() || this.zzhgw != 0) {
                return;
            } else {
                iZzaxu = this.zzhgu.zzaxu();
            }
        } while (iZzaxu == i2);
        this.zzhgw = iZzaxu;
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final void zzk(List<Double> list) throws zzdrg {
        int iZzaxu;
        int iZzaxu2;
        if (!(list instanceof zzdqi)) {
            int i2 = this.tag & 7;
            if (i2 == 1) {
                do {
                    list.add(Double.valueOf(this.zzhgu.readDouble()));
                    if (this.zzhgu.zzayk()) {
                        return;
                    } else {
                        iZzaxu = this.zzhgu.zzaxu();
                    }
                } while (iZzaxu == this.tag);
                this.zzhgw = iZzaxu;
                return;
            }
            if (i2 != 2) {
                throw zzdrg.zzbah();
            }
            int iZzayd = this.zzhgu.zzayd();
            zzfw(iZzayd);
            int iZzayl = this.zzhgu.zzayl() + iZzayd;
            do {
                list.add(Double.valueOf(this.zzhgu.readDouble()));
            } while (this.zzhgu.zzayl() < iZzayl);
            return;
        }
        zzdqi zzdqiVar = (zzdqi) list;
        int i3 = this.tag & 7;
        if (i3 == 1) {
            do {
                zzdqiVar.zzd(this.zzhgu.readDouble());
                if (this.zzhgu.zzayk()) {
                    return;
                } else {
                    iZzaxu2 = this.zzhgu.zzaxu();
                }
            } while (iZzaxu2 == this.tag);
            this.zzhgw = iZzaxu2;
            return;
        }
        if (i3 != 2) {
            throw zzdrg.zzbah();
        }
        int iZzayd2 = this.zzhgu.zzayd();
        zzfw(iZzayd2);
        int iZzayl2 = this.zzhgu.zzayl() + iZzayd2;
        do {
            zzdqiVar.zzd(this.zzhgu.readDouble());
        } while (this.zzhgu.zzayl() < iZzayl2);
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final void zzl(List<Float> list) throws zzdrg {
        int iZzaxu;
        int iZzaxu2;
        if (!(list instanceof zzdqs)) {
            int i2 = this.tag & 7;
            if (i2 == 2) {
                int iZzayd = this.zzhgu.zzayd();
                zzfx(iZzayd);
                int iZzayl = this.zzhgu.zzayl() + iZzayd;
                do {
                    list.add(Float.valueOf(this.zzhgu.readFloat()));
                } while (this.zzhgu.zzayl() < iZzayl);
                return;
            }
            if (i2 != 5) {
                throw zzdrg.zzbah();
            }
            do {
                list.add(Float.valueOf(this.zzhgu.readFloat()));
                if (this.zzhgu.zzayk()) {
                    return;
                } else {
                    iZzaxu = this.zzhgu.zzaxu();
                }
            } while (iZzaxu == this.tag);
            this.zzhgw = iZzaxu;
            return;
        }
        zzdqs zzdqsVar = (zzdqs) list;
        int i3 = this.tag & 7;
        if (i3 == 2) {
            int iZzayd2 = this.zzhgu.zzayd();
            zzfx(iZzayd2);
            int iZzayl2 = this.zzhgu.zzayl() + iZzayd2;
            do {
                zzdqsVar.zzh(this.zzhgu.readFloat());
            } while (this.zzhgu.zzayl() < iZzayl2);
            return;
        }
        if (i3 != 5) {
            throw zzdrg.zzbah();
        }
        do {
            zzdqsVar.zzh(this.zzhgu.readFloat());
            if (this.zzhgu.zzayk()) {
                return;
            } else {
                iZzaxu2 = this.zzhgu.zzaxu();
            }
        } while (iZzaxu2 == this.tag);
        this.zzhgw = iZzaxu2;
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final void zzm(List<Long> list) throws zzdrg {
        int iZzaxu;
        int iZzaxu2;
        if (!(list instanceof zzdru)) {
            int i2 = this.tag & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(this.zzhgu.zzaxv()));
                    if (this.zzhgu.zzayk()) {
                        return;
                    } else {
                        iZzaxu = this.zzhgu.zzaxu();
                    }
                } while (iZzaxu == this.tag);
                this.zzhgw = iZzaxu;
                return;
            }
            if (i2 != 2) {
                throw zzdrg.zzbah();
            }
            int iZzayl = this.zzhgu.zzayl() + this.zzhgu.zzayd();
            do {
                list.add(Long.valueOf(this.zzhgu.zzaxv()));
            } while (this.zzhgu.zzayl() < iZzayl);
            zzfy(iZzayl);
            return;
        }
        zzdru zzdruVar = (zzdru) list;
        int i3 = this.tag & 7;
        if (i3 == 0) {
            do {
                zzdruVar.zzfl(this.zzhgu.zzaxv());
                if (this.zzhgu.zzayk()) {
                    return;
                } else {
                    iZzaxu2 = this.zzhgu.zzaxu();
                }
            } while (iZzaxu2 == this.tag);
            this.zzhgw = iZzaxu2;
            return;
        }
        if (i3 != 2) {
            throw zzdrg.zzbah();
        }
        int iZzayl2 = this.zzhgu.zzayl() + this.zzhgu.zzayd();
        do {
            zzdruVar.zzfl(this.zzhgu.zzaxv());
        } while (this.zzhgu.zzayl() < iZzayl2);
        zzfy(iZzayl2);
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final void zzn(List<Long> list) throws zzdrg {
        int iZzaxu;
        int iZzaxu2;
        if (!(list instanceof zzdru)) {
            int i2 = this.tag & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(this.zzhgu.zzaxw()));
                    if (this.zzhgu.zzayk()) {
                        return;
                    } else {
                        iZzaxu = this.zzhgu.zzaxu();
                    }
                } while (iZzaxu == this.tag);
                this.zzhgw = iZzaxu;
                return;
            }
            if (i2 != 2) {
                throw zzdrg.zzbah();
            }
            int iZzayl = this.zzhgu.zzayl() + this.zzhgu.zzayd();
            do {
                list.add(Long.valueOf(this.zzhgu.zzaxw()));
            } while (this.zzhgu.zzayl() < iZzayl);
            zzfy(iZzayl);
            return;
        }
        zzdru zzdruVar = (zzdru) list;
        int i3 = this.tag & 7;
        if (i3 == 0) {
            do {
                zzdruVar.zzfl(this.zzhgu.zzaxw());
                if (this.zzhgu.zzayk()) {
                    return;
                } else {
                    iZzaxu2 = this.zzhgu.zzaxu();
                }
            } while (iZzaxu2 == this.tag);
            this.zzhgw = iZzaxu2;
            return;
        }
        if (i3 != 2) {
            throw zzdrg.zzbah();
        }
        int iZzayl2 = this.zzhgu.zzayl() + this.zzhgu.zzayd();
        do {
            zzdruVar.zzfl(this.zzhgu.zzaxw());
        } while (this.zzhgu.zzayl() < iZzayl2);
        zzfy(iZzayl2);
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final void zzo(List<Integer> list) throws zzdrg {
        int iZzaxu;
        int iZzaxu2;
        if (!(list instanceof zzdqy)) {
            int i2 = this.tag & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.zzhgu.zzaxx()));
                    if (this.zzhgu.zzayk()) {
                        return;
                    } else {
                        iZzaxu = this.zzhgu.zzaxu();
                    }
                } while (iZzaxu == this.tag);
                this.zzhgw = iZzaxu;
                return;
            }
            if (i2 != 2) {
                throw zzdrg.zzbah();
            }
            int iZzayl = this.zzhgu.zzayl() + this.zzhgu.zzayd();
            do {
                list.add(Integer.valueOf(this.zzhgu.zzaxx()));
            } while (this.zzhgu.zzayl() < iZzayl);
            zzfy(iZzayl);
            return;
        }
        zzdqy zzdqyVar = (zzdqy) list;
        int i3 = this.tag & 7;
        if (i3 == 0) {
            do {
                zzdqyVar.zzgp(this.zzhgu.zzaxx());
                if (this.zzhgu.zzayk()) {
                    return;
                } else {
                    iZzaxu2 = this.zzhgu.zzaxu();
                }
            } while (iZzaxu2 == this.tag);
            this.zzhgw = iZzaxu2;
            return;
        }
        if (i3 != 2) {
            throw zzdrg.zzbah();
        }
        int iZzayl2 = this.zzhgu.zzayl() + this.zzhgu.zzayd();
        do {
            zzdqyVar.zzgp(this.zzhgu.zzaxx());
        } while (this.zzhgu.zzayl() < iZzayl2);
        zzfy(iZzayl2);
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final void zzp(List<Long> list) throws zzdrg {
        int iZzaxu;
        int iZzaxu2;
        if (!(list instanceof zzdru)) {
            int i2 = this.tag & 7;
            if (i2 == 1) {
                do {
                    list.add(Long.valueOf(this.zzhgu.zzaxy()));
                    if (this.zzhgu.zzayk()) {
                        return;
                    } else {
                        iZzaxu = this.zzhgu.zzaxu();
                    }
                } while (iZzaxu == this.tag);
                this.zzhgw = iZzaxu;
                return;
            }
            if (i2 != 2) {
                throw zzdrg.zzbah();
            }
            int iZzayd = this.zzhgu.zzayd();
            zzfw(iZzayd);
            int iZzayl = this.zzhgu.zzayl() + iZzayd;
            do {
                list.add(Long.valueOf(this.zzhgu.zzaxy()));
            } while (this.zzhgu.zzayl() < iZzayl);
            return;
        }
        zzdru zzdruVar = (zzdru) list;
        int i3 = this.tag & 7;
        if (i3 == 1) {
            do {
                zzdruVar.zzfl(this.zzhgu.zzaxy());
                if (this.zzhgu.zzayk()) {
                    return;
                } else {
                    iZzaxu2 = this.zzhgu.zzaxu();
                }
            } while (iZzaxu2 == this.tag);
            this.zzhgw = iZzaxu2;
            return;
        }
        if (i3 != 2) {
            throw zzdrg.zzbah();
        }
        int iZzayd2 = this.zzhgu.zzayd();
        zzfw(iZzayd2);
        int iZzayl2 = this.zzhgu.zzayl() + iZzayd2;
        do {
            zzdruVar.zzfl(this.zzhgu.zzaxy());
        } while (this.zzhgu.zzayl() < iZzayl2);
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final void zzq(List<Integer> list) throws zzdrg {
        int iZzaxu;
        int iZzaxu2;
        if (!(list instanceof zzdqy)) {
            int i2 = this.tag & 7;
            if (i2 == 2) {
                int iZzayd = this.zzhgu.zzayd();
                zzfx(iZzayd);
                int iZzayl = this.zzhgu.zzayl() + iZzayd;
                do {
                    list.add(Integer.valueOf(this.zzhgu.zzaxz()));
                } while (this.zzhgu.zzayl() < iZzayl);
                return;
            }
            if (i2 != 5) {
                throw zzdrg.zzbah();
            }
            do {
                list.add(Integer.valueOf(this.zzhgu.zzaxz()));
                if (this.zzhgu.zzayk()) {
                    return;
                } else {
                    iZzaxu = this.zzhgu.zzaxu();
                }
            } while (iZzaxu == this.tag);
            this.zzhgw = iZzaxu;
            return;
        }
        zzdqy zzdqyVar = (zzdqy) list;
        int i3 = this.tag & 7;
        if (i3 == 2) {
            int iZzayd2 = this.zzhgu.zzayd();
            zzfx(iZzayd2);
            int iZzayl2 = this.zzhgu.zzayl() + iZzayd2;
            do {
                zzdqyVar.zzgp(this.zzhgu.zzaxz());
            } while (this.zzhgu.zzayl() < iZzayl2);
            return;
        }
        if (i3 != 5) {
            throw zzdrg.zzbah();
        }
        do {
            zzdqyVar.zzgp(this.zzhgu.zzaxz());
            if (this.zzhgu.zzayk()) {
                return;
            } else {
                iZzaxu2 = this.zzhgu.zzaxu();
            }
        } while (iZzaxu2 == this.tag);
        this.zzhgw = iZzaxu2;
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final void zzr(List<Boolean> list) throws zzdrg {
        int iZzaxu;
        int iZzaxu2;
        if (!(list instanceof zzdpk)) {
            int i2 = this.tag & 7;
            if (i2 == 0) {
                do {
                    list.add(Boolean.valueOf(this.zzhgu.zzaya()));
                    if (this.zzhgu.zzayk()) {
                        return;
                    } else {
                        iZzaxu = this.zzhgu.zzaxu();
                    }
                } while (iZzaxu == this.tag);
                this.zzhgw = iZzaxu;
                return;
            }
            if (i2 != 2) {
                throw zzdrg.zzbah();
            }
            int iZzayl = this.zzhgu.zzayl() + this.zzhgu.zzayd();
            do {
                list.add(Boolean.valueOf(this.zzhgu.zzaya()));
            } while (this.zzhgu.zzayl() < iZzayl);
            zzfy(iZzayl);
            return;
        }
        zzdpk zzdpkVar = (zzdpk) list;
        int i3 = this.tag & 7;
        if (i3 == 0) {
            do {
                zzdpkVar.addBoolean(this.zzhgu.zzaya());
                if (this.zzhgu.zzayk()) {
                    return;
                } else {
                    iZzaxu2 = this.zzhgu.zzaxu();
                }
            } while (iZzaxu2 == this.tag);
            this.zzhgw = iZzaxu2;
            return;
        }
        if (i3 != 2) {
            throw zzdrg.zzbah();
        }
        int iZzayl2 = this.zzhgu.zzayl() + this.zzhgu.zzayd();
        do {
            zzdpkVar.addBoolean(this.zzhgu.zzaya());
        } while (this.zzhgu.zzayl() < iZzayl2);
        zzfy(iZzayl2);
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final void zzs(List<String> list) throws zzdrf {
        zza(list, true);
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final void zzt(List<zzdpm> list) throws zzdrf {
        int iZzaxu;
        if ((this.tag & 7) != 2) {
            throw zzdrg.zzbah();
        }
        do {
            list.add(zzayc());
            if (this.zzhgu.zzayk()) {
                return;
            } else {
                iZzaxu = this.zzhgu.zzaxu();
            }
        } while (iZzaxu == this.tag);
        this.zzhgw = iZzaxu;
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final void zzu(List<Integer> list) throws zzdrg {
        int iZzaxu;
        int iZzaxu2;
        if (!(list instanceof zzdqy)) {
            int i2 = this.tag & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.zzhgu.zzayd()));
                    if (this.zzhgu.zzayk()) {
                        return;
                    } else {
                        iZzaxu = this.zzhgu.zzaxu();
                    }
                } while (iZzaxu == this.tag);
                this.zzhgw = iZzaxu;
                return;
            }
            if (i2 != 2) {
                throw zzdrg.zzbah();
            }
            int iZzayl = this.zzhgu.zzayl() + this.zzhgu.zzayd();
            do {
                list.add(Integer.valueOf(this.zzhgu.zzayd()));
            } while (this.zzhgu.zzayl() < iZzayl);
            zzfy(iZzayl);
            return;
        }
        zzdqy zzdqyVar = (zzdqy) list;
        int i3 = this.tag & 7;
        if (i3 == 0) {
            do {
                zzdqyVar.zzgp(this.zzhgu.zzayd());
                if (this.zzhgu.zzayk()) {
                    return;
                } else {
                    iZzaxu2 = this.zzhgu.zzaxu();
                }
            } while (iZzaxu2 == this.tag);
            this.zzhgw = iZzaxu2;
            return;
        }
        if (i3 != 2) {
            throw zzdrg.zzbah();
        }
        int iZzayl2 = this.zzhgu.zzayl() + this.zzhgu.zzayd();
        do {
            zzdqyVar.zzgp(this.zzhgu.zzayd());
        } while (this.zzhgu.zzayl() < iZzayl2);
        zzfy(iZzayl2);
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final void zzv(List<Integer> list) throws zzdrg {
        int iZzaxu;
        int iZzaxu2;
        if (!(list instanceof zzdqy)) {
            int i2 = this.tag & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.zzhgu.zzaye()));
                    if (this.zzhgu.zzayk()) {
                        return;
                    } else {
                        iZzaxu = this.zzhgu.zzaxu();
                    }
                } while (iZzaxu == this.tag);
                this.zzhgw = iZzaxu;
                return;
            }
            if (i2 != 2) {
                throw zzdrg.zzbah();
            }
            int iZzayl = this.zzhgu.zzayl() + this.zzhgu.zzayd();
            do {
                list.add(Integer.valueOf(this.zzhgu.zzaye()));
            } while (this.zzhgu.zzayl() < iZzayl);
            zzfy(iZzayl);
            return;
        }
        zzdqy zzdqyVar = (zzdqy) list;
        int i3 = this.tag & 7;
        if (i3 == 0) {
            do {
                zzdqyVar.zzgp(this.zzhgu.zzaye());
                if (this.zzhgu.zzayk()) {
                    return;
                } else {
                    iZzaxu2 = this.zzhgu.zzaxu();
                }
            } while (iZzaxu2 == this.tag);
            this.zzhgw = iZzaxu2;
            return;
        }
        if (i3 != 2) {
            throw zzdrg.zzbah();
        }
        int iZzayl2 = this.zzhgu.zzayl() + this.zzhgu.zzayd();
        do {
            zzdqyVar.zzgp(this.zzhgu.zzaye());
        } while (this.zzhgu.zzayl() < iZzayl2);
        zzfy(iZzayl2);
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final void zzw(List<Integer> list) throws zzdrg {
        int iZzaxu;
        int iZzaxu2;
        if (!(list instanceof zzdqy)) {
            int i2 = this.tag & 7;
            if (i2 == 2) {
                int iZzayd = this.zzhgu.zzayd();
                zzfx(iZzayd);
                int iZzayl = this.zzhgu.zzayl() + iZzayd;
                do {
                    list.add(Integer.valueOf(this.zzhgu.zzayf()));
                } while (this.zzhgu.zzayl() < iZzayl);
                return;
            }
            if (i2 != 5) {
                throw zzdrg.zzbah();
            }
            do {
                list.add(Integer.valueOf(this.zzhgu.zzayf()));
                if (this.zzhgu.zzayk()) {
                    return;
                } else {
                    iZzaxu = this.zzhgu.zzaxu();
                }
            } while (iZzaxu == this.tag);
            this.zzhgw = iZzaxu;
            return;
        }
        zzdqy zzdqyVar = (zzdqy) list;
        int i3 = this.tag & 7;
        if (i3 == 2) {
            int iZzayd2 = this.zzhgu.zzayd();
            zzfx(iZzayd2);
            int iZzayl2 = this.zzhgu.zzayl() + iZzayd2;
            do {
                zzdqyVar.zzgp(this.zzhgu.zzayf());
            } while (this.zzhgu.zzayl() < iZzayl2);
            return;
        }
        if (i3 != 5) {
            throw zzdrg.zzbah();
        }
        do {
            zzdqyVar.zzgp(this.zzhgu.zzayf());
            if (this.zzhgu.zzayk()) {
                return;
            } else {
                iZzaxu2 = this.zzhgu.zzaxu();
            }
        } while (iZzaxu2 == this.tag);
        this.zzhgw = iZzaxu2;
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final void zzx(List<Long> list) throws zzdrg {
        int iZzaxu;
        int iZzaxu2;
        if (!(list instanceof zzdru)) {
            int i2 = this.tag & 7;
            if (i2 == 1) {
                do {
                    list.add(Long.valueOf(this.zzhgu.zzayg()));
                    if (this.zzhgu.zzayk()) {
                        return;
                    } else {
                        iZzaxu = this.zzhgu.zzaxu();
                    }
                } while (iZzaxu == this.tag);
                this.zzhgw = iZzaxu;
                return;
            }
            if (i2 != 2) {
                throw zzdrg.zzbah();
            }
            int iZzayd = this.zzhgu.zzayd();
            zzfw(iZzayd);
            int iZzayl = this.zzhgu.zzayl() + iZzayd;
            do {
                list.add(Long.valueOf(this.zzhgu.zzayg()));
            } while (this.zzhgu.zzayl() < iZzayl);
            return;
        }
        zzdru zzdruVar = (zzdru) list;
        int i3 = this.tag & 7;
        if (i3 == 1) {
            do {
                zzdruVar.zzfl(this.zzhgu.zzayg());
                if (this.zzhgu.zzayk()) {
                    return;
                } else {
                    iZzaxu2 = this.zzhgu.zzaxu();
                }
            } while (iZzaxu2 == this.tag);
            this.zzhgw = iZzaxu2;
            return;
        }
        if (i3 != 2) {
            throw zzdrg.zzbah();
        }
        int iZzayd2 = this.zzhgu.zzayd();
        zzfw(iZzayd2);
        int iZzayl2 = this.zzhgu.zzayl() + iZzayd2;
        do {
            zzdruVar.zzfl(this.zzhgu.zzayg());
        } while (this.zzhgu.zzayl() < iZzayl2);
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final void zzy(List<Integer> list) throws zzdrg {
        int iZzaxu;
        int iZzaxu2;
        if (!(list instanceof zzdqy)) {
            int i2 = this.tag & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.zzhgu.zzayh()));
                    if (this.zzhgu.zzayk()) {
                        return;
                    } else {
                        iZzaxu = this.zzhgu.zzaxu();
                    }
                } while (iZzaxu == this.tag);
                this.zzhgw = iZzaxu;
                return;
            }
            if (i2 != 2) {
                throw zzdrg.zzbah();
            }
            int iZzayl = this.zzhgu.zzayl() + this.zzhgu.zzayd();
            do {
                list.add(Integer.valueOf(this.zzhgu.zzayh()));
            } while (this.zzhgu.zzayl() < iZzayl);
            zzfy(iZzayl);
            return;
        }
        zzdqy zzdqyVar = (zzdqy) list;
        int i3 = this.tag & 7;
        if (i3 == 0) {
            do {
                zzdqyVar.zzgp(this.zzhgu.zzayh());
                if (this.zzhgu.zzayk()) {
                    return;
                } else {
                    iZzaxu2 = this.zzhgu.zzaxu();
                }
            } while (iZzaxu2 == this.tag);
            this.zzhgw = iZzaxu2;
            return;
        }
        if (i3 != 2) {
            throw zzdrg.zzbah();
        }
        int iZzayl2 = this.zzhgu.zzayl() + this.zzhgu.zzayd();
        do {
            zzdqyVar.zzgp(this.zzhgu.zzayh());
        } while (this.zzhgu.zzayl() < iZzayl2);
        zzfy(iZzayl2);
    }

    @Override // com.google.android.gms.internal.ads.zzdsw
    public final void zzz(List<Long> list) throws zzdrg {
        int iZzaxu;
        int iZzaxu2;
        if (!(list instanceof zzdru)) {
            int i2 = this.tag & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(this.zzhgu.zzayi()));
                    if (this.zzhgu.zzayk()) {
                        return;
                    } else {
                        iZzaxu = this.zzhgu.zzaxu();
                    }
                } while (iZzaxu == this.tag);
                this.zzhgw = iZzaxu;
                return;
            }
            if (i2 != 2) {
                throw zzdrg.zzbah();
            }
            int iZzayl = this.zzhgu.zzayl() + this.zzhgu.zzayd();
            do {
                list.add(Long.valueOf(this.zzhgu.zzayi()));
            } while (this.zzhgu.zzayl() < iZzayl);
            zzfy(iZzayl);
            return;
        }
        zzdru zzdruVar = (zzdru) list;
        int i3 = this.tag & 7;
        if (i3 == 0) {
            do {
                zzdruVar.zzfl(this.zzhgu.zzayi());
                if (this.zzhgu.zzayk()) {
                    return;
                } else {
                    iZzaxu2 = this.zzhgu.zzaxu();
                }
            } while (iZzaxu2 == this.tag);
            this.zzhgw = iZzaxu2;
            return;
        }
        if (i3 != 2) {
            throw zzdrg.zzbah();
        }
        int iZzayl2 = this.zzhgu.zzayl() + this.zzhgu.zzayd();
        do {
            zzdruVar.zzfl(this.zzhgu.zzayi());
        } while (this.zzhgu.zzayl() < iZzayl2);
        zzfy(iZzayl2);
    }
}
