package com.google.android.gms.internal.measurement;

import android.annotation.SuppressLint;
import android.content.Context;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzcl<T> {

    @SuppressLint({"StaticFieldLeak"})
    private static Context zzb = null;
    private static boolean zzc = false;
    private static zzcz<zzcy<zzch>> zzd;
    private final zzcr zze;
    private final String zzf;
    private final T zzg;
    private volatile int zzi;
    private volatile T zzj;
    private static final Object zza = new Object();
    private static final AtomicInteger zzh = new AtomicInteger();

    private zzcl(zzcr zzcrVar, String str, T t) {
        this.zzi = -1;
        if (zzcrVar.zzb == null) {
            throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
        }
        this.zze = zzcrVar;
        this.zzf = str;
        this.zzg = t;
    }

    /* synthetic */ zzcl(zzcr zzcrVar, String str, Object obj, zzcn zzcnVar) {
        this(zzcrVar, str, obj);
    }

    private final String zza(String str) {
        if (str != null && str.isEmpty()) {
            return this.zzf;
        }
        String strValueOf = String.valueOf(str);
        String strValueOf2 = String.valueOf(this.zzf);
        return strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
    }

    static void zza() {
        zzh.incrementAndGet();
    }

    public static void zza(Context context) {
        synchronized (zza) {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            if (zzb != context) {
                zzbx.zzc();
                zzcu.zza();
                zzcg.zza();
                zzh.incrementAndGet();
                zzb = context;
                zzd = zzdc.zza(zzco.zza);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzcl<Double> zzb(zzcr zzcrVar, String str, double d2) {
        return new zzcp(zzcrVar, str, Double.valueOf(d2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzcl<Long> zzb(zzcr zzcrVar, String str, long j2) {
        return new zzcn(zzcrVar, str, Long.valueOf(j2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzcl<String> zzb(zzcr zzcrVar, String str, String str2) {
        return new zzcs(zzcrVar, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzcl<Boolean> zzb(zzcr zzcrVar, String str, boolean z) {
        return new zzcq(zzcrVar, str, Boolean.valueOf(z));
    }

    static final /* synthetic */ zzcy zzd() {
        new zzck();
        return zzck.zza(zzb);
    }

    abstract T zza(Object obj);

    public final String zzb() {
        return zza(this.zze.zzd);
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c6 A[Catch: all -> 0x00f3, TryCatch #0 {, blocks: (B:5:0x000b, B:7:0x000f, B:9:0x0013, B:11:0x0022, B:13:0x0038, B:49:0x00e4, B:48:0x00e2, B:14:0x003e, B:16:0x004e, B:21:0x005f, B:23:0x0065, B:25:0x0071, B:29:0x008a, B:31:0x0094, B:42:0x00c6, B:44:0x00da, B:27:0x0082, B:32:0x0099, B:34:0x00a2, B:36:0x00b4, B:38:0x00bf, B:37:0x00b9, B:50:0x00e9, B:51:0x00f0, B:52:0x00f1), top: B:59:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00e2 A[Catch: all -> 0x00f3, TryCatch #0 {, blocks: (B:5:0x000b, B:7:0x000f, B:9:0x0013, B:11:0x0022, B:13:0x0038, B:49:0x00e4, B:48:0x00e2, B:14:0x003e, B:16:0x004e, B:21:0x005f, B:23:0x0065, B:25:0x0071, B:29:0x008a, B:31:0x0094, B:42:0x00c6, B:44:0x00da, B:27:0x0082, B:32:0x0099, B:34:0x00a2, B:36:0x00b4, B:38:0x00bf, B:37:0x00b9, B:50:0x00e9, B:51:0x00f0, B:52:0x00f1), top: B:59:0x000b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final T zzc() {
        /*
            Method dump skipped, instruction units count: 249
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzcl.zzc():java.lang.Object");
    }
}
