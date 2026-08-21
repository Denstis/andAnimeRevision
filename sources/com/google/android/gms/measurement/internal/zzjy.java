package com.google.android.gms.measurement.internal;

import android.app.ActivityManager;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzkt;

/* JADX INFO: loaded from: classes.dex */
final class zzjy {
    final /* synthetic */ zzjo zza;

    zzjy(zzjo zzjoVar) {
        this.zza = zzjoVar;
    }

    @VisibleForTesting
    private final void zzb(long j2, boolean z) {
        this.zza.zzd();
        if (zzkt.zzb() && this.zza.zzt().zza(zzap.zzaw)) {
            if (!this.zza.zzx.zzab()) {
                return;
            } else {
                this.zza.zzs().zzq.zza(j2);
            }
        }
        this.zza.zzr().zzx().zza("Session started, time", Long.valueOf(this.zza.zzm().elapsedRealtime()));
        Long lValueOf = this.zza.zzt().zza(zzap.zzap) ? Long.valueOf(j2 / 1000) : null;
        this.zza.zzf().zza("auto", "_sid", lValueOf, j2);
        this.zza.zzs().zzm.zza(false);
        Bundle bundle = new Bundle();
        if (this.zza.zzt().zza(zzap.zzap)) {
            bundle.putLong("_sid", lValueOf.longValue());
        }
        if (this.zza.zzt().zza(zzap.zzce) && z) {
            bundle.putLong("_aib", 1L);
        }
        this.zza.zzf().zza("auto", "_s", j2, bundle);
        if (com.google.android.gms.internal.measurement.zzkb.zzb() && this.zza.zzt().zza(zzap.zzcl)) {
            String strZza = this.zza.zzs().zzw.zza();
            if (!TextUtils.isEmpty(strZza)) {
                Bundle bundle2 = new Bundle();
                bundle2.putString("_ffr", strZza);
                this.zza.zzf().zza("auto", "_ssr", j2, bundle2);
            }
        }
        if (zzkt.zzb() && this.zza.zzt().zza(zzap.zzaw)) {
            return;
        }
        this.zza.zzs().zzq.zza(j2);
    }

    final void zza() {
        if (zzkt.zzb() && this.zza.zzt().zza(zzap.zzaw)) {
            this.zza.zzd();
            if (this.zza.zzs().zza(this.zza.zzm().currentTimeMillis())) {
                this.zza.zzs().zzm.zza(true);
                if (Build.VERSION.SDK_INT >= 16) {
                    ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
                    ActivityManager.getMyMemoryState(runningAppProcessInfo);
                    if (runningAppProcessInfo.importance == 100) {
                        this.zza.zzr().zzx().zza("Detected application was in foreground");
                        zzb(this.zza.zzm().currentTimeMillis(), false);
                    }
                }
            }
        }
    }

    final void zza(long j2, boolean z) {
        this.zza.zzd();
        this.zza.zzac();
        if (this.zza.zzs().zza(j2)) {
            this.zza.zzs().zzm.zza(true);
            this.zza.zzs().zzr.zza(0L);
        }
        if (z && this.zza.zzt().zza(zzap.zzar)) {
            this.zza.zzs().zzq.zza(j2);
        }
        if (this.zza.zzs().zzm.zza()) {
            zzb(j2, z);
        }
    }
}
