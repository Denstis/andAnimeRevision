package com.bumptech.glide.load.o;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface n<Model, Data> {

    public static class a<Data> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final com.bumptech.glide.load.g f3737a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List<com.bumptech.glide.load.g> f3738b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final com.bumptech.glide.load.m.d<Data> f3739c;

        public a(com.bumptech.glide.load.g gVar, com.bumptech.glide.load.m.d<Data> dVar) {
            this(gVar, Collections.emptyList(), dVar);
        }

        public a(com.bumptech.glide.load.g gVar, List<com.bumptech.glide.load.g> list, com.bumptech.glide.load.m.d<Data> dVar) {
            c.a.a.t.j.a(gVar);
            this.f3737a = gVar;
            c.a.a.t.j.a(list);
            this.f3738b = list;
            c.a.a.t.j.a(dVar);
            this.f3739c = dVar;
        }
    }

    a<Data> a(Model model, int i2, int i3, com.bumptech.glide.load.i iVar);

    boolean a(Model model);
}
