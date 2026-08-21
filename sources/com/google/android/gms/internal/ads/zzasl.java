package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.reflect.Method;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class zzasl {
    private final AtomicReference<ThreadPoolExecutor> zzdph = new AtomicReference<>(null);
    private final Object zzdpi = new Object();
    private String zzdpj = null;
    private String zzdpk = null;

    @VisibleForTesting
    private final AtomicBoolean zzdpl = new AtomicBoolean(false);
    private final AtomicInteger zzdpm = new AtomicInteger(-1);
    private final AtomicReference<Object> zzdpn = new AtomicReference<>(null);
    private final AtomicReference<Object> zzdpo = new AtomicReference<>(null);
    private final ConcurrentMap<String, Method> zzdpp = new ConcurrentHashMap(9);
    private final AtomicReference<zzbeb> zzdpq = new AtomicReference<>(null);
    private final BlockingQueue<FutureTask<?>> zzdpr = new ArrayBlockingQueue(20);
    private final Object zzdps = new Object();

    private final Object zza(String str, Context context) {
        if (!zza(context, "com.google.android.gms.measurement.AppMeasurement", this.zzdpn, true)) {
            return null;
        }
        try {
            return zzm(context, str).invoke(this.zzdpn.get(), new Object[0]);
        } catch (Exception e2) {
            zza(e2, str, true);
            return null;
        }
    }

    private final <T> T zza(String str, T t, zzatc<T> zzatcVar) {
        synchronized (this.zzdpq) {
            if (this.zzdpq.get() != null) {
                try {
                    return zzatcVar.zza(this.zzdpq.get());
                } catch (Exception e2) {
                    zza(e2, str, false);
                }
            }
            return t;
        }
    }

    private final void zza(Context context, String str, String str2) {
        if (zza(context, "com.google.android.gms.measurement.AppMeasurement", this.zzdpn, true)) {
            try {
                zzl(context, str2).invoke(this.zzdpn.get(), str);
                StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 37 + String.valueOf(str).length());
                sb.append("Invoke Firebase method ");
                sb.append(str2);
                sb.append(", Ad Unit Id: ");
                sb.append(str);
                zzaug.zzdy(sb.toString());
            } catch (Exception e2) {
                zza(e2, str2, false);
            }
        }
    }

    private final void zza(Context context, final String str, String str2, Bundle bundle) {
        if (zzab(context)) {
            final Bundle bundleZzl = zzl(str2, str);
            if (bundle != null) {
                bundleZzl.putAll(bundle);
            }
            if (zzac(context)) {
                zza("logEventInternal", new zzatb(str, bundleZzl) { // from class: com.google.android.gms.internal.ads.zzasq
                    private final String zzczh;
                    private final Bundle zzdpx;

                    {
                        this.zzczh = str;
                        this.zzdpx = bundleZzl;
                    }

                    @Override // com.google.android.gms.internal.ads.zzatb
                    public final void zzb(zzbeb zzbebVar) {
                        zzbebVar.logEvent("am", this.zzczh, this.zzdpx);
                    }
                });
                return;
            }
            if (zza(context, "com.google.android.gms.measurement.AppMeasurement", this.zzdpn, true)) {
                try {
                    zzai(context).invoke(this.zzdpn.get(), "am", str, bundleZzl);
                } catch (Exception e2) {
                    zza(e2, "logEventInternal", true);
                }
            }
        }
    }

    private final void zza(Exception exc, String str, boolean z) {
        if (this.zzdpl.get()) {
            return;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 30);
        sb.append("Invoke Firebase method ");
        sb.append(str);
        sb.append(" error.");
        zzaxi.zzeu(sb.toString());
        if (z) {
            zzaxi.zzeu("The Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires the latest Firebase SDK jar, but Firebase SDK is either missing or out of date");
            this.zzdpl.set(true);
        }
    }

    private final void zza(final String str, final zzatb zzatbVar) {
        synchronized (this.zzdpq) {
            FutureTask<?> futureTask = new FutureTask<>(new Runnable(this, zzatbVar, str) { // from class: com.google.android.gms.internal.ads.zzasp
                private final String zzdbt;
                private final zzasl zzdpv;
                private final zzatb zzdpw;

                {
                    this.zzdpv = this;
                    this.zzdpw = zzatbVar;
                    this.zzdbt = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzdpv.zza(this.zzdpw, this.zzdbt);
                }
            }, null);
            if (this.zzdpq.get() != null) {
                futureTask.run();
            } else {
                this.zzdpr.offer(futureTask);
            }
        }
    }

    private final boolean zza(Context context, String str, AtomicReference<Object> atomicReference, boolean z) {
        if (atomicReference.get() == null) {
            try {
                atomicReference.compareAndSet(null, context.getClassLoader().loadClass(str).getDeclaredMethod("getInstance", Context.class).invoke(null, context));
            } catch (Exception e2) {
                zza(e2, "getInstance", z);
                return false;
            }
        }
        return true;
    }

    @VisibleForTesting
    private static boolean zzac(Context context) {
        if (!((Boolean) zzuv.zzon().zzd(zzza.zzcjn)).booleanValue()) {
            if (!((Boolean) zzuv.zzon().zzd(zzza.zzcjm)).booleanValue()) {
                return false;
            }
        }
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcjo)).booleanValue()) {
            try {
                context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
                return false;
            } catch (ClassNotFoundException unused) {
            }
        }
        return true;
    }

    private final Method zzai(Context context) {
        Method method = this.zzdpp.get("logEventInternal");
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod("logEventInternal", String.class, String.class, Bundle.class);
            this.zzdpp.put("logEventInternal", declaredMethod);
            return declaredMethod;
        } catch (Exception e2) {
            zza(e2, "logEventInternal", true);
            return null;
        }
    }

    private static Bundle zzl(String str, String str2) {
        Bundle bundle = new Bundle();
        try {
            bundle.putLong("_aeid", Long.parseLong(str));
        } catch (NullPointerException | NumberFormatException e2) {
            String strValueOf = String.valueOf(str);
            zzaxi.zzc(strValueOf.length() != 0 ? "Invalid event ID: ".concat(strValueOf) : new String("Invalid event ID: "), e2);
        }
        if ("_ac".equals(str2)) {
            bundle.putInt("_r", 1);
        }
        return bundle;
    }

    private final Method zzl(Context context, String str) {
        Method method = this.zzdpp.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str, String.class);
            this.zzdpp.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e2) {
            zza(e2, str, false);
            return null;
        }
    }

    private final Method zzm(Context context, String str) {
        Method method = this.zzdpp.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str, new Class[0]);
            this.zzdpp.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e2) {
            zza(e2, str, false);
            return null;
        }
    }

    private final Method zzn(Context context, String str) {
        Method method = this.zzdpp.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod(str, Activity.class, String.class, String.class);
            this.zzdpp.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e2) {
            zza(e2, str, false);
            return null;
        }
    }

    private final ThreadPoolExecutor zzts() {
        if (this.zzdph.get() == null) {
            this.zzdph.compareAndSet(null, new ThreadPoolExecutor(((Integer) zzuv.zzon().zzd(zzza.zzcjl)).intValue(), ((Integer) zzuv.zzon().zzd(zzza.zzcjl)).intValue(), 1L, TimeUnit.MINUTES, new LinkedBlockingQueue(), new zzasz(this)));
        }
        return this.zzdph.get();
    }

    public final void zza(Context context, zztx zztxVar) {
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcjs)).booleanValue() && zzab(context) && zzac(context)) {
            synchronized (this.zzdps) {
            }
        }
    }

    public final void zza(Context context, zzyd zzydVar) {
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcjs)).booleanValue() && zzab(context) && zzac(context)) {
            synchronized (this.zzdps) {
            }
        }
    }

    public final void zza(Context context, String str, String str2, String str3, int i2) {
        if (zzab(context)) {
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str2);
            bundle.putString("type", str3);
            bundle.putInt("value", i2);
            zza(context, "_ar", str, bundle);
            StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 75);
            sb.append("Log a Firebase reward video event, reward type: ");
            sb.append(str3);
            sb.append(", reward value: ");
            sb.append(i2);
            zzaug.zzdy(sb.toString());
        }
    }

    final /* synthetic */ void zza(zzatb zzatbVar, String str) {
        if (this.zzdpq.get() != null) {
            try {
                zzatbVar.zzb(this.zzdpq.get());
            } catch (Exception e2) {
                zza(e2, str, false);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0059  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean zzab(android.content.Context r5) {
        /*
            r4 = this;
            com.google.android.gms.internal.ads.zzyp<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzza.zzcjf
            com.google.android.gms.internal.ads.zzyw r1 = com.google.android.gms.internal.ads.zzuv.zzon()
            java.lang.Object r0 = r1.zzd(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r1 = 0
            if (r0 == 0) goto L67
            java.util.concurrent.atomic.AtomicBoolean r0 = r4.zzdpl
            boolean r0 = r0.get()
            if (r0 == 0) goto L1c
            goto L67
        L1c:
            com.google.android.gms.internal.ads.zzyp<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzza.zzcjp
            com.google.android.gms.internal.ads.zzyw r2 = com.google.android.gms.internal.ads.zzuv.zzon()
            java.lang.Object r0 = r2.zzd(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r2 = 1
            if (r0 == 0) goto L30
            return r2
        L30:
            java.util.concurrent.atomic.AtomicInteger r0 = r4.zzdpm
            int r0 = r0.get()
            r3 = -1
            if (r0 != r3) goto L5e
            com.google.android.gms.internal.ads.zzuv.zzoj()
            r0 = 12451000(0xbdfcb8, float:1.7447567E-38)
            boolean r0 = com.google.android.gms.internal.ads.zzawy.zzc(r5, r0)
            if (r0 != 0) goto L59
            com.google.android.gms.internal.ads.zzuv.zzoj()
            boolean r5 = com.google.android.gms.internal.ads.zzawy.zzbk(r5)
            if (r5 == 0) goto L59
            java.lang.String r5 = "Google Play Service is out of date, the Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires updated Google Play Service."
            com.google.android.gms.internal.ads.zzaxi.zzeu(r5)
            java.util.concurrent.atomic.AtomicInteger r5 = r4.zzdpm
            r5.set(r1)
            goto L5e
        L59:
            java.util.concurrent.atomic.AtomicInteger r5 = r4.zzdpm
            r5.set(r2)
        L5e:
            java.util.concurrent.atomic.AtomicInteger r5 = r4.zzdpm
            int r5 = r5.get()
            if (r5 != r2) goto L67
            return r2
        L67:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzasl.zzab(android.content.Context):boolean");
    }

    public final String zzad(Context context) {
        if (!zzab(context)) {
            return "";
        }
        if (zzac(context)) {
            return (String) zza("getCurrentScreenNameOrScreenClass", "", (zzatc<String>) zzasu.zzdpu);
        }
        if (!zza(context, "com.google.android.gms.measurement.AppMeasurement", this.zzdpn, true)) {
            return "";
        }
        try {
            String str = (String) zzm(context, "getCurrentScreenName").invoke(this.zzdpn.get(), new Object[0]);
            if (str == null) {
                str = (String) zzm(context, "getCurrentScreenClass").invoke(this.zzdpn.get(), new Object[0]);
            }
            return str != null ? str : "";
        } catch (Exception e2) {
            zza(e2, "getCurrentScreenName", false);
            return "";
        }
    }

    public final String zzae(Context context) {
        if (!zzab(context)) {
            return null;
        }
        synchronized (this.zzdpi) {
            if (this.zzdpj != null) {
                return this.zzdpj;
            }
            this.zzdpj = zzac(context) ? (String) zza("getGmpAppId", this.zzdpj, (zzatc<String>) zzasw.zzdpu) : (String) zza("getGmpAppId", context);
            return this.zzdpj;
        }
    }

    public final String zzaf(final Context context) {
        if (!zzab(context)) {
            return null;
        }
        long jLongValue = ((Long) zzuv.zzon().zzd(zzza.zzcjk)).longValue();
        if (zzac(context)) {
            try {
                return jLongValue < 0 ? (String) zza("getAppInstanceId", (Object) null, (zzatc<Object>) zzasv.zzdpu) : (String) zzts().submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzasy
                    private final zzasl zzdpv;

                    {
                        this.zzdpv = this;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.zzdpv.zztt();
                    }
                }).get(jLongValue, TimeUnit.MILLISECONDS);
            } catch (TimeoutException unused) {
                return "TIME_OUT";
            } catch (Exception unused2) {
                return null;
            }
        }
        if (jLongValue < 0) {
            return (String) zza("getAppInstanceId", context);
        }
        try {
            return (String) zzts().submit(new Callable(this, context) { // from class: com.google.android.gms.internal.ads.zzasx
                private final Context zzcfb;
                private final zzasl zzdpv;

                {
                    this.zzdpv = this;
                    this.zzcfb = context;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.zzdpv.zzaj(this.zzcfb);
                }
            }).get(jLongValue, TimeUnit.MILLISECONDS);
        } catch (TimeoutException unused3) {
            return "TIME_OUT";
        } catch (Exception unused4) {
            return null;
        }
    }

    public final String zzag(Context context) {
        if (!zzab(context)) {
            return null;
        }
        if (zzac(context)) {
            Long l = (Long) zza("getAdEventId", (Object) null, (zzatc<Object>) zzata.zzdpu);
            if (l != null) {
                return Long.toString(l.longValue());
            }
            return null;
        }
        Object objZza = zza("generateEventId", context);
        if (objZza != null) {
            return objZza.toString();
        }
        return null;
    }

    public final String zzah(Context context) {
        if (!zzab(context)) {
            return null;
        }
        synchronized (this.zzdpi) {
            if (this.zzdpk != null) {
                return this.zzdpk;
            }
            this.zzdpk = zzac(context) ? (String) zza("getAppIdOrigin", this.zzdpk, (zzatc<String>) zzasn.zzdpu) : "fa";
            return this.zzdpk;
        }
    }

    final /* synthetic */ String zzaj(Context context) {
        return (String) zza("getAppInstanceId", context);
    }

    public final void zze(Context context, final String str) {
        if (zzab(context)) {
            if (zzac(context)) {
                zza("beginAdUnitExposure", new zzatb(str) { // from class: com.google.android.gms.internal.ads.zzaso
                    private final String zzczh;

                    {
                        this.zzczh = str;
                    }

                    @Override // com.google.android.gms.internal.ads.zzatb
                    public final void zzb(zzbeb zzbebVar) {
                        zzbebVar.beginAdUnitExposure(this.zzczh);
                    }
                });
            } else {
                zza(context, str, "beginAdUnitExposure");
            }
        }
    }

    public final void zzf(Context context, final String str) {
        if (zzab(context)) {
            if (zzac(context)) {
                zza("endAdUnitExposure", new zzatb(str) { // from class: com.google.android.gms.internal.ads.zzasr
                    private final String zzczh;

                    {
                        this.zzczh = str;
                    }

                    @Override // com.google.android.gms.internal.ads.zzatb
                    public final void zzb(zzbeb zzbebVar) {
                        zzbebVar.endAdUnitExposure(this.zzczh);
                    }
                });
            } else {
                zza(context, str, "endAdUnitExposure");
            }
        }
    }

    public final void zzg(final Context context, final String str) {
        if (zzab(context) && (context instanceof Activity)) {
            if (zzac(context)) {
                zza("setScreenName", new zzatb(context, str) { // from class: com.google.android.gms.internal.ads.zzast
                    private final String zzcyz;
                    private final Context zzdpy;

                    {
                        this.zzdpy = context;
                        this.zzcyz = str;
                    }

                    @Override // com.google.android.gms.internal.ads.zzatb
                    public final void zzb(zzbeb zzbebVar) {
                        Context context2 = this.zzdpy;
                        zzbebVar.zzb(ObjectWrapper.wrap(context2), this.zzcyz, context2.getPackageName());
                    }
                });
                return;
            }
            if (zza(context, "com.google.firebase.analytics.FirebaseAnalytics", this.zzdpo, false)) {
                try {
                    zzn(context, "setCurrentScreen").invoke(this.zzdpo.get(), (Activity) context, str, context.getPackageName());
                } catch (Exception e2) {
                    zza(e2, "setCurrentScreen", false);
                }
            }
        }
    }

    public final void zzh(Context context, String str) {
        zza(context, "_ac", str, (Bundle) null);
    }

    public final void zzi(Context context, String str) {
        zza(context, "_ai", str, (Bundle) null);
    }

    public final void zzj(Context context, String str) {
        zza(context, "_aq", str, (Bundle) null);
    }

    public final void zzk(Context context, String str) {
        zza(context, "_aa", str, (Bundle) null);
    }

    final /* synthetic */ String zztt() {
        return (String) zza("getAppInstanceId", (Object) null, (zzatc<Object>) zzass.zzdpu);
    }
}
