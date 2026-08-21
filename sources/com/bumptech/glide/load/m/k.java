package com.bumptech.glide.load.m;

import com.bumptech.glide.load.m.e;
import com.bumptech.glide.load.p.c.s;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class k implements e<InputStream> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final s f3407a;

    public static final class a implements e.a<InputStream> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.bumptech.glide.load.n.a0.b f3408a;

        public a(com.bumptech.glide.load.n.a0.b bVar) {
            this.f3408a = bVar;
        }

        @Override // com.bumptech.glide.load.m.e.a
        public e<InputStream> a(InputStream inputStream) {
            return new k(inputStream, this.f3408a);
        }

        @Override // com.bumptech.glide.load.m.e.a
        public Class<InputStream> a() {
            return InputStream.class;
        }
    }

    k(InputStream inputStream, com.bumptech.glide.load.n.a0.b bVar) {
        this.f3407a = new s(inputStream, bVar);
        this.f3407a.mark(5242880);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.bumptech.glide.load.m.e
    public InputStream a() {
        this.f3407a.reset();
        return this.f3407a;
    }

    @Override // com.bumptech.glide.load.m.e
    public void b() {
        this.f3407a.k();
    }
}
