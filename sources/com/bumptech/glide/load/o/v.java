package com.bumptech.glide.load.o;

import com.bumptech.glide.load.m.d;
import com.bumptech.glide.load.o.n;

/* JADX INFO: loaded from: classes.dex */
public class v<Model> implements n<Model, Model> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final v<?> f3770a = new v<>();

    public static class a<Model> implements o<Model, Model> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final a<?> f3771a = new a<>();

        @Deprecated
        public a() {
        }

        public static <T> a<T> a() {
            return (a<T>) f3771a;
        }

        @Override // com.bumptech.glide.load.o.o
        public n<Model, Model> a(r rVar) {
            return v.a();
        }
    }

    private static class b<Model> implements com.bumptech.glide.load.m.d<Model> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Model f3772b;

        b(Model model) {
            this.f3772b = model;
        }

        @Override // com.bumptech.glide.load.m.d
        public Class<Model> a() {
            return (Class<Model>) this.f3772b.getClass();
        }

        @Override // com.bumptech.glide.load.m.d
        public void a(c.a.a.h hVar, d.a<? super Model> aVar) {
            aVar.a(this.f3772b);
        }

        @Override // com.bumptech.glide.load.m.d
        public void b() {
        }

        @Override // com.bumptech.glide.load.m.d
        public com.bumptech.glide.load.a c() {
            return com.bumptech.glide.load.a.LOCAL;
        }

        @Override // com.bumptech.glide.load.m.d
        public void cancel() {
        }
    }

    @Deprecated
    public v() {
    }

    public static <T> v<T> a() {
        return (v<T>) f3770a;
    }

    @Override // com.bumptech.glide.load.o.n
    public n.a<Model> a(Model model, int i2, int i3, com.bumptech.glide.load.i iVar) {
        return new n.a<>(new c.a.a.s.b(model), new b(model));
    }

    @Override // com.bumptech.glide.load.o.n
    public boolean a(Model model) {
        return true;
    }
}
