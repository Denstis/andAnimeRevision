package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import com.google.android.gms.internal.measurement.zzkt;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
final class zzhk implements Runnable {
    private final /* synthetic */ long zza;
    private final /* synthetic */ zzhb zzb;

    zzhk(zzhb zzhbVar, long j2) {
        this.zzb = zzhbVar;
        this.zza = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzhb zzhbVar = this.zzb;
        long j2 = this.zza;
        zzhbVar.zzd();
        zzhbVar.zzb();
        zzhbVar.zzw();
        zzhbVar.zzr().zzw().zza("Resetting analytics data (FE)");
        zzjo zzjoVarZzk = zzhbVar.zzk();
        zzjoVarZzk.zzd();
        zzjoVarZzk.zzb.zza();
        boolean zZzab = zzhbVar.zzx.zzab();
        zzff zzffVarZzs = zzhbVar.zzs();
        zzffVarZzs.zzh.zza(j2);
        if (!TextUtils.isEmpty(zzffVarZzs.zzs().zzw.zza())) {
            zzffVarZzs.zzw.zza(null);
        }
        if (zzkt.zzb() && zzffVarZzs.zzt().zza(zzap.zzcm)) {
            zzffVarZzs.zzq.zza(0L);
        }
        if (!zzffVarZzs.zzt().zzg()) {
            zzffVarZzs.zzc(!zZzab);
        }
        zzhbVar.zzh().zzad();
        if (zzkt.zzb() && zzhbVar.zzt().zza(zzap.zzcm)) {
            zzhbVar.zzk().zza.zza();
        }
        zzhbVar.zzb = !zZzab;
        this.zzb.zzh().zza(new AtomicReference<>());
    }
}
