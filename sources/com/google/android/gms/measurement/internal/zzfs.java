package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
final class zzfs implements Runnable {
    private final /* synthetic */ zzga zza;
    private final /* synthetic */ long zzb;
    private final /* synthetic */ Bundle zzc;
    private final /* synthetic */ Context zzd;
    private final /* synthetic */ zzew zze;
    private final /* synthetic */ BroadcastReceiver.PendingResult zzf;

    zzfs(zzfq zzfqVar, zzga zzgaVar, long j2, Bundle bundle, Context context, zzew zzewVar, BroadcastReceiver.PendingResult pendingResult) {
        this.zza = zzgaVar;
        this.zzb = j2;
        this.zzc = bundle;
        this.zzd = context;
        this.zze = zzewVar;
        this.zzf = pendingResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        long jZza = this.zza.zzc().zzh.zza();
        long j2 = this.zzb;
        if (jZza > 0 && (j2 >= jZza || j2 <= 0)) {
            j2 = jZza - 1;
        }
        if (j2 > 0) {
            this.zzc.putLong("click_timestamp", j2);
        }
        this.zzc.putString("_cis", "referrer broadcast");
        zzga.zza(this.zzd, (com.google.android.gms.internal.measurement.zzv) null).zzh().zza("auto", "_cmp", this.zzc);
        this.zze.zzx().zza("Install campaign recorded");
        BroadcastReceiver.PendingResult pendingResult = this.zzf;
        if (pendingResult != null) {
            pendingResult.finish();
        }
    }
}
