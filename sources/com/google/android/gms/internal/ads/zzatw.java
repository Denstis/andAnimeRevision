package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzatw {
    private final Object lock;
    private volatile int zzdrh;
    private volatile long zzdri;

    private zzatw() {
        this.lock = new Object();
        this.zzdrh = zzatv.zzdrd;
        this.zzdri = 0L;
    }

    /* synthetic */ zzatw(zzatt zzattVar) {
        this();
    }

    public final void zzud() {
        long jCurrentTimeMillis = com.google.android.gms.ads.internal.zzq.zzkq().currentTimeMillis();
        synchronized (this.lock) {
            if (this.zzdrh == zzatv.zzdrf) {
                if (this.zzdri + ((Long) zzuv.zzon().zzd(zzza.zzcsl)).longValue() <= jCurrentTimeMillis) {
                    this.zzdrh = zzatv.zzdrd;
                }
            }
        }
        long jCurrentTimeMillis2 = com.google.android.gms.ads.internal.zzq.zzkq().currentTimeMillis();
        synchronized (this.lock) {
            if (this.zzdrh != 2) {
                return;
            }
            this.zzdrh = 3;
            if (this.zzdrh == zzatv.zzdrf) {
                this.zzdri = jCurrentTimeMillis2;
            }
        }
    }
}
