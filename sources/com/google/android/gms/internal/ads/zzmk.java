package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class zzmk {
    public static final zzmk zzbdc = new zzmk(new zzmh[0]);
    public final int length;
    private int zzafv;
    private final zzmh[] zzbdd;

    public zzmk(zzmh... zzmhVarArr) {
        this.zzbdd = zzmhVarArr;
        this.length = zzmhVarArr.length;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzmk.class == obj.getClass()) {
            zzmk zzmkVar = (zzmk) obj;
            if (this.length == zzmkVar.length && Arrays.equals(this.zzbdd, zzmkVar.zzbdd)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.zzafv == 0) {
            this.zzafv = Arrays.hashCode(this.zzbdd);
        }
        return this.zzafv;
    }

    public final int zza(zzmh zzmhVar) {
        for (int i2 = 0; i2 < this.length; i2++) {
            if (this.zzbdd[i2] == zzmhVar) {
                return i2;
            }
        }
        return -1;
    }

    public final zzmh zzav(int i2) {
        return this.zzbdd[i2];
    }
}
