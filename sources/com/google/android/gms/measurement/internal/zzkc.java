package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes.dex */
class zzkc extends zzgr implements zzgt {
    protected final zzke zza;

    zzkc(zzke zzkeVar) {
        super(zzkeVar.zzs());
        Preconditions.checkNotNull(zzkeVar);
        this.zza = zzkeVar;
    }

    public zzn e_() {
        return this.zza.zzf();
    }

    public zzki zzg() {
        return this.zza.zzh();
    }

    public zzac zzi() {
        return this.zza.zze();
    }

    public zzfu zzj() {
        return this.zza.zzc();
    }
}
