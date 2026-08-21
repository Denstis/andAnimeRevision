package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class zzmm implements zzmt {
    private final int length;
    private int zzafv;
    private final zzgo[] zzbby;
    private final zzmh zzbde;
    private final int[] zzbdf;
    private final long[] zzbdg;

    public zzmm(zzmh zzmhVar, int... iArr) {
        int i2 = 0;
        zznr.checkState(iArr.length > 0);
        this.zzbde = (zzmh) zznr.checkNotNull(zzmhVar);
        this.length = iArr.length;
        this.zzbby = new zzgo[this.length];
        for (int i3 = 0; i3 < iArr.length; i3++) {
            this.zzbby[i3] = zzmhVar.zzau(iArr[i3]);
        }
        Arrays.sort(this.zzbby, new zzmo());
        this.zzbdf = new int[this.length];
        while (true) {
            int i4 = this.length;
            if (i2 >= i4) {
                this.zzbdg = new long[i4];
                return;
            } else {
                this.zzbdf[i2] = zzmhVar.zzh(this.zzbby[i2]);
                i2++;
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzmm zzmmVar = (zzmm) obj;
            if (this.zzbde == zzmmVar.zzbde && Arrays.equals(this.zzbdf, zzmmVar.zzbdf)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        if (this.zzafv == 0) {
            this.zzafv = (System.identityHashCode(this.zzbde) * 31) + Arrays.hashCode(this.zzbdf);
        }
        return this.zzafv;
    }

    @Override // com.google.android.gms.internal.ads.zzmt
    public final int length() {
        return this.zzbdf.length;
    }

    @Override // com.google.android.gms.internal.ads.zzmt
    public final zzgo zzau(int i2) {
        return this.zzbby[i2];
    }

    @Override // com.google.android.gms.internal.ads.zzmt
    public final int zzaw(int i2) {
        return this.zzbdf[0];
    }

    @Override // com.google.android.gms.internal.ads.zzmt
    public final zzmh zzhx() {
        return this.zzbde;
    }
}
