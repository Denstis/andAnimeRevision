package com.google.android.exoplayer2.util;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class TimedValueQueue<V> {
    private static final int INITIAL_BUFFER_SIZE = 10;
    private int first;
    private int size;
    private long[] timestamps;
    private V[] values;

    public TimedValueQueue() {
        this(10);
    }

    public TimedValueQueue(int i2) {
        this.timestamps = new long[i2];
        this.values = (V[]) newArray(i2);
    }

    private void addUnchecked(long j2, V v) {
        int i2 = this.first;
        int i3 = this.size;
        V[] vArr = this.values;
        int length = (i2 + i3) % vArr.length;
        this.timestamps[length] = j2;
        vArr[length] = v;
        this.size = i3 + 1;
    }

    private void clearBufferOnTimeDiscontinuity(long j2) {
        if (this.size > 0) {
            if (j2 <= this.timestamps[((this.first + r0) - 1) % this.values.length]) {
                clear();
            }
        }
    }

    private void doubleCapacityIfFull() {
        int length = this.values.length;
        if (this.size < length) {
            return;
        }
        int i2 = length * 2;
        long[] jArr = new long[i2];
        V[] vArr = (V[]) newArray(i2);
        int i3 = this.first;
        int i4 = length - i3;
        System.arraycopy(this.timestamps, i3, jArr, 0, i4);
        System.arraycopy(this.values, this.first, vArr, 0, i4);
        int i5 = this.first;
        if (i5 > 0) {
            System.arraycopy(this.timestamps, 0, jArr, i4, i5);
            System.arraycopy(this.values, 0, vArr, i4, this.first);
        }
        this.timestamps = jArr;
        this.values = vArr;
        this.first = 0;
    }

    private static <V> V[] newArray(int i2) {
        return (V[]) new Object[i2];
    }

    private V poll(long j2, boolean z) {
        long j3 = Long.MAX_VALUE;
        V v = null;
        while (this.size > 0) {
            long j4 = j2 - this.timestamps[this.first];
            if (j4 < 0 && (z || (-j4) >= j3)) {
                break;
            }
            V[] vArr = this.values;
            int i2 = this.first;
            v = vArr[i2];
            vArr[i2] = null;
            this.first = (i2 + 1) % vArr.length;
            this.size--;
            j3 = j4;
        }
        return v;
    }

    public synchronized void add(long j2, V v) {
        clearBufferOnTimeDiscontinuity(j2);
        doubleCapacityIfFull();
        addUnchecked(j2, v);
    }

    public synchronized void clear() {
        this.first = 0;
        this.size = 0;
        Arrays.fill(this.values, (Object) null);
    }

    public synchronized V poll(long j2) {
        return poll(j2, false);
    }

    public synchronized V pollFloor(long j2) {
        return poll(j2, true);
    }

    public synchronized int size() {
        return this.size;
    }
}
