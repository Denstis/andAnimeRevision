package b.f.a.j;

import b.f.a.j.e;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f2442a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f2443b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f2444c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2445d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ArrayList<a> f2446e = new ArrayList<>();

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private e f2447a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private e f2448b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f2449c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private e.c f2450d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f2451e;

        public a(e eVar) {
            this.f2447a = eVar;
            this.f2448b = eVar.g();
            this.f2449c = eVar.b();
            this.f2450d = eVar.f();
            this.f2451e = eVar.a();
        }

        public void a(f fVar) {
            fVar.a(this.f2447a.h()).a(this.f2448b, this.f2449c, this.f2450d, this.f2451e);
        }

        public void b(f fVar) {
            int iA;
            this.f2447a = fVar.a(this.f2447a.h());
            e eVar = this.f2447a;
            if (eVar != null) {
                this.f2448b = eVar.g();
                this.f2449c = this.f2447a.b();
                this.f2450d = this.f2447a.f();
                iA = this.f2447a.a();
            } else {
                this.f2448b = null;
                iA = 0;
                this.f2449c = 0;
                this.f2450d = e.c.STRONG;
            }
            this.f2451e = iA;
        }
    }

    public p(f fVar) {
        this.f2442a = fVar.v();
        this.f2443b = fVar.w();
        this.f2444c = fVar.s();
        this.f2445d = fVar.i();
        ArrayList<e> arrayListB = fVar.b();
        int size = arrayListB.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f2446e.add(new a(arrayListB.get(i2)));
        }
    }

    public void a(f fVar) {
        fVar.r(this.f2442a);
        fVar.s(this.f2443b);
        fVar.o(this.f2444c);
        fVar.g(this.f2445d);
        int size = this.f2446e.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f2446e.get(i2).a(fVar);
        }
    }

    public void b(f fVar) {
        this.f2442a = fVar.v();
        this.f2443b = fVar.w();
        this.f2444c = fVar.s();
        this.f2445d = fVar.i();
        int size = this.f2446e.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f2446e.get(i2).b(fVar);
        }
    }
}
