package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzcfp {
    private int responseCode = 0;
    private long zzfwf = 0;
    private long zzfwg = 0;
    private long zzfwh = 0;
    private final Object zzfwi = new Object();
    private final Object zzfwj = new Object();
    private final Object zzfwk = new Object();
    private final Object zzfwl = new Object();

    public final int getResponseCode() {
        int i2;
        synchronized (this.zzfwi) {
            i2 = this.responseCode;
        }
        return i2;
    }

    public final long zzako() {
        long j2;
        synchronized (this.zzfwj) {
            j2 = this.zzfwf;
        }
        return j2;
    }

    public final synchronized long zzakp() {
        long j2;
        synchronized (this.zzfwk) {
            j2 = this.zzfwg;
        }
        return j2;
    }

    public final synchronized long zzakq() {
        long j2;
        synchronized (this.zzfwl) {
            j2 = this.zzfwh;
        }
        return j2;
    }

    public final void zzdh(int i2) {
        synchronized (this.zzfwi) {
            this.responseCode = i2;
        }
    }

    public final void zzek(long j2) {
        synchronized (this.zzfwj) {
            this.zzfwf = j2;
        }
    }

    public final synchronized void zzel(long j2) {
        synchronized (this.zzfwl) {
            this.zzfwh = j2;
        }
    }

    public final synchronized void zzey(long j2) {
        synchronized (this.zzfwk) {
            this.zzfwg = j2;
        }
    }
}
