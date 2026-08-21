package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class zzmv {
    public final int length;
    private int zzafv;
    private final zzmt[] zzbec;

    public zzmv(zzmt... zzmtVarArr) {
        this.zzbec = zzmtVarArr;
        this.length = zzmtVarArr.length;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzmv.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.zzbec, ((zzmv) obj).zzbec);
    }

    public final int hashCode() {
        if (this.zzafv == 0) {
            this.zzafv = Arrays.hashCode(this.zzbec) + 527;
        }
        return this.zzafv;
    }

    public final zzmt zzax(int i2) {
        return this.zzbec[i2];
    }

    public final zzmt[] zzhy() {
        return (zzmt[]) this.zzbec.clone();
    }
}
