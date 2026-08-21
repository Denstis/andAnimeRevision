package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzdpu {
    private final byte[] buffer;
    private final zzdqf zzhgh;

    private zzdpu(int i2) {
        this.buffer = new byte[i2];
        this.zzhgh = zzdqf.zzaa(this.buffer);
    }

    /* synthetic */ zzdpu(int i2, zzdpp zzdppVar) {
        this(i2);
    }

    public final zzdpm zzaxs() {
        this.zzhgh.zzayv();
        return new zzdpw(this.buffer);
    }

    public final zzdqf zzaxt() {
        return this.zzhgh;
    }
}
