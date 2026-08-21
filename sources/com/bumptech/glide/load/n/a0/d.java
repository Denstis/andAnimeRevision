package com.bumptech.glide.load.n.a0;

import com.bumptech.glide.load.n.a0.m;
import java.util.Queue;

/* JADX INFO: loaded from: classes.dex */
abstract class d<T extends m> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Queue<T> f3443a = c.a.a.t.k.a(20);

    d() {
    }

    abstract T a();

    public void a(T t) {
        if (this.f3443a.size() < 20) {
            this.f3443a.offer(t);
        }
    }

    T b() {
        T tPoll = this.f3443a.poll();
        return tPoll == null ? (T) a() : tPoll;
    }
}
