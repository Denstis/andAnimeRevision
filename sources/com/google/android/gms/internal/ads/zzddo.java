package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
final class zzddo extends zzddp implements zzddl, ScheduledExecutorService {
    private final ScheduledExecutorService zzgry;

    zzddo(ScheduledExecutorService scheduledExecutorService) {
        super(scheduledExecutorService);
        this.zzgry = (ScheduledExecutorService) zzdaq.checkNotNull(scheduledExecutorService);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* synthetic */ ScheduledFuture schedule(Runnable runnable, long j2, TimeUnit timeUnit) {
        zzddw zzddwVarZza = zzddw.zza(runnable, (Object) null);
        return new zzddr(zzddwVarZza, this.zzgry.schedule(zzddwVarZza, j2, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* synthetic */ ScheduledFuture schedule(Callable callable, long j2, TimeUnit timeUnit) {
        zzddw zzddwVarZze = zzddw.zze(callable);
        return new zzddr(zzddwVarZze, this.zzgry.schedule(zzddwVarZze, j2, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* synthetic */ ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j2, long j3, TimeUnit timeUnit) {
        zzddq zzddqVar = new zzddq(runnable);
        return new zzddr(zzddqVar, this.zzgry.scheduleAtFixedRate(zzddqVar, j2, j3, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* synthetic */ ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j2, long j3, TimeUnit timeUnit) {
        zzddq zzddqVar = new zzddq(runnable);
        return new zzddr(zzddqVar, this.zzgry.scheduleWithFixedDelay(zzddqVar, j2, j3, timeUnit));
    }
}
