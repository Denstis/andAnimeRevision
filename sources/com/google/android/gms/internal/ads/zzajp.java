package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class zzajp {
    private static zzajp zzdbu;
    private AtomicBoolean zzdbv = new AtomicBoolean(false);

    zzajp() {
    }

    private static void zza(Context context, AppMeasurementSdk appMeasurementSdk) {
        try {
            ((zzbed) zzaxh.zza(context, "com.google.android.gms.ads.measurement.DynamiteMeasurementManager", zzajq.zzbty)).zza(ObjectWrapper.wrap(context), new zzajm(appMeasurementSdk));
        } catch (RemoteException | zzaxj | NullPointerException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static /* synthetic */ void zzd(android.content.Context r3, java.lang.String r4) {
        /*
            com.google.android.gms.internal.ads.zzza.initialize(r3)
            com.google.android.gms.internal.ads.zzyp<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzza.zzcjn
            com.google.android.gms.internal.ads.zzyw r1 = com.google.android.gms.internal.ads.zzuv.zzon()
            java.lang.Object r0 = r1.zzd(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L2a
            com.google.android.gms.internal.ads.zzyp<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzza.zzcjm
            com.google.android.gms.internal.ads.zzyw r1 = com.google.android.gms.internal.ads.zzuv.zzon()
            java.lang.Object r0 = r1.zzd(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L28
            goto L2a
        L28:
            r0 = 0
            goto L2b
        L2a:
            r0 = 1
        L2b:
            android.os.Bundle r1 = new android.os.Bundle
            r1.<init>()
            java.lang.String r2 = "measurementEnabled"
            r1.putBoolean(r2, r0)
            java.lang.String r0 = "FA-Ads"
            java.lang.String r2 = "am"
            com.google.android.gms.measurement.api.AppMeasurementSdk r4 = com.google.android.gms.measurement.api.AppMeasurementSdk.getInstance(r3, r0, r2, r4, r1)
            zza(r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzajp.zzd(android.content.Context, java.lang.String):void");
    }

    private static boolean zzn(Context context) {
        try {
            context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    static /* synthetic */ void zzo(Context context) {
        zzza.initialize(context);
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcjr)).booleanValue() && zzn(context)) {
            zza(context, AppMeasurementSdk.getInstance(context));
        }
    }

    public static zzajp zzrn() {
        if (zzdbu == null) {
            zzdbu = new zzajp();
        }
        return zzdbu;
    }

    public final Thread zzc(final Context context, final String str) {
        if (!this.zzdbv.compareAndSet(false, true)) {
            return null;
        }
        Thread thread = new Thread(new Runnable(this, context, str) { // from class: com.google.android.gms.internal.ads.zzajo
            private final Context zzcfb;
            private final zzajp zzdbs;
            private final String zzdbt;

            {
                this.zzdbs = this;
                this.zzcfb = context;
                this.zzdbt = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzajp.zzd(this.zzcfb, this.zzdbt);
            }
        });
        thread.start();
        return thread;
    }

    public final Thread zzm(final Context context) {
        if (!this.zzdbv.compareAndSet(false, true)) {
            return null;
        }
        Thread thread = new Thread(new Runnable(this, context) { // from class: com.google.android.gms.internal.ads.zzajr
            private final Context zzcfb;
            private final zzajp zzdbs;

            {
                this.zzdbs = this;
                this.zzcfb = context;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzajp.zzo(this.zzcfb);
            }
        });
        thread.start();
        return thread;
    }
}
