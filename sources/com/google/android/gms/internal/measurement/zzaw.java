package com.google.android.gms.internal.measurement;

import android.util.Log;
import android.util.Pair;
import com.google.android.gms.internal.measurement.zzx;

/* JADX INFO: loaded from: classes.dex */
final class zzaw extends zzx.zza {
    private final /* synthetic */ com.google.android.gms.measurement.internal.zzgz zzc;
    private final /* synthetic */ zzx zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzaw(zzx zzxVar, com.google.android.gms.measurement.internal.zzgz zzgzVar) {
        super(zzxVar);
        this.zzd = zzxVar;
        this.zzc = zzgzVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.zza
    final void zza() {
        for (int i2 = 0; i2 < this.zzd.zzf.size(); i2++) {
            if (this.zzc.equals(((Pair) this.zzd.zzf.get(i2)).first)) {
                Log.w(this.zzd.zzc, "OnEventListener already registered.");
                return;
            }
        }
        zzx.zzb zzbVar = new zzx.zzb(this.zzc);
        this.zzd.zzf.add(new Pair(this.zzc, zzbVar));
        this.zzd.zzr.registerOnMeasurementEventListener(zzbVar);
    }
}
