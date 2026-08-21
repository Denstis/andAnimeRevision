package b.a.n;

import android.view.View;
import android.view.animation.Interpolator;
import b.h.o.w;
import b.h.o.x;
import b.h.o.y;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Interpolator f2218c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    x f2219d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f2220e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f2217b = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final y f2221f = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ArrayList<w> f2216a = new ArrayList<>();

    class a extends y {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f2222a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f2223b = 0;

        a() {
        }

        void a() {
            this.f2223b = 0;
            this.f2222a = false;
            h.this.b();
        }

        @Override // b.h.o.x
        public void b(View view) {
            int i2 = this.f2223b + 1;
            this.f2223b = i2;
            if (i2 == h.this.f2216a.size()) {
                x xVar = h.this.f2219d;
                if (xVar != null) {
                    xVar.b(null);
                }
                a();
            }
        }

        @Override // b.h.o.y, b.h.o.x
        public void c(View view) {
            if (this.f2222a) {
                return;
            }
            this.f2222a = true;
            x xVar = h.this.f2219d;
            if (xVar != null) {
                xVar.c(null);
            }
        }
    }

    public h a(long j2) {
        if (!this.f2220e) {
            this.f2217b = j2;
        }
        return this;
    }

    public h a(Interpolator interpolator) {
        if (!this.f2220e) {
            this.f2218c = interpolator;
        }
        return this;
    }

    public h a(w wVar) {
        if (!this.f2220e) {
            this.f2216a.add(wVar);
        }
        return this;
    }

    public h a(w wVar, w wVar2) {
        this.f2216a.add(wVar);
        wVar2.b(wVar.b());
        this.f2216a.add(wVar2);
        return this;
    }

    public h a(x xVar) {
        if (!this.f2220e) {
            this.f2219d = xVar;
        }
        return this;
    }

    public void a() {
        if (this.f2220e) {
            Iterator<w> it = this.f2216a.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
            this.f2220e = false;
        }
    }

    void b() {
        this.f2220e = false;
    }

    public void c() {
        if (this.f2220e) {
            return;
        }
        for (w wVar : this.f2216a) {
            long j2 = this.f2217b;
            if (j2 >= 0) {
                wVar.a(j2);
            }
            Interpolator interpolator = this.f2218c;
            if (interpolator != null) {
                wVar.a(interpolator);
            }
            if (this.f2219d != null) {
                wVar.a(this.f2221f);
            }
            wVar.c();
        }
        this.f2220e = true;
    }
}
