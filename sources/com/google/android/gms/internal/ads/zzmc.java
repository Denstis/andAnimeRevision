package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class zzmc implements zzjd {
    private final zznc zzazw;
    private final int zzbcl;
    private zzmb zzbcp;
    private zzmb zzbcq;
    private zzgo zzbcr;
    private boolean zzbcs;
    private zzgo zzbct;
    private long zzbcu;
    private int zzbcv;
    private zzme zzbcw;
    private final zzma zzbcm = new zzma();
    private final zzlz zzbcn = new zzlz();
    private final zzoc zzant = new zzoc(32);
    private final AtomicInteger zzbco = new AtomicInteger();

    public zzmc(zznc zzncVar) {
        this.zzazw = zzncVar;
        this.zzbcl = zzncVar.zzia();
        int i2 = this.zzbcl;
        this.zzbcv = i2;
        this.zzbcp = new zzmb(0L, i2);
        this.zzbcq = this.zzbcp;
    }

    private final void zza(long j2, byte[] bArr, int i2) {
        zzed(j2);
        int i3 = 0;
        while (i3 < i2) {
            int i4 = (int) (j2 - this.zzbcp.zzbch);
            int iMin = Math.min(i2 - i3, this.zzbcl - i4);
            zzmz zzmzVar = this.zzbcp.zzbcj;
            System.arraycopy(zzmzVar.data, zzmzVar.zzay(i4), bArr, i3, iMin);
            j2 += (long) iMin;
            i3 += iMin;
            if (j2 == this.zzbcp.zzaqu) {
                this.zzazw.zza(zzmzVar);
                this.zzbcp = this.zzbcp.zzht();
            }
        }
    }

    private final int zzat(int i2) {
        if (this.zzbcv == this.zzbcl) {
            this.zzbcv = 0;
            zzmb zzmbVar = this.zzbcq;
            if (zzmbVar.zzbci) {
                this.zzbcq = zzmbVar.zzbck;
            }
            zzmb zzmbVar2 = this.zzbcq;
            zzmz zzmzVarZzhz = this.zzazw.zzhz();
            zzmb zzmbVar3 = new zzmb(this.zzbcq.zzaqu, this.zzbcl);
            zzmbVar2.zzbcj = zzmzVarZzhz;
            zzmbVar2.zzbck = zzmbVar3;
            zzmbVar2.zzbci = true;
        }
        return Math.min(i2, this.zzbcl - this.zzbcv);
    }

    private final void zzed(long j2) {
        while (true) {
            zzmb zzmbVar = this.zzbcp;
            if (j2 < zzmbVar.zzaqu) {
                return;
            }
            this.zzazw.zza(zzmbVar.zzbcj);
            this.zzbcp = this.zzbcp.zzht();
        }
    }

    private final void zzhn() {
        this.zzbcm.zzhn();
        zzmb zzmbVarZzht = this.zzbcp;
        if (zzmbVarZzht.zzbci) {
            zzmb zzmbVar = this.zzbcq;
            boolean z = zzmbVar.zzbci;
            zzmz[] zzmzVarArr = new zzmz[(z ? 1 : 0) + (((int) (zzmbVar.zzbch - zzmbVarZzht.zzbch)) / this.zzbcl)];
            for (int i2 = 0; i2 < zzmzVarArr.length; i2++) {
                zzmzVarArr[i2] = zzmbVarZzht.zzbcj;
                zzmbVarZzht = zzmbVarZzht.zzht();
            }
            this.zzazw.zza(zzmzVarArr);
        }
        this.zzbcp = new zzmb(0L, this.zzbcl);
        this.zzbcq = this.zzbcp;
        this.zzbcu = 0L;
        this.zzbcv = this.zzbcl;
        this.zzazw.zzm();
    }

    private final boolean zzhv() {
        return this.zzbco.compareAndSet(0, 1);
    }

    private final void zzhw() {
        if (this.zzbco.compareAndSet(1, 0)) {
            return;
        }
        zzhn();
    }

    public final void disable() {
        if (this.zzbco.getAndSet(2) == 0) {
            zzhn();
        }
    }

    public final int zza(zzgq zzgqVar, zzik zzikVar, boolean z, boolean z2, long j2) {
        int unsignedShort;
        int iZza = this.zzbcm.zza(zzgqVar, zzikVar, z, z2, this.zzbcr, this.zzbcn);
        if (iZza == -5) {
            this.zzbcr = zzgqVar.zzafx;
            return -5;
        }
        if (iZza != -4) {
            if (iZza == -3) {
                return -3;
            }
            throw new IllegalStateException();
        }
        if (!zzikVar.zzfv()) {
            if (zzikVar.zzamb < j2) {
                zzikVar.zzv(Integer.MIN_VALUE);
            }
            if (zzikVar.zzfx()) {
                zzlz zzlzVar = this.zzbcn;
                long j3 = zzlzVar.zzauv;
                this.zzant.reset(1);
                zza(j3, this.zzant.data, 1);
                long j4 = j3 + 1;
                byte b2 = this.zzant.data[0];
                boolean z3 = (b2 & 128) != 0;
                int i2 = b2 & 127;
                zzig zzigVar = zzikVar.zzama;
                if (zzigVar.iv == null) {
                    zzigVar.iv = new byte[16];
                }
                zza(j4, zzikVar.zzama.iv, i2);
                long j5 = j4 + ((long) i2);
                if (z3) {
                    this.zzant.reset(2);
                    zza(j5, this.zzant.data, 2);
                    j5 += 2;
                    unsignedShort = this.zzant.readUnsignedShort();
                } else {
                    unsignedShort = 1;
                }
                int[] iArr = zzikVar.zzama.numBytesOfClearData;
                if (iArr == null || iArr.length < unsignedShort) {
                    iArr = new int[unsignedShort];
                }
                int[] iArr2 = iArr;
                int[] iArr3 = zzikVar.zzama.numBytesOfEncryptedData;
                if (iArr3 == null || iArr3.length < unsignedShort) {
                    iArr3 = new int[unsignedShort];
                }
                int[] iArr4 = iArr3;
                if (z3) {
                    int i3 = unsignedShort * 6;
                    this.zzant.reset(i3);
                    zza(j5, this.zzant.data, i3);
                    j5 += (long) i3;
                    this.zzant.zzbg(0);
                    for (int i4 = 0; i4 < unsignedShort; i4++) {
                        iArr2[i4] = this.zzant.readUnsignedShort();
                        iArr4[i4] = this.zzant.zzir();
                    }
                } else {
                    iArr2[0] = 0;
                    iArr4[0] = zzlzVar.size - ((int) (j5 - zzlzVar.zzauv));
                }
                zzjg zzjgVar = zzlzVar.zzapp;
                zzig zzigVar2 = zzikVar.zzama;
                zzigVar2.set(unsignedShort, iArr2, iArr4, zzjgVar.zzani, zzigVar2.iv, zzjgVar.zzanh);
                long j6 = zzlzVar.zzauv;
                int i5 = (int) (j5 - j6);
                zzlzVar.zzauv = j6 + ((long) i5);
                zzlzVar.size -= i5;
            }
            zzikVar.zzx(this.zzbcn.size);
            zzlz zzlzVar2 = this.zzbcn;
            long j7 = zzlzVar2.zzauv;
            ByteBuffer byteBuffer = zzikVar.zzcq;
            int i6 = zzlzVar2.size;
            zzed(j7);
            while (i6 > 0) {
                int i7 = (int) (j7 - this.zzbcp.zzbch);
                int iMin = Math.min(i6, this.zzbcl - i7);
                zzmz zzmzVar = this.zzbcp.zzbcj;
                byteBuffer.put(zzmzVar.data, zzmzVar.zzay(i7), iMin);
                j7 += (long) iMin;
                i6 -= iMin;
                if (j7 == this.zzbcp.zzaqu) {
                    this.zzazw.zza(zzmzVar);
                    this.zzbcp = this.zzbcp.zzht();
                }
            }
            zzed(this.zzbcn.zzbbu);
        }
        return -4;
    }

    @Override // com.google.android.gms.internal.ads.zzjd
    public final int zza(zziv zzivVar, int i2, boolean z) throws EOFException {
        if (!zzhv()) {
            int iZzaa = zzivVar.zzaa(i2);
            if (iZzaa != -1) {
                return iZzaa;
            }
            throw new EOFException();
        }
        try {
            int iZzat = zzat(i2);
            zzmz zzmzVar = this.zzbcq.zzbcj;
            int i3 = zzivVar.read(zzmzVar.data, zzmzVar.zzay(this.zzbcv), iZzat);
            if (i3 == -1) {
                throw new EOFException();
            }
            this.zzbcv += i3;
            this.zzbcu += (long) i3;
            return i3;
        } finally {
            zzhw();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzjd
    public final void zza(long j2, int i2, int i3, int i4, zzjg zzjgVar) {
        if (!zzhv()) {
            this.zzbcm.zzec(j2);
            return;
        }
        try {
            this.zzbcm.zza(j2, i2, this.zzbcu - ((long) i3), i3, zzjgVar);
        } finally {
            zzhw();
        }
    }

    public final void zza(zzme zzmeVar) {
        this.zzbcw = zzmeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzjd
    public final void zza(zzoc zzocVar, int i2) {
        if (!zzhv()) {
            zzocVar.zzbh(i2);
            return;
        }
        while (i2 > 0) {
            int iZzat = zzat(i2);
            zzmz zzmzVar = this.zzbcq.zzbcj;
            zzocVar.zze(zzmzVar.data, zzmzVar.zzay(this.zzbcv), iZzat);
            this.zzbcv += iZzat;
            this.zzbcu += (long) iZzat;
            i2 -= iZzat;
        }
        zzhw();
    }

    @Override // com.google.android.gms.internal.ads.zzjd
    public final void zze(zzgo zzgoVar) {
        zzgo zzgoVar2 = zzgoVar == null ? null : zzgoVar;
        boolean zZzg = this.zzbcm.zzg(zzgoVar2);
        this.zzbct = zzgoVar;
        this.zzbcs = false;
        zzme zzmeVar = this.zzbcw;
        if (zzmeVar == null || !zZzg) {
            return;
        }
        zzmeVar.zzf(zzgoVar2);
    }

    public final boolean zze(long j2, boolean z) {
        long jZzd = this.zzbcm.zzd(j2, z);
        if (jZzd == -1) {
            return false;
        }
        zzed(jZzd);
        return true;
    }

    public final long zzhh() {
        return this.zzbcm.zzhh();
    }

    public final int zzhp() {
        return this.zzbcm.zzhp();
    }

    public final boolean zzhq() {
        return this.zzbcm.zzhq();
    }

    public final zzgo zzhr() {
        return this.zzbcm.zzhr();
    }

    public final void zzhu() {
        long jZzhs = this.zzbcm.zzhs();
        if (jZzhs != -1) {
            zzed(jZzhs);
        }
    }

    public final void zzj(boolean z) {
        int andSet = this.zzbco.getAndSet(z ? 0 : 2);
        zzhn();
        this.zzbcm.zzho();
        if (andSet == 2) {
            this.zzbcr = null;
        }
    }
}
