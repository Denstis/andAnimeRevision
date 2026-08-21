package com.google.android.gms.internal.ads;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;

/* JADX INFO: loaded from: classes.dex */
public final class zzm extends Thread {
    private final zzn zzaa;
    private final zza zzc;
    private final zzaa zzd;
    private volatile boolean zze = false;
    private final BlockingQueue<zzq<?>> zzz;

    public zzm(BlockingQueue<zzq<?>> blockingQueue, zzn zznVar, zza zzaVar, zzaa zzaaVar) {
        this.zzz = blockingQueue;
        this.zzaa = zznVar;
        this.zzc = zzaVar;
        this.zzd = zzaaVar;
    }

    private final void processRequest() throws InterruptedException {
        zzq<?> zzqVarTake = this.zzz.take();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        zzqVarTake.zza(3);
        try {
            zzqVarTake.zzb("network-queue-take");
            zzqVarTake.isCanceled();
            TrafficStats.setThreadStatsTag(zzqVarTake.zzc());
            zzo zzoVarZzc = this.zzaa.zzc(zzqVarTake);
            zzqVarTake.zzb("network-http-complete");
            if (zzoVarZzc.zzac && zzqVarTake.zzk()) {
                zzqVarTake.zzc("not-modified");
                zzqVarTake.zzl();
                return;
            }
            zzz<?> zzzVarZza = zzqVarTake.zza(zzoVarZzc);
            zzqVarTake.zzb("network-parse-complete");
            if (zzqVarTake.zzg() && zzzVarZza.zzbh != null) {
                this.zzc.zza(zzqVarTake.zzd(), zzzVarZza.zzbh);
                zzqVarTake.zzb("network-cache-written");
            }
            zzqVarTake.zzj();
            this.zzd.zzb(zzqVarTake, zzzVarZza);
            zzqVarTake.zza(zzzVarZza);
        } catch (Exception e2) {
            zzag.zza(e2, "Unhandled exception %s", e2.toString());
            zzae zzaeVar = new zzae(e2);
            zzaeVar.zza(SystemClock.elapsedRealtime() - jElapsedRealtime);
            this.zzd.zza(zzqVarTake, zzaeVar);
            zzqVarTake.zzl();
        } catch (zzae e3) {
            e3.zza(SystemClock.elapsedRealtime() - jElapsedRealtime);
            this.zzd.zza(zzqVarTake, e3);
            zzqVarTake.zzl();
        } finally {
            zzqVarTake.zza(4);
        }
    }

    public final void quit() {
        this.zze = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                processRequest();
            } catch (InterruptedException unused) {
                if (this.zze) {
                    Thread.currentThread().interrupt();
                    return;
                }
                zzag.e("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
