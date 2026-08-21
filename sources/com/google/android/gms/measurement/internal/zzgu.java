package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes.dex */
abstract class zzgu extends zzgr {
    private boolean zza;

    zzgu(zzga zzgaVar) {
        super(zzgaVar);
        this.zzx.zza(this);
    }

    protected void f_() {
    }

    protected final void zzaa() {
        if (!zzz()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void zzab() {
        if (this.zza) {
            throw new IllegalStateException("Can't initialize twice");
        }
        if (zze()) {
            return;
        }
        this.zzx.zzaf();
        this.zza = true;
    }

    public final void zzac() {
        if (this.zza) {
            throw new IllegalStateException("Can't initialize twice");
        }
        f_();
        this.zzx.zzaf();
        this.zza = true;
    }

    protected abstract boolean zze();

    final boolean zzz() {
        return this.zza;
    }
}
