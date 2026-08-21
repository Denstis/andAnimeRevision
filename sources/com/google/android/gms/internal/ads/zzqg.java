package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: loaded from: classes.dex */
public final class zzqg {
    private final float bottom;
    private final float left;
    private final float right;
    private final float top;
    private final int zzbqe;

    @VisibleForTesting
    public zzqg(float f2, float f3, float f4, float f5, int i2) {
        this.left = f2;
        this.top = f3;
        this.right = f2 + f4;
        this.bottom = f3 + f5;
        this.zzbqe = i2;
    }

    final float zzma() {
        return this.left;
    }

    final float zzmb() {
        return this.top;
    }

    final float zzmc() {
        return this.right;
    }

    final float zzmd() {
        return this.bottom;
    }

    final int zzme() {
        return this.zzbqe;
    }
}
