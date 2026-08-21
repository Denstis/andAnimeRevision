package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzjl;

/* JADX INFO: loaded from: classes.dex */
public final class zzjh<T extends Context & zzjl> {
    private final T zza;

    public zzjh(T t) {
        Preconditions.checkNotNull(t);
        this.zza = t;
    }

    private final void zza(Runnable runnable) {
        zzke zzkeVarZza = zzke.zza(this.zza);
        zzkeVarZza.zzq().zza(new zzjm(this, zzkeVarZza, runnable));
    }

    private final zzew zzc() {
        return zzga.zza(this.zza, (com.google.android.gms.internal.measurement.zzv) null).zzr();
    }

    public final int zza(final Intent intent, int i2, final int i3) {
        zzga zzgaVarZza = zzga.zza(this.zza, (com.google.android.gms.internal.measurement.zzv) null);
        final zzew zzewVarZzr = zzgaVarZza.zzr();
        if (intent == null) {
            zzewVarZzr.zzi().zza("AppMeasurementService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        zzgaVarZza.zzu();
        zzewVarZzr.zzx().zza("Local AppMeasurementService called. startId, action", Integer.valueOf(i3), action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            zza(new Runnable(this, i3, zzewVarZzr, intent) { // from class: com.google.android.gms.measurement.internal.zzjk
                private final zzjh zza;
                private final int zzb;
                private final zzew zzc;
                private final Intent zzd;

                {
                    this.zza = this;
                    this.zzb = i3;
                    this.zzc = zzewVarZzr;
                    this.zzd = intent;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zza(this.zzb, this.zzc, this.zzd);
                }
            });
        }
        return 2;
    }

    public final IBinder zza(Intent intent) {
        if (intent == null) {
            zzc().zzf().zza("onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new zzgb(zzke.zza(this.zza));
        }
        zzc().zzi().zza("onBind received unknown action", action);
        return null;
    }

    public final void zza() {
        zzga zzgaVarZza = zzga.zza(this.zza, (com.google.android.gms.internal.measurement.zzv) null);
        zzew zzewVarZzr = zzgaVarZza.zzr();
        zzgaVarZza.zzu();
        zzewVarZzr.zzx().zza("Local AppMeasurementService is starting up");
    }

    final /* synthetic */ void zza(int i2, zzew zzewVar, Intent intent) {
        if (this.zza.zza(i2)) {
            zzewVar.zzx().zza("Local AppMeasurementService processed last upload request. StartId", Integer.valueOf(i2));
            zzc().zzx().zza("Completed wakeful intent.");
            this.zza.zza(intent);
        }
    }

    final /* synthetic */ void zza(zzew zzewVar, JobParameters jobParameters) {
        zzewVar.zzx().zza("AppMeasurementJobService processed last upload request.");
        this.zza.zza(jobParameters, false);
    }

    @TargetApi(24)
    public final boolean zza(final JobParameters jobParameters) {
        zzga zzgaVarZza = zzga.zza(this.zza, (com.google.android.gms.internal.measurement.zzv) null);
        final zzew zzewVarZzr = zzgaVarZza.zzr();
        String string = jobParameters.getExtras().getString("action");
        zzgaVarZza.zzu();
        zzewVarZzr.zzx().zza("Local AppMeasurementJobService called. action", string);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(string)) {
            return true;
        }
        zza(new Runnable(this, zzewVarZzr, jobParameters) { // from class: com.google.android.gms.measurement.internal.zzjj
            private final zzjh zza;
            private final zzew zzb;
            private final JobParameters zzc;

            {
                this.zza = this;
                this.zzb = zzewVarZzr;
                this.zzc = jobParameters;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zza(this.zzb, this.zzc);
            }
        });
        return true;
    }

    public final void zzb() {
        zzga zzgaVarZza = zzga.zza(this.zza, (com.google.android.gms.internal.measurement.zzv) null);
        zzew zzewVarZzr = zzgaVarZza.zzr();
        zzgaVarZza.zzu();
        zzewVarZzr.zzx().zza("Local AppMeasurementService is shutting down");
    }

    public final boolean zzb(Intent intent) {
        if (intent == null) {
            zzc().zzf().zza("onUnbind called with null intent");
            return true;
        }
        zzc().zzx().zza("onUnbind called for intent. action", intent.getAction());
        return true;
    }

    public final void zzc(Intent intent) {
        if (intent == null) {
            zzc().zzf().zza("onRebind called with null intent");
        } else {
            zzc().zzx().zza("onRebind called. action", intent.getAction());
        }
    }
}
