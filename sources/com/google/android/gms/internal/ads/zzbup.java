package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class zzbup {
    private zzabh zzcwp;

    public zzbup(zzbuh zzbuhVar) {
        this.zzcwp = zzbuhVar;
    }

    public final synchronized void zza(zzabh zzabhVar) {
        this.zzcwp = zzabhVar;
    }

    public final synchronized zzabh zzqx() {
        return this.zzcwp;
    }
}
