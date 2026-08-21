package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.PersistableBundle;
import com.google.android.gms.common.util.Clock;

/* JADX INFO: loaded from: classes.dex */
public final class zzka extends zzkb {
    private final AlarmManager zzb;
    private final zzaf zzc;
    private Integer zzd;

    protected zzka(zzke zzkeVar) {
        super(zzkeVar);
        this.zzb = (AlarmManager) zzn().getSystemService("alarm");
        this.zzc = new zzjz(this, zzkeVar.zzs(), zzkeVar);
    }

    @TargetApi(24)
    private final void zzk() {
        JobScheduler jobScheduler = (JobScheduler) zzn().getSystemService("jobscheduler");
        int iZzv = zzv();
        zzr().zzx().zza("Cancelling job. JobID", Integer.valueOf(iZzv));
        jobScheduler.cancel(iZzv);
    }

    private final int zzv() {
        if (this.zzd == null) {
            String strValueOf = String.valueOf(zzn().getPackageName());
            this.zzd = Integer.valueOf((strValueOf.length() != 0 ? "measurement".concat(strValueOf) : new String("measurement")).hashCode());
        }
        return this.zzd.intValue();
    }

    private final PendingIntent zzw() {
        Context contextZzn = zzn();
        return PendingIntent.getBroadcast(contextZzn, 0, new Intent().setClassName(contextZzn, "com.google.android.gms.measurement.AppMeasurementReceiver").setAction("com.google.android.gms.measurement.UPLOAD"), 0);
    }

    @Override // com.google.android.gms.measurement.internal.zzkc
    public final /* bridge */ /* synthetic */ zzn e_() {
        return super.e_();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zza() {
        super.zza();
    }

    public final void zza(long j2) {
        zzak();
        zzu();
        Context contextZzn = zzn();
        if (!zzfq.zza(contextZzn)) {
            zzr().zzw().zza("Receiver not registered/enabled");
        }
        if (!zzkm.zza(contextZzn, false)) {
            zzr().zzw().zza("Service not registered/enabled");
        }
        zzf();
        long jElapsedRealtime = zzm().elapsedRealtime() + j2;
        if (j2 < Math.max(0L, zzap.zzx.zza(null).longValue()) && !this.zzc.zzb()) {
            zzr().zzx().zza("Scheduling upload with DelayedRunnable");
            this.zzc.zza(j2);
        }
        zzu();
        if (Build.VERSION.SDK_INT < 24) {
            zzr().zzx().zza("Scheduling upload with AlarmManager");
            this.zzb.setInexactRepeating(2, jElapsedRealtime, Math.max(zzap.zzs.zza(null).longValue(), j2), zzw());
            return;
        }
        zzr().zzx().zza("Scheduling upload with JobScheduler");
        Context contextZzn2 = zzn();
        ComponentName componentName = new ComponentName(contextZzn2, "com.google.android.gms.measurement.AppMeasurementJobService");
        int iZzv = zzv();
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("action", "com.google.android.gms.measurement.UPLOAD");
        JobInfo jobInfoBuild = new JobInfo.Builder(iZzv, componentName).setMinimumLatency(j2).setOverrideDeadline(j2 << 1).setExtras(persistableBundle).build();
        zzr().zzx().zza("Scheduling job. JobID", Integer.valueOf(iZzv));
        com.google.android.gms.internal.measurement.zzh.zza(contextZzn2, jobInfoBuild, "com.google.android.gms", "UploadAlarm");
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzb() {
        super.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzc() {
        super.zzc();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzd() {
        super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.zzkb
    protected final boolean zze() {
        this.zzb.cancel(zzw());
        if (Build.VERSION.SDK_INT < 24) {
            return false;
        }
        zzk();
        return false;
    }

    public final void zzf() {
        zzak();
        this.zzb.cancel(zzw());
        this.zzc.zzc();
        if (Build.VERSION.SDK_INT >= 24) {
            zzk();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzkc
    public final /* bridge */ /* synthetic */ zzki zzg() {
        return super.zzg();
    }

    @Override // com.google.android.gms.measurement.internal.zzkc
    public final /* bridge */ /* synthetic */ zzac zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.zzkc
    public final /* bridge */ /* synthetic */ zzfu zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzah zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ Clock zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ Context zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzeu zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzkm zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzft zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzew zzr() {
        return super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzff zzs() {
        return super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzx zzt() {
        return super.zzt();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzw zzu() {
        return super.zzu();
    }
}
