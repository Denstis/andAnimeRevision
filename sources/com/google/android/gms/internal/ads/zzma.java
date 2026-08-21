package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzma {
    private int length;
    private int[] zzamu;
    private long[] zzamv;
    private long[] zzamx;
    private int[] zzavk;
    private int zzbbv = 1000;
    private int[] zzbbw;
    private zzjg[] zzbbx;
    private zzgo[] zzbby;
    private int zzbbz;
    private int zzbca;
    private int zzbcb;
    private long zzbcc;
    private long zzbcd;
    private boolean zzbce;
    private boolean zzbcf;
    private zzgo zzbcg;

    public zzma() {
        int i2 = this.zzbbv;
        this.zzbbw = new int[i2];
        this.zzamv = new long[i2];
        this.zzamx = new long[i2];
        this.zzavk = new int[i2];
        this.zzamu = new int[i2];
        this.zzbbx = new zzjg[i2];
        this.zzbby = new zzgo[i2];
        this.zzbcc = Long.MIN_VALUE;
        this.zzbcd = Long.MIN_VALUE;
        this.zzbcf = true;
        this.zzbce = true;
    }

    public final synchronized int zza(zzgq zzgqVar, zzik zzikVar, boolean z, boolean z2, zzgo zzgoVar, zzlz zzlzVar) {
        if (!zzhq()) {
            if (z2) {
                zzikVar.setFlags(4);
                return -4;
            }
            if (this.zzbcg == null || (!z && this.zzbcg == zzgoVar)) {
                return -3;
            }
            zzgqVar.zzafx = this.zzbcg;
            return -5;
        }
        if (!z && this.zzbby[this.zzbca] == zzgoVar) {
            if (zzikVar.zzcq == null) {
                return -3;
            }
            zzikVar.zzamb = this.zzamx[this.zzbca];
            zzikVar.setFlags(this.zzavk[this.zzbca]);
            zzlzVar.size = this.zzamu[this.zzbca];
            zzlzVar.zzauv = this.zzamv[this.zzbca];
            zzlzVar.zzapp = this.zzbbx[this.zzbca];
            this.zzbcc = Math.max(this.zzbcc, zzikVar.zzamb);
            this.length--;
            this.zzbca++;
            this.zzbbz++;
            if (this.zzbca == this.zzbbv) {
                this.zzbca = 0;
            }
            zzlzVar.zzbbu = this.length > 0 ? this.zzamv[this.zzbca] : zzlzVar.zzauv + ((long) zzlzVar.size);
            return -4;
        }
        zzgqVar.zzafx = this.zzbby[this.zzbca];
        return -5;
    }

    public final synchronized void zza(long j2, int i2, long j3, int i3, zzjg zzjgVar) {
        if (this.zzbce) {
            if ((i2 & 1) == 0) {
                return;
            } else {
                this.zzbce = false;
            }
        }
        zznr.checkState(!this.zzbcf);
        zzec(j2);
        this.zzamx[this.zzbcb] = j2;
        this.zzamv[this.zzbcb] = j3;
        this.zzamu[this.zzbcb] = i3;
        this.zzavk[this.zzbcb] = i2;
        this.zzbbx[this.zzbcb] = zzjgVar;
        this.zzbby[this.zzbcb] = this.zzbcg;
        this.zzbbw[this.zzbcb] = 0;
        this.length++;
        if (this.length != this.zzbbv) {
            this.zzbcb++;
            if (this.zzbcb == this.zzbbv) {
                this.zzbcb = 0;
            }
            return;
        }
        int i4 = this.zzbbv + 1000;
        int[] iArr = new int[i4];
        long[] jArr = new long[i4];
        long[] jArr2 = new long[i4];
        int[] iArr2 = new int[i4];
        int[] iArr3 = new int[i4];
        zzjg[] zzjgVarArr = new zzjg[i4];
        zzgo[] zzgoVarArr = new zzgo[i4];
        int i5 = this.zzbbv - this.zzbca;
        System.arraycopy(this.zzamv, this.zzbca, jArr, 0, i5);
        System.arraycopy(this.zzamx, this.zzbca, jArr2, 0, i5);
        System.arraycopy(this.zzavk, this.zzbca, iArr2, 0, i5);
        System.arraycopy(this.zzamu, this.zzbca, iArr3, 0, i5);
        System.arraycopy(this.zzbbx, this.zzbca, zzjgVarArr, 0, i5);
        System.arraycopy(this.zzbby, this.zzbca, zzgoVarArr, 0, i5);
        System.arraycopy(this.zzbbw, this.zzbca, iArr, 0, i5);
        int i6 = this.zzbca;
        System.arraycopy(this.zzamv, 0, jArr, i5, i6);
        System.arraycopy(this.zzamx, 0, jArr2, i5, i6);
        System.arraycopy(this.zzavk, 0, iArr2, i5, i6);
        System.arraycopy(this.zzamu, 0, iArr3, i5, i6);
        System.arraycopy(this.zzbbx, 0, zzjgVarArr, i5, i6);
        System.arraycopy(this.zzbby, 0, zzgoVarArr, i5, i6);
        System.arraycopy(this.zzbbw, 0, iArr, i5, i6);
        this.zzamv = jArr;
        this.zzamx = jArr2;
        this.zzavk = iArr2;
        this.zzamu = iArr3;
        this.zzbbx = zzjgVarArr;
        this.zzbby = zzgoVarArr;
        this.zzbbw = iArr;
        this.zzbca = 0;
        this.zzbcb = this.zzbbv;
        this.length = this.zzbbv;
        this.zzbbv = i4;
    }

    public final synchronized long zzd(long j2, boolean z) {
        if (zzhq() && j2 >= this.zzamx[this.zzbca]) {
            if (j2 > this.zzbcd && !z) {
                return -1L;
            }
            int i2 = this.zzbca;
            int i3 = -1;
            int i4 = 0;
            while (i2 != this.zzbcb && this.zzamx[i2] <= j2) {
                if ((this.zzavk[i2] & 1) != 0) {
                    i3 = i4;
                }
                i2 = (i2 + 1) % this.zzbbv;
                i4++;
            }
            if (i3 == -1) {
                return -1L;
            }
            this.zzbca = (this.zzbca + i3) % this.zzbbv;
            this.zzbbz += i3;
            this.length -= i3;
            return this.zzamv[this.zzbca];
        }
        return -1L;
    }

    public final synchronized void zzec(long j2) {
        this.zzbcd = Math.max(this.zzbcd, j2);
    }

    public final synchronized boolean zzg(zzgo zzgoVar) {
        if (zzgoVar == null) {
            this.zzbcf = true;
            return false;
        }
        this.zzbcf = false;
        if (zzof.zza(zzgoVar, this.zzbcg)) {
            return false;
        }
        this.zzbcg = zzgoVar;
        return true;
    }

    public final synchronized long zzhh() {
        return Math.max(this.zzbcc, this.zzbcd);
    }

    public final void zzhn() {
        this.zzbbz = 0;
        this.zzbca = 0;
        this.zzbcb = 0;
        this.length = 0;
        this.zzbce = true;
    }

    public final void zzho() {
        this.zzbcc = Long.MIN_VALUE;
        this.zzbcd = Long.MIN_VALUE;
    }

    public final int zzhp() {
        return this.zzbbz + this.length;
    }

    public final synchronized boolean zzhq() {
        return this.length != 0;
    }

    public final synchronized zzgo zzhr() {
        if (this.zzbcf) {
            return null;
        }
        return this.zzbcg;
    }

    public final synchronized long zzhs() {
        if (!zzhq()) {
            return -1L;
        }
        int i2 = ((this.zzbca + this.length) - 1) % this.zzbbv;
        this.zzbca = (this.zzbca + this.length) % this.zzbbv;
        this.zzbbz += this.length;
        this.length = 0;
        return this.zzamv[i2] + ((long) this.zzamu[i2]);
    }
}
