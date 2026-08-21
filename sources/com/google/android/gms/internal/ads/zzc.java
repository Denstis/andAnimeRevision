package com.google.android.gms.internal.ads;

import android.os.Process;
import java.util.concurrent.BlockingQueue;

/* JADX INFO: loaded from: classes.dex */
public final class zzc extends Thread {
    private static final boolean DEBUG = zzag.DEBUG;
    private final BlockingQueue<zzq<?>> zza;
    private final BlockingQueue<zzq<?>> zzb;
    private final zza zzc;
    private final zzaa zzd;
    private volatile boolean zze = false;
    private final zze zzf = new zze(this);

    public zzc(BlockingQueue<zzq<?>> blockingQueue, BlockingQueue<zzq<?>> blockingQueue2, zza zzaVar, zzaa zzaaVar) {
        this.zza = blockingQueue;
        this.zzb = blockingQueue2;
        this.zzc = zzaVar;
        this.zzd = zzaaVar;
    }

    private final void processRequest() throws InterruptedException {
        zzaa zzaaVar;
        zzq<?> zzqVarTake = this.zza.take();
        zzqVarTake.zzb("cache-queue-take");
        zzqVarTake.zza(1);
        try {
            zzqVarTake.isCanceled();
            zzd zzdVarZza = this.zzc.zza(zzqVarTake.zzd());
            if (zzdVarZza == null) {
                zzqVarTake.zzb("cache-miss");
                if (!this.zzf.zzb(zzqVarTake)) {
                    this.zzb.put(zzqVarTake);
                }
                return;
            }
            if (zzdVarZza.isExpired()) {
                zzqVarTake.zzb("cache-hit-expired");
                zzqVarTake.zza(zzdVarZza);
                if (!this.zzf.zzb(zzqVarTake)) {
                    this.zzb.put(zzqVarTake);
                }
                return;
            }
            zzqVarTake.zzb("cache-hit");
            zzz<?> zzzVarZza = zzqVarTake.zza(new zzo(zzdVarZza.data, zzdVarZza.zzl));
            zzqVarTake.zzb("cache-hit-parsed");
            if (zzdVarZza.zzk < System.currentTimeMillis()) {
                zzqVarTake.zzb("cache-hit-refresh-needed");
                zzqVarTake.zza(zzdVarZza);
                zzzVarZza.zzbj = true;
                if (!this.zzf.zzb(zzqVarTake)) {
                    this.zzd.zza(zzqVarTake, zzzVarZza, new zzf(this, zzqVarTake));
                }
                zzaaVar = this.zzd;
            } else {
                zzaaVar = this.zzd;
            }
            zzaaVar.zzb(zzqVarTake, zzzVarZza);
        } finally {
            zzqVarTake.zza(2);
        }
    }

    public final void quit() {
        this.zze = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        if (DEBUG) {
            zzag.v("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.zzc.initialize();
        while (true) {
            try {
                processRequest();
            } catch (InterruptedException unused) {
                if (this.zze) {
                    Thread.currentThread().interrupt();
                    return;
                }
                zzag.e("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
