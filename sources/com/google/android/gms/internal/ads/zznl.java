package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.SystemClock;
import java.io.IOException;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class zznl {
    private final ExecutorService zzbfm;
    private zznn<? extends zznq> zzbfn;
    private IOException zzbfo;

    public zznl(String str) {
        this.zzbfm = zzof.zzbf(str);
    }

    public final boolean isLoading() {
        return this.zzbfn != null;
    }

    public final <T extends zznq> long zza(T t, zzno<T> zznoVar, int i2) {
        Looper looperMyLooper = Looper.myLooper();
        zznr.checkState(looperMyLooper != null);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        new zznn(this, looperMyLooper, t, zznoVar, i2, jElapsedRealtime).zzee(0L);
        return jElapsedRealtime;
    }

    public final void zza(Runnable runnable) {
        zznn<? extends zznq> zznnVar = this.zzbfn;
        if (zznnVar != null) {
            zznnVar.zzk(true);
        }
        this.zzbfm.execute(runnable);
        this.zzbfm.shutdown();
    }

    public final void zzbb(int i2) throws IOException {
        IOException iOException = this.zzbfo;
        if (iOException != null) {
            throw iOException;
        }
        zznn<? extends zznq> zznnVar = this.zzbfn;
        if (zznnVar != null) {
            zznnVar.zzbb(zznnVar.zzbft);
        }
    }

    public final void zzie() {
        this.zzbfn.zzk(false);
    }
}
