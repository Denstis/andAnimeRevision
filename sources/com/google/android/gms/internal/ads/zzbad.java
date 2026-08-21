package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: loaded from: classes.dex */
public final class zzbad implements zzgs {
    private int zzbfh;
    private final zzni zzecc;
    private long zzecd;
    private long zzece;
    private long zzecf;
    private long zzecg;
    private boolean zzech;

    zzbad() {
        this(15000, 30000, 2500L, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
    }

    private zzbad(int i2, int i3, long j2, long j3) {
        this.zzecc = new zzni(true, C.DEFAULT_BUFFER_SEGMENT_SIZE);
        this.zzecd = 15000000L;
        this.zzece = 30000000L;
        this.zzecf = 2500000L;
        this.zzecg = 5000000L;
    }

    @VisibleForTesting
    private final void zzj(boolean z) {
        this.zzbfh = 0;
        this.zzech = false;
        if (z) {
            this.zzecc.reset();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgs
    public final void onStopped() {
        zzj(true);
    }

    @Override // com.google.android.gms.internal.ads.zzgs
    public final void zza(zzgx[] zzgxVarArr, zzmk zzmkVar, zzmv zzmvVar) {
        this.zzbfh = 0;
        for (int i2 = 0; i2 < zzgxVarArr.length; i2++) {
            if (zzmvVar.zzax(i2) != null) {
                this.zzbfh += zzof.zzbk(zzgxVarArr[i2].getTrackType());
            }
        }
        this.zzecc.zzba(this.zzbfh);
    }

    @Override // com.google.android.gms.internal.ads.zzgs
    public final synchronized boolean zzc(long j2, boolean z) {
        long j3;
        j3 = z ? this.zzecg : this.zzecf;
        return j3 <= 0 || j2 >= j3;
    }

    public final synchronized void zzcu(int i2) {
        this.zzecf = ((long) i2) * 1000;
    }

    public final synchronized void zzcv(int i2) {
        this.zzecg = ((long) i2) * 1000;
    }

    public final synchronized void zzcz(int i2) {
        this.zzecd = ((long) i2) * 1000;
    }

    public final synchronized void zzda(int i2) {
        this.zzece = ((long) i2) * 1000;
    }

    @Override // com.google.android.gms.internal.ads.zzgs
    public final synchronized boolean zzdn(long j2) {
        boolean z = false;
        char c2 = j2 > this.zzece ? (char) 0 : j2 < this.zzecd ? (char) 2 : (char) 1;
        boolean z2 = this.zzecc.zzid() >= this.zzbfh;
        if (c2 == 2 || (c2 == 1 && this.zzech && !z2)) {
            z = true;
        }
        this.zzech = z;
        return this.zzech;
    }

    @Override // com.google.android.gms.internal.ads.zzgs
    public final void zzel() {
        zzj(false);
    }

    @Override // com.google.android.gms.internal.ads.zzgs
    public final void zzem() {
        zzj(true);
    }

    @Override // com.google.android.gms.internal.ads.zzgs
    public final zznc zzen() {
        return this.zzecc;
    }
}
