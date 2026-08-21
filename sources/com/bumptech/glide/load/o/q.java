package com.bumptech.glide.load.o;

import com.bumptech.glide.load.m.d;
import com.bumptech.glide.load.o.n;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class q<Model, Data> implements n<Model, Data> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<n<Model, Data>> f3744a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b.h.n.d<List<Throwable>> f3745b;

    static class a<Data> implements com.bumptech.glide.load.m.d<Data>, d.a<Data> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final List<com.bumptech.glide.load.m.d<Data>> f3746b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final b.h.n.d<List<Throwable>> f3747c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f3748d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private c.a.a.h f3749e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private d.a<? super Data> f3750f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private List<Throwable> f3751g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f3752h;

        a(List<com.bumptech.glide.load.m.d<Data>> list, b.h.n.d<List<Throwable>> dVar) {
            this.f3747c = dVar;
            c.a.a.t.j.a(list);
            this.f3746b = list;
            this.f3748d = 0;
        }

        private void d() {
            if (this.f3752h) {
                return;
            }
            if (this.f3748d < this.f3746b.size() - 1) {
                this.f3748d++;
                a(this.f3749e, this.f3750f);
            } else {
                c.a.a.t.j.a(this.f3751g);
                this.f3750f.a((Exception) new com.bumptech.glide.load.n.q("Fetch failed", new ArrayList(this.f3751g)));
            }
        }

        @Override // com.bumptech.glide.load.m.d
        public Class<Data> a() {
            return this.f3746b.get(0).a();
        }

        @Override // com.bumptech.glide.load.m.d
        public void a(c.a.a.h hVar, d.a<? super Data> aVar) {
            this.f3749e = hVar;
            this.f3750f = aVar;
            this.f3751g = this.f3747c.a();
            this.f3746b.get(this.f3748d).a(hVar, this);
            if (this.f3752h) {
                cancel();
            }
        }

        @Override // com.bumptech.glide.load.m.d.a
        public void a(Exception exc) {
            List<Throwable> list = this.f3751g;
            c.a.a.t.j.a(list);
            list.add(exc);
            d();
        }

        @Override // com.bumptech.glide.load.m.d.a
        public void a(Data data) {
            if (data != null) {
                this.f3750f.a(data);
            } else {
                d();
            }
        }

        @Override // com.bumptech.glide.load.m.d
        public void b() {
            List<Throwable> list = this.f3751g;
            if (list != null) {
                this.f3747c.a(list);
            }
            this.f3751g = null;
            Iterator<com.bumptech.glide.load.m.d<Data>> it = this.f3746b.iterator();
            while (it.hasNext()) {
                it.next().b();
            }
        }

        @Override // com.bumptech.glide.load.m.d
        public com.bumptech.glide.load.a c() {
            return this.f3746b.get(0).c();
        }

        @Override // com.bumptech.glide.load.m.d
        public void cancel() {
            this.f3752h = true;
            Iterator<com.bumptech.glide.load.m.d<Data>> it = this.f3746b.iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
        }
    }

    q(List<n<Model, Data>> list, b.h.n.d<List<Throwable>> dVar) {
        this.f3744a = list;
        this.f3745b = dVar;
    }

    @Override // com.bumptech.glide.load.o.n
    public n.a<Data> a(Model model, int i2, int i3, com.bumptech.glide.load.i iVar) {
        n.a<Data> aVarA;
        int size = this.f3744a.size();
        ArrayList arrayList = new ArrayList(size);
        com.bumptech.glide.load.g gVar = null;
        for (int i4 = 0; i4 < size; i4++) {
            n<Model, Data> nVar = this.f3744a.get(i4);
            if (nVar.a(model) && (aVarA = nVar.a(model, i2, i3, iVar)) != null) {
                gVar = aVarA.f3737a;
                arrayList.add(aVarA.f3739c);
            }
        }
        if (arrayList.isEmpty() || gVar == null) {
            return null;
        }
        return new n.a<>(gVar, new a(arrayList, this.f3745b));
    }

    @Override // com.bumptech.glide.load.o.n
    public boolean a(Model model) {
        Iterator<n<Model, Data>> it = this.f3744a.iterator();
        while (it.hasNext()) {
            if (it.next().a(model)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return "MultiModelLoader{modelLoaders=" + Arrays.toString(this.f3744a.toArray()) + '}';
    }
}
