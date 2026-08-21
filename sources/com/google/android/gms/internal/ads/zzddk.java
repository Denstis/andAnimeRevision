package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class zzddk {
    public static zzddl zza(ExecutorService executorService) {
        return executorService instanceof zzddl ? (zzddl) executorService : executorService instanceof ScheduledExecutorService ? new zzddo((ScheduledExecutorService) executorService) : new zzddp(executorService);
    }

    static Executor zza(Executor executor, zzdby<?> zzdbyVar) {
        zzdaq.checkNotNull(executor);
        zzdaq.checkNotNull(zzdbyVar);
        return executor == zzdcq.INSTANCE ? executor : new zzddn(executor, zzdbyVar);
    }

    public static Executor zzapk() {
        return zzdcq.INSTANCE;
    }
}
