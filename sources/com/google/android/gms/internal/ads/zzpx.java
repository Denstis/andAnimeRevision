package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
final class zzpx implements Runnable {
    private final /* synthetic */ zzpy zzbpc;

    zzpx(zzpy zzpyVar) {
        this.zzbpc = zzpyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zzbpc.lock) {
            if (this.zzbpc.foreground && this.zzbpc.zzbpd) {
                zzpy.zza(this.zzbpc, false);
                zzaxi.zzdv("App went background");
                Iterator it = this.zzbpc.zzbpe.iterator();
                while (it.hasNext()) {
                    try {
                        ((zzqa) it.next()).zzo(false);
                    } catch (Exception e2) {
                        zzaxi.zzc("", e2);
                    }
                }
            } else {
                zzaxi.zzdv("App is still foreground");
            }
        }
    }
}
