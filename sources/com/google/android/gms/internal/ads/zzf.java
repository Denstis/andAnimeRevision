package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzf implements Runnable {
    private final /* synthetic */ zzq zzp;
    private final /* synthetic */ zzc zzq;

    zzf(zzc zzcVar, zzq zzqVar) {
        this.zzq = zzcVar;
        this.zzp = zzqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzq.zzb.put(this.zzp);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }
}
