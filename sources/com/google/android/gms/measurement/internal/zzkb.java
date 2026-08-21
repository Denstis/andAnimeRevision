package com.google.android.gms.measurement.internal;

/* JADX INFO: loaded from: classes.dex */
abstract class zzkb extends zzkc {
    private boolean zzb;

    zzkb(zzke zzkeVar) {
        super(zzkeVar);
        this.zza.zza(this);
    }

    final boolean zzaj() {
        return this.zzb;
    }

    protected final void zzak() {
        if (!zzaj()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void zzal() {
        if (this.zzb) {
            throw new IllegalStateException("Can't initialize twice");
        }
        zze();
        this.zza.zzp();
        this.zzb = true;
    }

    protected abstract boolean zze();
}
