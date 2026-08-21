package com.google.android.gms.measurement;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import b.m.a.a;
import com.google.android.gms.measurement.internal.zzjh;
import com.google.android.gms.measurement.internal.zzjl;

/* JADX INFO: loaded from: classes.dex */
public final class AppMeasurementService extends Service implements zzjl {
    private zzjh<AppMeasurementService> zza;

    private final zzjh<AppMeasurementService> zza() {
        if (this.zza == null) {
            this.zza = new zzjh<>(this);
        }
        return this.zza;
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return zza().zza(intent);
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        zza().zza();
    }

    @Override // android.app.Service
    public final void onDestroy() {
        zza().zzb();
        super.onDestroy();
    }

    @Override // android.app.Service
    public final void onRebind(Intent intent) {
        zza().zzc(intent);
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i2, int i3) {
        return zza().zza(intent, i2, i3);
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        return zza().zzb(intent);
    }

    @Override // com.google.android.gms.measurement.internal.zzjl
    public final void zza(JobParameters jobParameters, boolean z) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.measurement.internal.zzjl
    public final void zza(Intent intent) {
        a.completeWakefulIntent(intent);
    }

    @Override // com.google.android.gms.measurement.internal.zzjl
    public final boolean zza(int i2) {
        return stopSelfResult(i2);
    }
}
