package com.google.firebase.analytics;

import java.util.concurrent.Callable;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
final class zzb implements Callable<String> {
    private final /* synthetic */ FirebaseAnalytics zza;

    zzb(FirebaseAnalytics firebaseAnalytics) {
        this.zza = firebaseAnalytics;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() throws TimeoutException {
        String strZzb = this.zza.zzb();
        if (strZzb != null) {
            return strZzb;
        }
        String strZzh = this.zza.zzd ? this.zza.zzc.zzh() : this.zza.zzb.zzh().zzc(120000L);
        if (strZzh == null) {
            throw new TimeoutException();
        }
        this.zza.zza(strZzh);
        return strZzh;
    }
}
