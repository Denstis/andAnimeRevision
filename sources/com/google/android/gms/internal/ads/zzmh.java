package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class zzmh {
    public final int length;
    private int zzafv;
    private final zzgo[] zzbby;

    public zzmh(zzgo... zzgoVarArr) {
        zznr.checkState(zzgoVarArr.length > 0);
        this.zzbby = zzgoVarArr;
        this.length = zzgoVarArr.length;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzmh.class == obj.getClass()) {
            zzmh zzmhVar = (zzmh) obj;
            if (this.length == zzmhVar.length && Arrays.equals(this.zzbby, zzmhVar.zzbby)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.zzafv == 0) {
            this.zzafv = Arrays.hashCode(this.zzbby) + 527;
        }
        return this.zzafv;
    }

    public final zzgo zzau(int i2) {
        return this.zzbby[i2];
    }

    public final int zzh(zzgo zzgoVar) {
        int i2 = 0;
        while (true) {
            zzgo[] zzgoVarArr = this.zzbby;
            if (i2 >= zzgoVarArr.length) {
                return -1;
            }
            if (zzgoVar == zzgoVarArr[i2]) {
                return i2;
            }
            i2++;
        }
    }
}
