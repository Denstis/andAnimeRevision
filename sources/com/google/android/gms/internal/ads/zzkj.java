package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzkj {
    public final int[] zzamu;
    public final long[] zzamv;
    public final int zzavc;
    public final int zzavi;
    public final int[] zzavk;
    public final long[] zzaxi;

    public zzkj(long[] jArr, int[] iArr, int i2, long[] jArr2, int[] iArr2) {
        zznr.checkArgument(iArr.length == jArr2.length);
        zznr.checkArgument(jArr.length == jArr2.length);
        zznr.checkArgument(iArr2.length == jArr2.length);
        this.zzamv = jArr;
        this.zzamu = iArr;
        this.zzavi = i2;
        this.zzaxi = jArr2;
        this.zzavk = iArr2;
        this.zzavc = jArr.length;
    }

    public final int zzdw(long j2) {
        for (int iZza = zzof.zza(this.zzaxi, j2, true, false); iZza >= 0; iZza--) {
            if ((this.zzavk[iZza] & 1) != 0) {
                return iZza;
            }
        }
        return -1;
    }

    public final int zzdx(long j2) {
        for (int iZzb = zzof.zzb(this.zzaxi, j2, true, false); iZzb < this.zzaxi.length; iZzb++) {
            if ((this.zzavk[iZzb] & 1) != 0) {
                return iZzb;
            }
        }
        return -1;
    }
}
