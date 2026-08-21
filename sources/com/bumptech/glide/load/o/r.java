package com.bumptech.glide.load.o;

import c.a.a.i;
import com.bumptech.glide.load.o.n;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class r {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final c f3753e = new c();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final n<Object, Object> f3754f = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<b<?, ?>> f3755a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f3756b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set<b<?, ?>> f3757c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b.h.n.d<List<Throwable>> f3758d;

    private static class a implements n<Object, Object> {
        a() {
        }

        @Override // com.bumptech.glide.load.o.n
        public n.a<Object> a(Object obj, int i2, int i3, com.bumptech.glide.load.i iVar) {
            return null;
        }

        @Override // com.bumptech.glide.load.o.n
        public boolean a(Object obj) {
            return false;
        }
    }

    private static class b<Model, Data> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Class<Model> f3759a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Class<Data> f3760b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final o<? extends Model, ? extends Data> f3761c;

        public b(Class<Model> cls, Class<Data> cls2, o<? extends Model, ? extends Data> oVar) {
            this.f3759a = cls;
            this.f3760b = cls2;
            this.f3761c = oVar;
        }

        public boolean a(Class<?> cls) {
            return this.f3759a.isAssignableFrom(cls);
        }

        public boolean a(Class<?> cls, Class<?> cls2) {
            return a(cls) && this.f3760b.isAssignableFrom(cls2);
        }
    }

    static class c {
        c() {
        }

        public <Model, Data> q<Model, Data> a(List<n<Model, Data>> list, b.h.n.d<List<Throwable>> dVar) {
            return new q<>(list, dVar);
        }
    }

    public r(b.h.n.d<List<Throwable>> dVar) {
        this(dVar, f3753e);
    }

    r(b.h.n.d<List<Throwable>> dVar, c cVar) {
        this.f3755a = new ArrayList();
        this.f3757c = new HashSet();
        this.f3758d = dVar;
        this.f3756b = cVar;
    }

    private static <Model, Data> n<Model, Data> a() {
        return (n<Model, Data>) f3754f;
    }

    private <Model, Data> n<Model, Data> a(b<?, ?> bVar) {
        Object objA = bVar.f3761c.a(this);
        c.a.a.t.j.a(objA);
        return (n) objA;
    }

    private <Model, Data> void a(Class<Model> cls, Class<Data> cls2, o<? extends Model, ? extends Data> oVar, boolean z) {
        b<?, ?> bVar = new b<>(cls, cls2, oVar);
        List<b<?, ?>> list = this.f3755a;
        list.add(z ? list.size() : 0, bVar);
    }

    public synchronized <Model, Data> n<Model, Data> a(Class<Model> cls, Class<Data> cls2) {
        try {
            ArrayList arrayList = new ArrayList();
            boolean z = false;
            for (b<?, ?> bVar : this.f3755a) {
                if (this.f3757c.contains(bVar)) {
                    z = true;
                } else if (bVar.a(cls, cls2)) {
                    this.f3757c.add(bVar);
                    arrayList.add(a(bVar));
                    this.f3757c.remove(bVar);
                }
            }
            if (arrayList.size() > 1) {
                return this.f3756b.a(arrayList, this.f3758d);
            }
            if (arrayList.size() == 1) {
                return (n) arrayList.get(0);
            }
            if (!z) {
                throw new i.c(cls, cls2);
            }
            return a();
        } catch (Throwable th) {
            this.f3757c.clear();
            throw th;
        }
    }

    synchronized <Model> List<n<Model, ?>> a(Class<Model> cls) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            for (b<?, ?> bVar : this.f3755a) {
                if (!this.f3757c.contains(bVar) && bVar.a(cls)) {
                    this.f3757c.add(bVar);
                    arrayList.add(a(bVar));
                    this.f3757c.remove(bVar);
                }
            }
        } catch (Throwable th) {
            this.f3757c.clear();
            throw th;
        }
        return arrayList;
    }

    synchronized <Model, Data> void a(Class<Model> cls, Class<Data> cls2, o<? extends Model, ? extends Data> oVar) {
        a(cls, cls2, oVar, true);
    }

    synchronized List<Class<?>> b(Class<?> cls) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (b<?, ?> bVar : this.f3755a) {
            if (!arrayList.contains(bVar.f3760b) && bVar.a(cls)) {
                arrayList.add(bVar.f3760b);
            }
        }
        return arrayList;
    }
}
