package com.bumptech.glide.load.p;

import c.a.a.t.j;
import com.bumptech.glide.load.n.v;

/* JADX INFO: loaded from: classes.dex */
public class a<T> implements v<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final T f3790b;

    public a(T t) {
        j.a(t);
        this.f3790b = t;
    }

    @Override // com.bumptech.glide.load.n.v
    public void a() {
    }

    @Override // com.bumptech.glide.load.n.v
    public final int b() {
        return 1;
    }

    @Override // com.bumptech.glide.load.n.v
    public Class<T> c() {
        return (Class<T>) this.f3790b.getClass();
    }

    @Override // com.bumptech.glide.load.n.v
    public final T get() {
        return this.f3790b;
    }
}
