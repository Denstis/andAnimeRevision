package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzlf implements zzmg {
    private final zzmg[] zzazr;

    public zzlf(zzmg[] zzmgVarArr) {
        this.zzazr = zzmgVarArr;
    }

    @Override // com.google.android.gms.internal.ads.zzmg
    public final boolean zzdy(long j2) {
        boolean zZzdy;
        boolean z = false;
        do {
            long jZzgz = zzgz();
            if (jZzgz == Long.MIN_VALUE) {
                break;
            }
            zZzdy = false;
            for (zzmg zzmgVar : this.zzazr) {
                if (zzmgVar.zzgz() == jZzgz) {
                    zZzdy |= zzmgVar.zzdy(j2);
                }
            }
            z |= zZzdy;
        } while (zZzdy);
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzmg
    public final long zzgz() {
        long jMin = Long.MAX_VALUE;
        for (zzmg zzmgVar : this.zzazr) {
            long jZzgz = zzmgVar.zzgz();
            if (jZzgz != Long.MIN_VALUE) {
                jMin = Math.min(jMin, jZzgz);
            }
        }
        if (jMin == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return jMin;
    }
}
