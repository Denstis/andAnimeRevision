package com.google.android.gms.internal.measurement;

import android.util.Log;
import android.util.Pair;
import com.google.android.gms.internal.measurement.zzx;

/* JADX INFO: loaded from: classes.dex */
final class zzax extends zzx.zza {
    private final /* synthetic */ com.google.android.gms.measurement.internal.zzgz zzc;
    private final /* synthetic */ zzx zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzax(zzx zzxVar, com.google.android.gms.measurement.internal.zzgz zzgzVar) {
        super(zzxVar);
        this.zzd = zzxVar;
        this.zzc = zzgzVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzx.zza
    final void zza() {
        Pair pair;
        int i2 = 0;
        while (true) {
            if (i2 >= this.zzd.zzf.size()) {
                pair = null;
                break;
            } else {
                if (this.zzc.equals(((Pair) this.zzd.zzf.get(i2)).first)) {
                    pair = (Pair) this.zzd.zzf.get(i2);
                    break;
                }
                i2++;
            }
        }
        if (pair == null) {
            Log.w(this.zzd.zzc, "OnEventListener had not been registered.");
        } else {
            this.zzd.zzr.unregisterOnMeasurementEventListener((zzs) pair.second);
            this.zzd.zzf.remove(pair);
        }
    }
}
