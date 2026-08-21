package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: loaded from: classes.dex */
final class zzjw {

    @VisibleForTesting
    private long zza;

    @VisibleForTesting
    private long zzb;
    private final zzaf zzc;
    private final /* synthetic */ zzjo zzd;

    public zzjw(zzjo zzjoVar) {
        this.zzd = zzjoVar;
        this.zzc = new zzjv(this, this.zzd.zzx);
        this.zza = zzjoVar.zzm().elapsedRealtime();
        this.zzb = this.zza;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzc() {
        this.zzd.zzd();
        zza(false, false);
        this.zzd.zze().zza(this.zzd.zzm().elapsedRealtime());
    }

    final void zza() {
        this.zzc.zzc();
        this.zza = 0L;
        this.zzb = this.zza;
    }

    final void zza(long j2) {
        this.zzd.zzd();
        this.zzc.zzc();
        this.zza = j2;
        this.zzb = this.zza;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00d1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean zza(boolean r9, boolean r10) {
        /*
            Method dump skipped, instruction units count: 276
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzjw.zza(boolean, boolean):boolean");
    }

    @VisibleForTesting
    final long zzb() {
        long jElapsedRealtime = this.zzd.zzm().elapsedRealtime();
        long j2 = jElapsedRealtime - this.zzb;
        this.zzb = jElapsedRealtime;
        return j2;
    }

    final void zzb(long j2) {
        this.zzc.zzc();
        if (this.zza != 0) {
            this.zzd.zzs().zzr.zza(this.zzd.zzs().zzr.zza() + (j2 - this.zza));
        }
    }
}
