package com.google.android.exoplayer2.util;

import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
public interface HandlerWrapper {
    Looper getLooper();

    Message obtainMessage(int i2);

    Message obtainMessage(int i2, int i3, int i4);

    Message obtainMessage(int i2, int i3, int i4, Object obj);

    Message obtainMessage(int i2, Object obj);

    boolean post(Runnable runnable);

    boolean postDelayed(Runnable runnable, long j2);

    void removeCallbacksAndMessages(Object obj);

    void removeMessages(int i2);

    boolean sendEmptyMessage(int i2);

    boolean sendEmptyMessageAtTime(int i2, long j2);
}
