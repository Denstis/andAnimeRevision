package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public final class zzcpc implements zzcru<zzcoz> {
    private final zzddl zzfoa;
    private final Context zzlk;

    public zzcpc(zzddl zzddlVar, Context context) {
        this.zzfoa = zzddlVar;
        this.zzlk = context;
    }

    @Override // com.google.android.gms.internal.ads.zzcru
    public final zzddi<zzcoz> zzalv() {
        return this.zzfoa.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzcpb
            private final zzcpc zzgew;

            {
                this.zzgew = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzgew.zzalz();
            }
        });
    }

    final /* synthetic */ zzcoz zzalz() {
        double d2;
        Intent intentRegisterReceiver = this.zzlk.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        boolean z = false;
        if (intentRegisterReceiver != null) {
            int intExtra = intentRegisterReceiver.getIntExtra("status", -1);
            double intExtra2 = intentRegisterReceiver.getIntExtra(FirebaseAnalytics.Param.LEVEL, -1);
            double intExtra3 = intentRegisterReceiver.getIntExtra("scale", -1);
            Double.isNaN(intExtra2);
            Double.isNaN(intExtra3);
            d2 = intExtra2 / intExtra3;
            if (intExtra == 2 || intExtra == 5) {
                z = true;
            }
        } else {
            d2 = -1.0d;
        }
        return new zzcoz(d2, z);
    }
}
