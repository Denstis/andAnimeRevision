package com.google.android.gms.internal.ads;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes.dex */
public final class zzod implements zznv {
    private boolean started;
    private zzgu zzadh = zzgu.zzafz;
    private long zzbgr;
    private long zzbgs;

    public final void start() {
        if (this.started) {
            return;
        }
        this.zzbgs = SystemClock.elapsedRealtime();
        this.started = true;
    }

    public final void stop() {
        if (this.started) {
            zzef(zzfj());
            this.started = false;
        }
    }

    public final void zza(zznv zznvVar) {
        zzef(zznvVar.zzfj());
        this.zzadh = zznvVar.zzfc();
    }

    @Override // com.google.android.gms.internal.ads.zznv
    public final zzgu zzb(zzgu zzguVar) {
        if (this.started) {
            zzef(zzfj());
        }
        this.zzadh = zzguVar;
        return zzguVar;
    }

    public final void zzef(long j2) {
        this.zzbgr = j2;
        if (this.started) {
            this.zzbgs = SystemClock.elapsedRealtime();
        }
    }

    @Override // com.google.android.gms.internal.ads.zznv
    public final zzgu zzfc() {
        return this.zzadh;
    }

    @Override // com.google.android.gms.internal.ads.zznv
    public final long zzfj() {
        long j2 = this.zzbgr;
        if (!this.started) {
            return j2;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.zzbgs;
        zzgu zzguVar = this.zzadh;
        return j2 + (zzguVar.zzaga == 1.0f ? zzga.zzdh(jElapsedRealtime) : zzguVar.zzdo(jElapsedRealtime));
    }
}
