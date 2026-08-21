package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection;
import com.google.android.gms.internal.measurement.zzks;

/* JADX INFO: loaded from: classes.dex */
final class zzjp {
    final /* synthetic */ zzjo zza;
    private zzju zzb;
    private final Runnable zzc = new Runnable(this) { // from class: com.google.android.gms.measurement.internal.zzjs
        private final zzjp zza;

        {
            this.zza = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            zzjp zzjpVar = this.zza;
            zzjpVar.zza.zzq().zza(new Runnable(zzjpVar) { // from class: com.google.android.gms.measurement.internal.zzjr
                private final zzjp zza;

                {
                    this.zza = zzjpVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzjp zzjpVar2 = this.zza;
                    zzjpVar2.zza.zzd();
                    zzjpVar2.zza.zzr().zzw().zza("Application backgrounded");
                    zzjpVar2.zza.zzf().zzb("auto", "_ab", new Bundle());
                }
            });
        }
    };

    zzjp(zzjo zzjoVar) {
        this.zza = zzjoVar;
    }

    final void zza() {
        this.zza.zzd();
        if (this.zza.zzt().zza(zzap.zzcd)) {
            if (!zzks.zzb() || !this.zza.zzt().zze(this.zza.zzg().zzab(), zzap.zzcq)) {
                this.zza.zzc.removeCallbacks(this.zzc);
            } else if (this.zzb != null) {
                this.zza.zzc.removeCallbacks(this.zzb);
            }
        }
    }

    final void zzb() {
        if (this.zza.zzt().zza(zzap.zzcd)) {
            if (!zzks.zzb() || !this.zza.zzt().zze(this.zza.zzg().zzab(), zzap.zzcq)) {
                this.zza.zzc.postDelayed(this.zzc, AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS);
            } else {
                this.zzb = new zzju(this, this.zza.zzm().currentTimeMillis());
                this.zza.zzc.postDelayed(this.zzb, AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS);
            }
        }
    }
}
