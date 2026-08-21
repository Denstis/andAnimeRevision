package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
final class zzddu<V> implements Runnable {
    private zzdds<V> zzgse;

    zzddu(zzdds<V> zzddsVar) {
        this.zzgse = zzddsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzddi<? extends V> zzddiVar;
        zzdds<V> zzddsVar = this.zzgse;
        if (zzddsVar == null || (zzddiVar = ((zzdds) zzddsVar).zzgsc) == null) {
            return;
        }
        this.zzgse = null;
        if (zzddiVar.isDone()) {
            zzddsVar.setFuture(zzddiVar);
            return;
        }
        try {
            ScheduledFuture scheduledFuture = ((zzdds) zzddsVar).zzgsd;
            zzdds.zza((zzdds) zzddsVar, (ScheduledFuture) null);
            String string = "Timed out";
            if (scheduledFuture != null) {
                try {
                    long jAbs = Math.abs(scheduledFuture.getDelay(TimeUnit.MILLISECONDS));
                    if (jAbs > 10) {
                        StringBuilder sb = new StringBuilder("Timed out".length() + 66);
                        sb.append("Timed out");
                        sb.append(" (timeout delayed by ");
                        sb.append(jAbs);
                        sb.append(" ms after scheduled time)");
                        string = sb.toString();
                    }
                } catch (Throwable th) {
                    zzddsVar.setException(new zzddx(string));
                    throw th;
                }
            }
            String strValueOf = String.valueOf(string);
            String strValueOf2 = String.valueOf(zzddiVar);
            StringBuilder sb2 = new StringBuilder(String.valueOf(strValueOf).length() + 2 + String.valueOf(strValueOf2).length());
            sb2.append(strValueOf);
            sb2.append(": ");
            sb2.append(strValueOf2);
            zzddsVar.setException(new zzddx(sb2.toString()));
        } finally {
            zzddiVar.cancel(true);
        }
    }
}
