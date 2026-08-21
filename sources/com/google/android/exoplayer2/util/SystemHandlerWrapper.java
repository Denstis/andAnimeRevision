package com.google.android.exoplayer2.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
final class SystemHandlerWrapper implements HandlerWrapper {
    private final Handler handler;

    public SystemHandlerWrapper(Handler handler) {
        this.handler = handler;
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public Looper getLooper() {
        return this.handler.getLooper();
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public Message obtainMessage(int i2) {
        return this.handler.obtainMessage(i2);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public Message obtainMessage(int i2, int i3, int i4) {
        return this.handler.obtainMessage(i2, i3, i4);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public Message obtainMessage(int i2, int i3, int i4, Object obj) {
        return this.handler.obtainMessage(i2, i3, i4, obj);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public Message obtainMessage(int i2, Object obj) {
        return this.handler.obtainMessage(i2, obj);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public boolean post(Runnable runnable) {
        return this.handler.post(runnable);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public boolean postDelayed(Runnable runnable, long j2) {
        return this.handler.postDelayed(runnable, j2);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public void removeCallbacksAndMessages(Object obj) {
        this.handler.removeCallbacksAndMessages(obj);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public void removeMessages(int i2) {
        this.handler.removeMessages(i2);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public boolean sendEmptyMessage(int i2) {
        return this.handler.sendEmptyMessage(i2);
    }

    @Override // com.google.android.exoplayer2.util.HandlerWrapper
    public boolean sendEmptyMessageAtTime(int i2, long j2) {
        return this.handler.sendEmptyMessageAtTime(i2, j2);
    }
}
