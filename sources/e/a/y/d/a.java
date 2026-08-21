package e.a.y.d;

import e.a.m;

/* JADX INFO: loaded from: classes.dex */
public abstract class a<T, R> implements m<T>, e.a.y.c.d<R> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final m<? super R> f4144b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected e.a.v.b f4145c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected e.a.y.c.d<T> f4146d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected boolean f4147e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected int f4148f;

    public a(m<? super R> mVar) {
        this.f4144b = mVar;
    }

    @Override // e.a.m
    public final void a(e.a.v.b bVar) {
        if (e.a.y.a.b.a(this.f4145c, bVar)) {
            this.f4145c = bVar;
            if (bVar instanceof e.a.y.c.d) {
                this.f4146d = (e.a.y.c.d) bVar;
            }
            if (e()) {
                this.f4144b.a((e.a.v.b) this);
                d();
            }
        }
    }

    @Override // e.a.m
    public void a(Throwable th) {
        if (this.f4147e) {
            e.a.a0.a.b(th);
        } else {
            this.f4147e = true;
            this.f4144b.a(th);
        }
    }

    @Override // e.a.v.b
    public boolean a() {
        return this.f4145c.a();
    }

    protected final int b(int i2) {
        e.a.y.c.d<T> dVar = this.f4146d;
        if (dVar == null || (i2 & 4) != 0) {
            return 0;
        }
        int iA = dVar.a(i2);
        if (iA != 0) {
            this.f4148f = iA;
        }
        return iA;
    }

    @Override // e.a.v.b
    public void b() {
        this.f4145c.b();
    }

    protected final void b(Throwable th) {
        e.a.w.b.b(th);
        this.f4145c.b();
        a(th);
    }

    @Override // e.a.y.c.h
    public final boolean b(R r) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // e.a.y.c.h
    public void clear() {
        this.f4146d.clear();
    }

    protected void d() {
    }

    protected boolean e() {
        return true;
    }

    @Override // e.a.y.c.h
    public boolean isEmpty() {
        return this.f4146d.isEmpty();
    }

    @Override // e.a.m
    public void onComplete() {
        if (this.f4147e) {
            return;
        }
        this.f4147e = true;
        this.f4144b.onComplete();
    }
}
