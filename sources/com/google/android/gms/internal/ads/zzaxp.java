package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
final class zzaxp implements Executor {
    private final Handler zzdwo = new zzauf(Looper.getMainLooper());

    zzaxp() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            this.zzdwo.post(runnable);
            return;
        }
        try {
            runnable.run();
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzq.zzkj();
            zzaul.zza(com.google.android.gms.ads.internal.zzq.zzkn().getApplicationContext(), th);
            throw th;
        }
    }
}
