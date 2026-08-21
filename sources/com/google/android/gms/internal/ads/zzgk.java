package com.google.android.gms.internal.ads;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
final class zzgk {
    public final int index;
    private final zzgx[] zzacp;
    private final zzmy zzacq;
    public final zzls zzadm;
    public final Object zzadn;
    public final zzmd[] zzado;
    private final boolean[] zzadp;
    public final long zzadq;
    public int zzadr;
    public long zzads;
    public boolean zzadt;
    public boolean zzadu;
    public boolean zzadv;
    public zzgk zzadw;
    public zzna zzadx;
    private final zzgw[] zzady;
    private final zzgs zzadz;
    private final zzlu zzaea;
    private zzna zzaeb;

    public zzgk(zzgx[] zzgxVarArr, zzgw[] zzgwVarArr, long j2, zzmy zzmyVar, zzgs zzgsVar, zzlu zzluVar, Object obj, int i2, int i3, boolean z, long j3) {
        this.zzacp = zzgxVarArr;
        this.zzady = zzgwVarArr;
        this.zzadq = j2;
        this.zzacq = zzmyVar;
        this.zzadz = zzgsVar;
        this.zzaea = zzluVar;
        this.zzadn = zznr.checkNotNull(obj);
        this.index = i2;
        this.zzadr = i3;
        this.zzadt = z;
        this.zzads = j3;
        this.zzado = new zzmd[zzgxVarArr.length];
        this.zzadp = new boolean[zzgxVarArr.length];
        this.zzadm = zzluVar.zza(i3, zzgsVar.zzen());
    }

    public final void release() {
        try {
            this.zzaea.zzb(this.zzadm);
        } catch (RuntimeException e2) {
            Log.e("ExoPlayerImplInternal", "Period release failed.", e2);
        }
    }

    public final long zza(long j2, boolean z, boolean[] zArr) {
        zzmv zzmvVar = this.zzadx.zzbef;
        int i2 = 0;
        while (true) {
            boolean z2 = true;
            if (i2 >= zzmvVar.length) {
                break;
            }
            boolean[] zArr2 = this.zzadp;
            if (z || !this.zzadx.zza(this.zzaeb, i2)) {
                z2 = false;
            }
            zArr2[i2] = z2;
            i2++;
        }
        long jZza = this.zzadm.zza(zzmvVar.zzhy(), this.zzadp, this.zzado, zArr, j2);
        this.zzaeb = this.zzadx;
        this.zzadv = false;
        int i3 = 0;
        while (true) {
            zzmd[] zzmdVarArr = this.zzado;
            if (i3 >= zzmdVarArr.length) {
                this.zzadz.zza(this.zzacp, this.zzadx.zzbee, zzmvVar);
                return jZza;
            }
            if (zzmdVarArr[i3] != null) {
                zznr.checkState(zzmvVar.zzax(i3) != null);
                this.zzadv = true;
            } else {
                zznr.checkState(zzmvVar.zzax(i3) == null);
            }
            i3++;
        }
    }

    public final long zzb(long j2, boolean z) {
        return zza(j2, false, new boolean[this.zzacp.length]);
    }

    public final void zzc(int i2, boolean z) {
        this.zzadr = i2;
        this.zzadt = z;
    }

    public final long zzdz() {
        return this.zzadq - this.zzads;
    }

    public final boolean zzea() {
        if (this.zzadu) {
            return !this.zzadv || this.zzadm.zzhd() == Long.MIN_VALUE;
        }
        return false;
    }

    public final boolean zzeb() {
        boolean z;
        zzna zznaVarZza = this.zzacq.zza(this.zzady, this.zzadm.zzhb());
        zzna zznaVar = this.zzaeb;
        if (zznaVar == null) {
            z = false;
            break;
        }
        for (int i2 = 0; i2 < zznaVarZza.zzbef.length; i2++) {
            if (!zznaVarZza.zza(zznaVar, i2)) {
                z = false;
                break;
            }
        }
        z = true;
        if (z) {
            return false;
        }
        this.zzadx = zznaVarZza;
        return true;
    }
}
