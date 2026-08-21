package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzawo {
    private long zzdva;
    private long zzdvb = Long.MIN_VALUE;
    private final Object lock = new Object();

    public zzawo(long j2) {
        this.zzdva = j2;
    }

    public final boolean tryAcquire() {
        synchronized (this.lock) {
            long jElapsedRealtime = com.google.android.gms.ads.internal.zzq.zzkq().elapsedRealtime();
            if (this.zzdvb + this.zzdva > jElapsedRealtime) {
                return false;
            }
            this.zzdvb = jElapsedRealtime;
            return true;
        }
    }

    public final void zzev(long j2) {
        synchronized (this.lock) {
            this.zzdva = j2;
        }
    }
}
