package com.google.android.gms.internal.ads;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes.dex */
abstract class zzdco<T> extends zzddh<T> {
    private final Executor zzgre;
    boolean zzgrf = true;
    private final /* synthetic */ zzdcm zzgrg;

    public zzdco(zzdcm zzdcmVar, Executor executor) {
        this.zzgrg = zzdcmVar;
        this.zzgre = (Executor) zzdaq.checkNotNull(executor);
    }

    final void execute() {
        try {
            this.zzgre.execute(this);
        } catch (RejectedExecutionException e2) {
            if (this.zzgrf) {
                this.zzgrg.setException(e2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzddh
    final boolean isDone() {
        return this.zzgrg.isDone();
    }

    abstract void setValue(T t);

    @Override // com.google.android.gms.internal.ads.zzddh
    final void zzb(T t, Throwable th) {
        if (th == null) {
            setValue(t);
            return;
        }
        if (th instanceof ExecutionException) {
            this.zzgrg.setException(th.getCause());
        } else if (th instanceof CancellationException) {
            this.zzgrg.cancel(false);
        } else {
            this.zzgrg.setException(th);
        }
    }
}
