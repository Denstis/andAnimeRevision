package com.google.android.exoplayer2.util;

import java.io.IOException;
import java.util.Collections;
import java.util.PriorityQueue;

/* JADX INFO: loaded from: classes.dex */
public final class PriorityTaskManager {
    private final Object lock = new Object();
    private final PriorityQueue<Integer> queue = new PriorityQueue<>(10, Collections.reverseOrder());
    private int highestPriority = Integer.MIN_VALUE;

    public static class PriorityTooLowException extends IOException {
        public PriorityTooLowException(int i2, int i3) {
            super("Priority too low [priority=" + i2 + ", highest=" + i3 + "]");
        }
    }

    public void add(int i2) {
        synchronized (this.lock) {
            this.queue.add(Integer.valueOf(i2));
            this.highestPriority = Math.max(this.highestPriority, i2);
        }
    }

    public void proceed(int i2) {
        synchronized (this.lock) {
            while (this.highestPriority != i2) {
                this.lock.wait();
            }
        }
    }

    public boolean proceedNonBlocking(int i2) {
        boolean z;
        synchronized (this.lock) {
            z = this.highestPriority == i2;
        }
        return z;
    }

    public void proceedOrThrow(int i2) {
        synchronized (this.lock) {
            if (this.highestPriority != i2) {
                throw new PriorityTooLowException(i2, this.highestPriority);
            }
        }
    }

    public void remove(int i2) {
        synchronized (this.lock) {
            this.queue.remove(Integer.valueOf(i2));
            this.highestPriority = this.queue.isEmpty() ? Integer.MIN_VALUE : ((Integer) Util.castNonNull(this.queue.peek())).intValue();
            this.lock.notifyAll();
        }
    }
}
