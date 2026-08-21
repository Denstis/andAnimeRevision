package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
public final class zzel<V> {
    private static final Object zzf = new Object();
    private final String zza;
    private final zzej<V> zzb;
    private final V zzc;
    private final V zzd;
    private final Object zze;
    private volatile V zzg;
    private volatile V zzh;

    private zzel(String str, V v, V v2, zzej<V> zzejVar) {
        this.zze = new Object();
        this.zzg = null;
        this.zzh = null;
        this.zza = str;
        this.zzc = v;
        this.zzd = v2;
        this.zzb = zzejVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0062 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final V zza(V r4) {
        /*
            r3 = this;
            java.lang.Object r0 = r3.zze
            monitor-enter(r0)
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L72
            if (r4 == 0) goto L7
            return r4
        L7:
            com.google.android.gms.measurement.internal.zzw r4 = com.google.android.gms.measurement.internal.zzem.zza
            if (r4 != 0) goto Le
            V r4 = r3.zzc
            return r4
        Le:
            java.lang.Object r4 = com.google.android.gms.measurement.internal.zzel.zzf
            monitor-enter(r4)
            boolean r0 = com.google.android.gms.measurement.internal.zzw.zza()     // Catch: java.lang.Throwable -> L6d
            if (r0 == 0) goto L22
            V r0 = r3.zzh     // Catch: java.lang.Throwable -> L6d
            if (r0 != 0) goto L1e
            V r0 = r3.zzc     // Catch: java.lang.Throwable -> L6d
            goto L20
        L1e:
            V r0 = r3.zzh     // Catch: java.lang.Throwable -> L6d
        L20:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L6d
            return r0
        L22:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L6d
            java.util.List r4 = com.google.android.gms.measurement.internal.zzap.zzcs()     // Catch: java.lang.SecurityException -> L5a
            java.util.Iterator r4 = r4.iterator()     // Catch: java.lang.SecurityException -> L5a
        L2b:
            boolean r0 = r4.hasNext()     // Catch: java.lang.SecurityException -> L5a
            if (r0 == 0) goto L5b
            java.lang.Object r0 = r4.next()     // Catch: java.lang.SecurityException -> L5a
            com.google.android.gms.measurement.internal.zzel r0 = (com.google.android.gms.measurement.internal.zzel) r0     // Catch: java.lang.SecurityException -> L5a
            boolean r1 = com.google.android.gms.measurement.internal.zzw.zza()     // Catch: java.lang.SecurityException -> L5a
            if (r1 != 0) goto L52
            r1 = 0
            com.google.android.gms.measurement.internal.zzej<V> r2 = r0.zzb     // Catch: java.lang.IllegalStateException -> L48 java.lang.SecurityException -> L5a
            if (r2 == 0) goto L48
            com.google.android.gms.measurement.internal.zzej<V> r2 = r0.zzb     // Catch: java.lang.IllegalStateException -> L48 java.lang.SecurityException -> L5a
            java.lang.Object r1 = r2.zza()     // Catch: java.lang.IllegalStateException -> L48 java.lang.SecurityException -> L5a
        L48:
            java.lang.Object r2 = com.google.android.gms.measurement.internal.zzel.zzf     // Catch: java.lang.SecurityException -> L5a
            monitor-enter(r2)     // Catch: java.lang.SecurityException -> L5a
            r0.zzh = r1     // Catch: java.lang.Throwable -> L4f
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L4f
            goto L2b
        L4f:
            r4 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L4f
            throw r4     // Catch: java.lang.SecurityException -> L5a
        L52:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException     // Catch: java.lang.SecurityException -> L5a
            java.lang.String r0 = "Refreshing flag cache must be done on a worker thread."
            r4.<init>(r0)     // Catch: java.lang.SecurityException -> L5a
            throw r4     // Catch: java.lang.SecurityException -> L5a
        L5a:
        L5b:
            com.google.android.gms.measurement.internal.zzej<V> r4 = r3.zzb
            if (r4 != 0) goto L62
            V r4 = r3.zzc
            return r4
        L62:
            java.lang.Object r4 = r4.zza()     // Catch: java.lang.IllegalStateException -> L67 java.lang.SecurityException -> L6a
            return r4
        L67:
            V r4 = r3.zzc
            return r4
        L6a:
            V r4 = r3.zzc
            return r4
        L6d:
            r0 = move-exception
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L6d
            throw r0
        L70:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L72
            throw r4
        L72:
            r4 = move-exception
            goto L70
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzel.zza(java.lang.Object):java.lang.Object");
    }

    public final String zza() {
        return this.zza;
    }
}
