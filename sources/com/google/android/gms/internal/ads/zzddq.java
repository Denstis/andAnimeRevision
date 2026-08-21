package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdby;

/* JADX INFO: loaded from: classes.dex */
final class zzddq extends zzdby.zzj<Void> implements Runnable {
    private final Runnable zzgsa;

    public zzddq(Runnable runnable) {
        this.zzgsa = (Runnable) zzdaq.checkNotNull(runnable);
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzgsa.run();
        } catch (Throwable th) {
            setException(th);
            throw zzdav.zzg(th);
        }
    }
}
