package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes.dex */
abstract class zze extends zzf {
    private boolean zza;

    zze(zzga zzgaVar) {
        super(zzgaVar);
        this.zzx.zza(this);
    }

    protected void zzaa() {
    }

    final boolean zzv() {
        return this.zza;
    }

    protected final void zzw() {
        if (!zzv()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void zzx() {
        if (this.zza) {
            throw new IllegalStateException("Can't initialize twice");
        }
        if (zzz()) {
            return;
        }
        this.zzx.zzaf();
        this.zza = true;
    }

    public final void zzy() {
        if (this.zza) {
            throw new IllegalStateException("Can't initialize twice");
        }
        zzaa();
        this.zzx.zzaf();
        this.zza = true;
    }

    protected abstract boolean zzz();
}
