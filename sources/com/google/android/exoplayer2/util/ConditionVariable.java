package com.google.android.exoplayer2.util;

/* JADX INFO: loaded from: classes.dex */
public final class ConditionVariable {
    private boolean isOpen;

    public synchronized void block() {
        while (!this.isOpen) {
            wait();
        }
    }

    public synchronized boolean block(long j2) {
        long jElapsedRealtime = android.os.SystemClock.elapsedRealtime();
        long j3 = j2 + jElapsedRealtime;
        while (!this.isOpen && jElapsedRealtime < j3) {
            wait(j3 - jElapsedRealtime);
            jElapsedRealtime = android.os.SystemClock.elapsedRealtime();
        }
        return this.isOpen;
    }

    public synchronized boolean close() {
        boolean z;
        z = this.isOpen;
        this.isOpen = false;
        return z;
    }

    public synchronized boolean open() {
        if (this.isOpen) {
            return false;
        }
        this.isOpen = true;
        notifyAll();
        return true;
    }
}
