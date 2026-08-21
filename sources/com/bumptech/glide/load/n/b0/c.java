package com.bumptech.glide.load.n.b0;

import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes.dex */
final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, a> f3481a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f3482b = new b();

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Lock f3483a = new ReentrantLock();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f3484b;

        a() {
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Queue<a> f3485a = new ArrayDeque();

        b() {
        }

        a a() {
            a aVarPoll;
            synchronized (this.f3485a) {
                aVarPoll = this.f3485a.poll();
            }
            return aVarPoll == null ? new a() : aVarPoll;
        }

        void a(a aVar) {
            synchronized (this.f3485a) {
                if (this.f3485a.size() < 10) {
                    this.f3485a.offer(aVar);
                }
            }
        }
    }

    c() {
    }

    void a(String str) {
        a aVarA;
        synchronized (this) {
            aVarA = this.f3481a.get(str);
            if (aVarA == null) {
                aVarA = this.f3482b.a();
                this.f3481a.put(str, aVarA);
            }
            aVarA.f3484b++;
        }
        aVarA.f3483a.lock();
    }

    void b(String str) {
        a aVar;
        synchronized (this) {
            a aVar2 = this.f3481a.get(str);
            c.a.a.t.j.a(aVar2);
            aVar = aVar2;
            if (aVar.f3484b < 1) {
                throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + aVar.f3484b);
            }
            aVar.f3484b--;
            if (aVar.f3484b == 0) {
                a aVarRemove = this.f3481a.remove(str);
                if (!aVarRemove.equals(aVar)) {
                    throw new IllegalStateException("Removed the wrong lock, expected to remove: " + aVar + ", but actually removed: " + aVarRemove + ", safeKey: " + str);
                }
                this.f3482b.a(aVarRemove);
            }
        }
        aVar.f3483a.unlock();
    }
}
