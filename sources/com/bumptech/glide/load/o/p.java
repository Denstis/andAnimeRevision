package com.bumptech.glide.load.o;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final r f3740a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f3741b;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Map<Class<?>, C0147a<?>> f3742a = new HashMap();

        /* JADX INFO: renamed from: com.bumptech.glide.load.o.p$a$a, reason: collision with other inner class name */
        private static class C0147a<Model> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final List<n<Model, ?>> f3743a;

            public C0147a(List<n<Model, ?>> list) {
                this.f3743a = list;
            }
        }

        a() {
        }

        public <Model> List<n<Model, ?>> a(Class<Model> cls) {
            C0147a<?> c0147a = this.f3742a.get(cls);
            if (c0147a == null) {
                return null;
            }
            return (List<n<Model, ?>>) c0147a.f3743a;
        }

        public void a() {
            this.f3742a.clear();
        }

        public <Model> void a(Class<Model> cls, List<n<Model, ?>> list) {
            if (this.f3742a.put(cls, new C0147a<>(list)) == null) {
                return;
            }
            throw new IllegalStateException("Already cached loaders for model: " + cls);
        }
    }

    public p(b.h.n.d<List<Throwable>> dVar) {
        this(new r(dVar));
    }

    private p(r rVar) {
        this.f3741b = new a();
        this.f3740a = rVar;
    }

    private static <A> Class<A> b(A a2) {
        return (Class<A>) a2.getClass();
    }

    private synchronized <A> List<n<A, ?>> b(Class<A> cls) {
        List<n<A, ?>> listA;
        listA = this.f3741b.a(cls);
        if (listA == null) {
            listA = Collections.unmodifiableList(this.f3740a.a(cls));
            this.f3741b.a(cls, listA);
        }
        return listA;
    }

    public synchronized List<Class<?>> a(Class<?> cls) {
        return this.f3740a.b(cls);
    }

    public <A> List<n<A, ?>> a(A a2) {
        List<n<A, ?>> listB = b((Class) b(a2));
        int size = listB.size();
        List<n<A, ?>> listEmptyList = Collections.emptyList();
        boolean z = true;
        for (int i2 = 0; i2 < size; i2++) {
            n<A, ?> nVar = listB.get(i2);
            if (nVar.a(a2)) {
                if (z) {
                    listEmptyList = new ArrayList<>(size - i2);
                    z = false;
                }
                listEmptyList.add(nVar);
            }
        }
        return listEmptyList;
    }

    public synchronized <Model, Data> void a(Class<Model> cls, Class<Data> cls2, o<? extends Model, ? extends Data> oVar) {
        this.f3740a.a(cls, cls2, oVar);
        this.f3741b.a();
    }
}
