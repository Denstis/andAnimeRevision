package com.bumptech.glide.load.p.g;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import c.a.a.k;
import com.bumptech.glide.load.l;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c.a.a.n.a f3895a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f3896b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<b> f3897c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final k f3898d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.bumptech.glide.load.n.a0.e f3899e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f3900f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f3901g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f3902h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private c.a.a.j<Bitmap> f3903i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private a f3904j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f3905k;
    private a l;
    private Bitmap m;
    private a n;
    private d o;

    static class a extends c.a.a.r.j.f<Bitmap> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Handler f3906e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final int f3907f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final long f3908g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private Bitmap f3909h;

        a(Handler handler, int i2, long j2) {
            this.f3906e = handler;
            this.f3907f = i2;
            this.f3908g = j2;
        }

        public void a(Bitmap bitmap, c.a.a.r.k.b<? super Bitmap> bVar) {
            this.f3909h = bitmap;
            this.f3906e.sendMessageAtTime(this.f3906e.obtainMessage(1, this), this.f3908g);
        }

        @Override // c.a.a.r.j.h
        public /* bridge */ /* synthetic */ void a(Object obj, c.a.a.r.k.b bVar) {
            a((Bitmap) obj, (c.a.a.r.k.b<? super Bitmap>) bVar);
        }

        Bitmap b() {
            return this.f3909h;
        }
    }

    public interface b {
        void a();
    }

    private class c implements Handler.Callback {
        c() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1) {
                g.this.a((a) message.obj);
                return true;
            }
            if (i2 != 2) {
                return false;
            }
            g.this.f3898d.a((a) message.obj);
            return false;
        }
    }

    interface d {
        void a();
    }

    g(c.a.a.c cVar, c.a.a.n.a aVar, int i2, int i3, l<Bitmap> lVar, Bitmap bitmap) {
        this(cVar.c(), c.a.a.c.e(cVar.e()), aVar, null, a(c.a.a.c.e(cVar.e()), i2, i3), lVar, bitmap);
    }

    g(com.bumptech.glide.load.n.a0.e eVar, k kVar, c.a.a.n.a aVar, Handler handler, c.a.a.j<Bitmap> jVar, l<Bitmap> lVar, Bitmap bitmap) {
        this.f3897c = new ArrayList();
        this.f3898d = kVar;
        handler = handler == null ? new Handler(Looper.getMainLooper(), new c()) : handler;
        this.f3899e = eVar;
        this.f3896b = handler;
        this.f3903i = jVar;
        this.f3895a = aVar;
        a(lVar, bitmap);
    }

    private static c.a.a.j<Bitmap> a(k kVar, int i2, int i3) {
        return kVar.b().a((c.a.a.r.a<?>) c.a.a.r.f.b(com.bumptech.glide.load.n.j.f3587a).b(true).a(true).a(i2, i3));
    }

    private static com.bumptech.glide.load.g j() {
        return new c.a.a.s.b(Double.valueOf(Math.random()));
    }

    private int k() {
        return c.a.a.t.k.a(c().getWidth(), c().getHeight(), c().getConfig());
    }

    private void l() {
        if (!this.f3900f || this.f3901g) {
            return;
        }
        if (this.f3902h) {
            c.a.a.t.j.a(this.n == null, "Pending target must be null when starting from the first frame");
            this.f3895a.f();
            this.f3902h = false;
        }
        a aVar = this.n;
        if (aVar != null) {
            this.n = null;
            a(aVar);
            return;
        }
        this.f3901g = true;
        long jUptimeMillis = SystemClock.uptimeMillis() + ((long) this.f3895a.d());
        this.f3895a.b();
        this.l = new a(this.f3896b, this.f3895a.g(), jUptimeMillis);
        c.a.a.j<Bitmap> jVarA = this.f3903i.a((c.a.a.r.a<?>) c.a.a.r.f.b(j()));
        jVarA.a(this.f3895a);
        jVarA.a(this.l);
    }

    private void m() {
        Bitmap bitmap = this.m;
        if (bitmap != null) {
            this.f3899e.a(bitmap);
            this.m = null;
        }
    }

    private void n() {
        if (this.f3900f) {
            return;
        }
        this.f3900f = true;
        this.f3905k = false;
        l();
    }

    private void o() {
        this.f3900f = false;
    }

    void a() {
        this.f3897c.clear();
        m();
        o();
        a aVar = this.f3904j;
        if (aVar != null) {
            this.f3898d.a(aVar);
            this.f3904j = null;
        }
        a aVar2 = this.l;
        if (aVar2 != null) {
            this.f3898d.a(aVar2);
            this.l = null;
        }
        a aVar3 = this.n;
        if (aVar3 != null) {
            this.f3898d.a(aVar3);
            this.n = null;
        }
        this.f3895a.clear();
        this.f3905k = true;
    }

    void a(l<Bitmap> lVar, Bitmap bitmap) {
        c.a.a.t.j.a(lVar);
        c.a.a.t.j.a(bitmap);
        this.m = bitmap;
        this.f3903i = this.f3903i.a((c.a.a.r.a<?>) new c.a.a.r.f().a(lVar));
    }

    void a(a aVar) {
        d dVar = this.o;
        if (dVar != null) {
            dVar.a();
        }
        this.f3901g = false;
        if (this.f3905k) {
            this.f3896b.obtainMessage(2, aVar).sendToTarget();
            return;
        }
        if (!this.f3900f) {
            this.n = aVar;
            return;
        }
        if (aVar.b() != null) {
            m();
            a aVar2 = this.f3904j;
            this.f3904j = aVar;
            for (int size = this.f3897c.size() - 1; size >= 0; size--) {
                this.f3897c.get(size).a();
            }
            if (aVar2 != null) {
                this.f3896b.obtainMessage(2, aVar2).sendToTarget();
            }
        }
        l();
    }

    void a(b bVar) {
        if (this.f3905k) {
            throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
        }
        if (this.f3897c.contains(bVar)) {
            throw new IllegalStateException("Cannot subscribe twice in a row");
        }
        boolean zIsEmpty = this.f3897c.isEmpty();
        this.f3897c.add(bVar);
        if (zIsEmpty) {
            n();
        }
    }

    ByteBuffer b() {
        return this.f3895a.e().asReadOnlyBuffer();
    }

    void b(b bVar) {
        this.f3897c.remove(bVar);
        if (this.f3897c.isEmpty()) {
            o();
        }
    }

    Bitmap c() {
        a aVar = this.f3904j;
        return aVar != null ? aVar.b() : this.m;
    }

    int d() {
        a aVar = this.f3904j;
        if (aVar != null) {
            return aVar.f3907f;
        }
        return -1;
    }

    Bitmap e() {
        return this.m;
    }

    int f() {
        return this.f3895a.c();
    }

    int g() {
        return c().getHeight();
    }

    int h() {
        return this.f3895a.h() + k();
    }

    int i() {
        return c().getWidth();
    }
}
