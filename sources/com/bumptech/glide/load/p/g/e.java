package com.bumptech.glide.load.p.g;

import com.bumptech.glide.load.n.r;

/* JADX INFO: loaded from: classes.dex */
public class e extends com.bumptech.glide.load.p.e.b<c> implements r {
    public e(c cVar) {
        super(cVar);
    }

    @Override // com.bumptech.glide.load.n.v
    public void a() {
        ((c) this.f3871b).stop();
        ((c) this.f3871b).g();
    }

    @Override // com.bumptech.glide.load.n.v
    public int b() {
        return ((c) this.f3871b).f();
    }

    @Override // com.bumptech.glide.load.n.v
    public Class<c> c() {
        return c.class;
    }

    @Override // com.bumptech.glide.load.p.e.b, com.bumptech.glide.load.n.r
    public void initialize() {
        ((c) this.f3871b).c().prepareToDraw();
    }
}
