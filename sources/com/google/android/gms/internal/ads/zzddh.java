package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: loaded from: classes.dex */
abstract class zzddh<T> extends AtomicReference<Runnable> implements Runnable {
    private static final Runnable zzgrq = new zzddj();
    private static final Runnable zzgrr = new zzddj();
    private static final Runnable zzgrs = new zzddj();

    zzddh() {
    }

    final void interruptTask() {
        Runnable runnable = get();
        if ((runnable instanceof Thread) && compareAndSet(runnable, zzgrr)) {
            try {
                ((Thread) runnable).interrupt();
            } finally {
                if (getAndSet(zzgrq) == zzgrs) {
                    LockSupport.unpark((Thread) runnable);
                }
            }
        }
    }

    abstract boolean isDone();

    @Override // java.lang.Runnable
    public final void run() {
        T tZzapg;
        Thread threadCurrentThread = Thread.currentThread();
        if (compareAndSet(null, threadCurrentThread)) {
            boolean z = !isDone();
            if (z) {
                try {
                    tZzapg = zzapg();
                } catch (Throwable th) {
                    if (!compareAndSet(threadCurrentThread, zzgrq)) {
                        Runnable runnable = get();
                        boolean z2 = false;
                        int i2 = 0;
                        while (true) {
                            if (runnable != zzgrr && runnable != zzgrs) {
                                break;
                            }
                            i2++;
                            if (i2 > 1000) {
                                Runnable runnable2 = zzgrs;
                                if (runnable == runnable2 || compareAndSet(zzgrr, runnable2)) {
                                    boolean z3 = Thread.interrupted() || z2;
                                    LockSupport.park(this);
                                    z2 = z3;
                                }
                            } else {
                                Thread.yield();
                            }
                            runnable = get();
                        }
                        if (z2) {
                            threadCurrentThread.interrupt();
                        }
                    }
                    if (z) {
                        zzb(null, th);
                        return;
                    }
                    return;
                }
            } else {
                tZzapg = null;
            }
            if (!compareAndSet(threadCurrentThread, zzgrq)) {
                Runnable runnable3 = get();
                boolean z4 = false;
                int i3 = 0;
                while (true) {
                    if (runnable3 != zzgrr && runnable3 != zzgrs) {
                        break;
                    }
                    i3++;
                    if (i3 > 1000) {
                        Runnable runnable4 = zzgrs;
                        if (runnable3 == runnable4 || compareAndSet(zzgrr, runnable4)) {
                            boolean z5 = Thread.interrupted() || z4;
                            LockSupport.park(this);
                            z4 = z5;
                        }
                    } else {
                        Thread.yield();
                    }
                    runnable3 = get();
                }
                if (z4) {
                    threadCurrentThread.interrupt();
                }
            }
            if (z) {
                zzb(tZzapg, null);
            }
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String string;
        Runnable runnable = get();
        if (runnable == zzgrq) {
            string = "running=[DONE]";
        } else if (runnable == zzgrr) {
            string = "running=[INTERRUPTED]";
        } else if (runnable instanceof Thread) {
            String name = ((Thread) runnable).getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 21);
            sb.append("running=[RUNNING ON ");
            sb.append(name);
            sb.append("]");
            string = sb.toString();
        } else {
            string = "running=[NOT STARTED YET]";
        }
        String strZzaph = zzaph();
        StringBuilder sb2 = new StringBuilder(String.valueOf(string).length() + 2 + String.valueOf(strZzaph).length());
        sb2.append(string);
        sb2.append(", ");
        sb2.append(strZzaph);
        return sb2.toString();
    }

    abstract T zzapg();

    abstract String zzaph();

    abstract void zzb(T t, Throwable th);
}
