package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zziu implements zzjb {
    private final int length;
    private final long zzagh;
    private final int[] zzamu;
    private final long[] zzamv;
    private final long[] zzamw;
    private final long[] zzamx;

    public zziu(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.zzamu = iArr;
        this.zzamv = jArr;
        this.zzamw = jArr2;
        this.zzamx = jArr3;
        this.length = iArr.length;
        int i2 = this.length;
        if (i2 > 0) {
            this.zzagh = jArr2[i2 - 1] + jArr3[i2 - 1];
        } else {
            this.zzagh = 0L;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzjb
    public final long getDurationUs() {
        return this.zzagh;
    }

    @Override // com.google.android.gms.internal.ads.zzjb
    public final long zzdt(long j2) {
        return this.zzamv[zzof.zza(this.zzamx, j2, true, true)];
    }

    @Override // com.google.android.gms.internal.ads.zzjb
    public final boolean zzgc() {
        return true;
    }
}
