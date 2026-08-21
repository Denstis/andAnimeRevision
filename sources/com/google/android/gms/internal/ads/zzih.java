package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public class zzih {
    private int flags;

    public void clear() {
        this.flags = 0;
    }

    public final void setFlags(int i2) {
        this.flags = i2;
    }

    public final boolean zzfu() {
        return zzw(Integer.MIN_VALUE);
    }

    public final boolean zzfv() {
        return zzw(4);
    }

    public final boolean zzfw() {
        return zzw(1);
    }

    public final void zzv(int i2) {
        this.flags |= Integer.MIN_VALUE;
    }

    protected final boolean zzw(int i2) {
        return (this.flags & i2) == i2;
    }
}
