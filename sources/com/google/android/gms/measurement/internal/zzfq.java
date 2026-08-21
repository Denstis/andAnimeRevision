package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class zzfq {
    private final zzfr zza;

    public zzfq(zzfr zzfrVar) {
        Preconditions.checkNotNull(zzfrVar);
        this.zza = zzfrVar;
    }

    public static boolean zza(Context context) {
        ActivityInfo receiverInfo;
        Preconditions.checkNotNull(context);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (receiverInfo = packageManager.getReceiverInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementReceiver"), 0)) != null) {
                if (receiverInfo.enabled) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    public final void zza(Context context, Intent intent) {
        zzga zzgaVarZza = zzga.zza(context, (com.google.android.gms.internal.measurement.zzv) null);
        zzew zzewVarZzr = zzgaVarZza.zzr();
        if (intent == null) {
            zzewVarZzr.zzi().zza("Receiver called with null intent");
            return;
        }
        zzgaVarZza.zzu();
        String action = intent.getAction();
        zzewVarZzr.zzx().zza("Local receiver got", action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
            className.setAction("com.google.android.gms.measurement.UPLOAD");
            zzewVarZzr.zzx().zza("Starting wakeful intent.");
            this.zza.doStartService(context, className);
            return;
        }
        if ("com.android.vending.INSTALL_REFERRER".equals(action)) {
            try {
                zzgaVarZza.zzq().zza(new zzfp(this, zzgaVarZza, zzewVarZzr));
            } catch (Exception e2) {
                zzewVarZzr.zzi().zza("Install Referrer Reporter encountered a problem", e2);
            }
            BroadcastReceiver.PendingResult pendingResultDoGoAsync = this.zza.doGoAsync();
            String stringExtra = intent.getStringExtra("referrer");
            if (stringExtra == null) {
                zzewVarZzr.zzx().zza("Install referrer extras are null");
                if (pendingResultDoGoAsync != null) {
                    pendingResultDoGoAsync.finish();
                    return;
                }
                return;
            }
            zzewVarZzr.zzv().zza("Install referrer extras are", stringExtra);
            if (!stringExtra.contains("?")) {
                String strValueOf = String.valueOf(stringExtra);
                stringExtra = strValueOf.length() != 0 ? "?".concat(strValueOf) : new String("?");
            }
            Bundle bundleZza = zzgaVarZza.zzi().zza(Uri.parse(stringExtra));
            if (bundleZza == null) {
                zzewVarZzr.zzx().zza("No campaign defined in install referrer broadcast");
                if (pendingResultDoGoAsync != null) {
                    pendingResultDoGoAsync.finish();
                    return;
                }
                return;
            }
            long longExtra = intent.getLongExtra("referrer_timestamp_seconds", 0L) * 1000;
            if (longExtra == 0) {
                zzewVarZzr.zzi().zza("Install referrer is missing timestamp");
            }
            zzgaVarZza.zzq().zza(new zzfs(this, zzgaVarZza, longExtra, bundleZza, context, zzewVarZzr, pendingResultDoGoAsync));
        }
    }
}
