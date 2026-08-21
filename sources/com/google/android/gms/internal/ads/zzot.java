package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;

/* JADX INFO: loaded from: classes.dex */
final class zzot implements Handler.Callback, Choreographer.FrameCallback {
    private static final zzot zzbiq = new zzot();
    private final Handler handler;
    public volatile long zzbip;
    private final HandlerThread zzbir = new HandlerThread("ChoreographerOwner:Handler");
    private Choreographer zzbis;
    private int zzbit;

    private zzot() {
        this.zzbir.start();
        this.handler = new Handler(this.zzbir.getLooper(), this);
        this.handler.sendEmptyMessage(0);
    }

    public static zzot zzja() {
        return zzbiq;
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j2) {
        this.zzbip = j2;
        this.zzbis.postFrameCallbackDelayed(this, 500L);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i2 = message.what;
        if (i2 == 0) {
            this.zzbis = Choreographer.getInstance();
            return true;
        }
        if (i2 == 1) {
            this.zzbit++;
            if (this.zzbit == 1) {
                this.zzbis.postFrameCallback(this);
            }
            return true;
        }
        if (i2 != 2) {
            return false;
        }
        this.zzbit--;
        if (this.zzbit == 0) {
            this.zzbis.removeFrameCallback(this);
            this.zzbip = 0L;
        }
        return true;
    }

    public final void zzjb() {
        this.handler.sendEmptyMessage(1);
    }

    public final void zzjc() {
        this.handler.sendEmptyMessage(2);
    }
}
