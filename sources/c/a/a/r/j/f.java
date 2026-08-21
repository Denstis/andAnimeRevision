package c.a.a.r.j;

import c.a.a.t.k;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class f<Z> extends a<Z> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f3293c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f3294d;

    public f() {
        this(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    public f(int i2, int i3) {
        this.f3293c = i2;
        this.f3294d = i3;
    }

    @Override // c.a.a.r.j.h
    public void a(g gVar) {
    }

    @Override // c.a.a.r.j.h
    public final void b(g gVar) {
        if (k.b(this.f3293c, this.f3294d)) {
            gVar.a(this.f3293c, this.f3294d);
            return;
        }
        throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: " + this.f3293c + " and height: " + this.f3294d + ", either provide dimensions in the constructor or call override()");
    }
}
