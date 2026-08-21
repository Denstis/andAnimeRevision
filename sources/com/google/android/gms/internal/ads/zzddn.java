package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes.dex */
final class zzddn implements Executor {
    boolean zzgrv = true;
    private final /* synthetic */ Executor zzgrw;
    private final /* synthetic */ zzdby zzgrx;

    zzddn(Executor executor, zzdby zzdbyVar) {
        this.zzgrw = executor;
        this.zzgrx = zzdbyVar;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        try {
            this.zzgrw.execute(new zzddm(this, runnable));
        } catch (RejectedExecutionException e2) {
            if (this.zzgrv) {
                this.zzgrx.setException(e2);
            }
        }
    }
}
