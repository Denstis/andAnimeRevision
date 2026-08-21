package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class zzawk {
    private HandlerThread zzduw = null;
    private Handler handler = null;
    private int zzdux = 0;
    private final Object lock = new Object();

    public final Handler getHandler() {
        return this.handler;
    }

    public final Looper zzwd() {
        Looper looper;
        synchronized (this.lock) {
            if (this.zzdux != 0) {
                Preconditions.checkNotNull(this.zzduw, "Invalid state: mHandlerThread should already been initialized.");
            } else if (this.zzduw == null) {
                zzaug.zzdy("Starting the looper thread.");
                this.zzduw = new HandlerThread("LooperProvider");
                this.zzduw.start();
                this.handler = new zzdac(this.zzduw.getLooper());
                zzaug.zzdy("Looper thread started.");
            } else {
                zzaug.zzdy("Resuming the looper thread");
                this.lock.notifyAll();
            }
            this.zzdux++;
            looper = this.zzduw.getLooper();
        }
        return looper;
    }
}
