package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzgb implements zzgw, zzgx {
    private int index;
    private int state;
    private final int zzace;
    private zzgz zzacf;
    private zzmd zzacg;
    private long zzach;
    private boolean zzaci = true;
    private boolean zzacj;

    public zzgb(int i2) {
        this.zzace = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzgx
    public final void disable() {
        zznr.checkState(this.state == 1);
        this.state = 0;
        this.zzacg = null;
        this.zzacj = false;
        zzdr();
    }

    protected final int getIndex() {
        return this.index;
    }

    @Override // com.google.android.gms.internal.ads.zzgx
    public final int getState() {
        return this.state;
    }

    @Override // com.google.android.gms.internal.ads.zzgw, com.google.android.gms.internal.ads.zzgx
    public final int getTrackType() {
        return this.zzace;
    }

    protected void onStarted() {
    }

    protected void onStopped() {
    }

    @Override // com.google.android.gms.internal.ads.zzgx
    public final void setIndex(int i2) {
        this.index = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzgx
    public final void start() {
        zznr.checkState(this.state == 1);
        this.state = 2;
        onStarted();
    }

    @Override // com.google.android.gms.internal.ads.zzgx
    public final void stop() {
        zznr.checkState(this.state == 2);
        this.state = 1;
        onStopped();
    }

    protected final int zza(zzgq zzgqVar, zzik zzikVar, boolean z) {
        int iZzb = this.zzacg.zzb(zzgqVar, zzikVar, z);
        if (iZzb == -4) {
            if (zzikVar.zzfv()) {
                this.zzaci = true;
                return this.zzacj ? -4 : -3;
            }
            zzikVar.zzamb += this.zzach;
        } else if (iZzb == -5) {
            zzgo zzgoVar = zzgqVar.zzafx;
            long j2 = zzgoVar.zzafr;
            if (j2 != Long.MAX_VALUE) {
                zzgqVar.zzafx = zzgoVar.zzdm(j2 + this.zzach);
            }
        }
        return iZzb;
    }

    @Override // com.google.android.gms.internal.ads.zzge
    public void zza(int i2, Object obj) {
    }

    protected void zza(long j2, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzgx
    public final void zza(zzgz zzgzVar, zzgo[] zzgoVarArr, zzmd zzmdVar, long j2, boolean z, long j3) {
        zznr.checkState(this.state == 0);
        this.zzacf = zzgzVar;
        this.state = 1;
        zzd(z);
        zza(zzgoVarArr, zzmdVar, j3);
        zza(j2, z);
    }

    protected void zza(zzgo[] zzgoVarArr, long j2) {
    }

    @Override // com.google.android.gms.internal.ads.zzgx
    public final void zza(zzgo[] zzgoVarArr, zzmd zzmdVar, long j2) {
        zznr.checkState(!this.zzacj);
        this.zzacg = zzmdVar;
        this.zzaci = false;
        this.zzach = j2;
        zza(zzgoVarArr, j2);
    }

    protected void zzd(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzgx
    public final void zzdi(long j2) {
        this.zzacj = false;
        this.zzaci = false;
        zza(j2, false);
    }

    @Override // com.google.android.gms.internal.ads.zzgx
    public final zzgw zzdj() {
        return this;
    }

    protected final void zzdj(long j2) {
        this.zzacg.zzeb(j2 - this.zzach);
    }

    @Override // com.google.android.gms.internal.ads.zzgx
    public zznv zzdk() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzgx
    public final zzmd zzdl() {
        return this.zzacg;
    }

    @Override // com.google.android.gms.internal.ads.zzgx
    public final boolean zzdm() {
        return this.zzaci;
    }

    @Override // com.google.android.gms.internal.ads.zzgx
    public final void zzdn() {
        this.zzacj = true;
    }

    @Override // com.google.android.gms.internal.ads.zzgx
    public final boolean zzdo() {
        return this.zzacj;
    }

    @Override // com.google.android.gms.internal.ads.zzgx
    public final void zzdp() {
        this.zzacg.zzhe();
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public int zzdq() {
        return 0;
    }

    protected void zzdr() {
    }

    protected final zzgz zzds() {
        return this.zzacf;
    }

    protected final boolean zzdt() {
        return this.zzaci ? this.zzacj : this.zzacg.isReady();
    }
}
