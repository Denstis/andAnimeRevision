package animebestapp.com.utils;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f2130a = new h();

    static final class a<T> implements e.a.j<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ RecyclerView f2131a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f2132b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f2133c;

        /* JADX INFO: renamed from: animebestapp.com.utils.h$a$a, reason: collision with other inner class name */
        public static final class C0091a implements e.a.v.b {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private boolean f2134b;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ b f2136d;

            C0091a(b bVar) {
                this.f2136d = bVar;
            }

            @Override // e.a.v.b
            public boolean a() {
                return this.f2134b;
            }

            @Override // e.a.v.b
            public void b() {
                this.f2134b = true;
                a.this.f2131a.removeOnScrollListener(this.f2136d);
            }
        }

        public static final class b extends RecyclerView.t {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ e.a.i f2138b;

            b(e.a.i iVar) {
                this.f2138b = iVar;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.t
            public void a(RecyclerView recyclerView, int i2, int i3) {
                g.p.b.f.b(recyclerView, "recyclerView");
                e.a.i iVar = this.f2138b;
                g.p.b.f.a((Object) iVar, "subscriber");
                if (iVar.a()) {
                    return;
                }
                RecyclerView.o layoutManager = recyclerView.getLayoutManager();
                if (layoutManager == null) {
                    throw new g.j("null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
                }
                int I = ((LinearLayoutManager) layoutManager).I();
                RecyclerView.g adapter = a.this.f2131a.getAdapter();
                if (adapter == null) {
                    g.p.b.f.a();
                    throw null;
                }
                g.p.b.f.a((Object) adapter, "rv.adapter!!");
                int itemCount = adapter.getItemCount() - 1;
                a aVar = a.this;
                int i4 = itemCount - (aVar.f2132b / 2);
                if (1 <= i4 && I >= i4) {
                    e.a.i iVar2 = this.f2138b;
                    RecyclerView.g adapter2 = aVar.f2131a.getAdapter();
                    if (adapter2 == null) {
                        g.p.b.f.a();
                        throw null;
                    }
                    g.p.b.f.a((Object) adapter2, "rv.adapter!!");
                    int itemCount2 = adapter2.getItemCount();
                    a aVar2 = a.this;
                    double dCeil = Math.ceil((itemCount2 - aVar2.f2133c) / aVar2.f2132b);
                    double d2 = 1;
                    Double.isNaN(d2);
                    iVar2.a(Integer.valueOf((int) (dCeil + d2)));
                }
            }
        }

        a(RecyclerView recyclerView, int i2, int i3) {
            this.f2131a = recyclerView;
            this.f2132b = i2;
            this.f2133c = i3;
        }

        @Override // e.a.j
        public final void a(e.a.i<Integer> iVar) {
            g.p.b.f.b(iVar, "subscriber");
            b bVar = new b(iVar);
            this.f2131a.addOnScrollListener(bVar);
            iVar.a(new C0091a(bVar));
            iVar.a(1);
        }
    }

    private h() {
    }

    public final e.a.h<Integer> a(RecyclerView recyclerView, int i2, int i3) {
        g.p.b.f.b(recyclerView, "rv");
        e.a.h<Integer> hVarA = e.a.h.a(new a(recyclerView, i3, i2));
        g.p.b.f.a((Object) hVarA, "Observable.create { subs…riber.onNext(1)\n        }");
        return hVarA;
    }
}
