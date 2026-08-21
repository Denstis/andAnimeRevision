package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* JADX INFO: loaded from: classes.dex */
public final class zzcvp {
    private final Clock zzbmp;
    private final Object lock = new Object();
    private volatile int zzgix = zzcvs.zzgjq;
    private volatile long zzdri = 0;

    public zzcvp(Clock clock) {
        this.zzbmp = clock;
    }

    private final void zzamw() {
        long jCurrentTimeMillis = this.zzbmp.currentTimeMillis();
        synchronized (this.lock) {
            if (this.zzgix == zzcvs.zzgjs) {
                if (this.zzdri + ((Long) zzuv.zzon().zzd(zzza.zzcsl)).longValue() <= jCurrentTimeMillis) {
                    this.zzgix = zzcvs.zzgjq;
                }
            }
        }
    }

    private final void zzq(int i2, int i3) {
        zzamw();
        long jCurrentTimeMillis = this.zzbmp.currentTimeMillis();
        synchronized (this.lock) {
            if (this.zzgix != i2) {
                return;
            }
            this.zzgix = i3;
            if (this.zzgix == zzcvs.zzgjs) {
                this.zzdri = jCurrentTimeMillis;
            }
        }
    }

    public final boolean zzamx() {
        boolean z;
        synchronized (this.lock) {
            zzamw();
            z = this.zzgix == zzcvs.zzgjr;
        }
        return z;
    }

    public final boolean zzamy() {
        boolean z;
        synchronized (this.lock) {
            zzamw();
            z = this.zzgix == zzcvs.zzgjs;
        }
        return z;
    }

    public final void zzbd(boolean z) {
        int i2;
        int i3;
        if (z) {
            i2 = zzcvs.zzgjq;
            i3 = zzcvs.zzgjr;
        } else {
            i2 = zzcvs.zzgjr;
            i3 = zzcvs.zzgjq;
        }
        zzq(i2, i3);
    }

    public final void zzud() {
        zzq(zzcvs.zzgjr, zzcvs.zzgjs);
    }
}
