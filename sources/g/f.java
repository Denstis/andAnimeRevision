package g;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public final class f<A, B> implements Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final A f4363b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final B f4364c;

    public f(A a2, B b2) {
        this.f4363b = a2;
        this.f4364c = b2;
    }

    public final A a() {
        return this.f4363b;
    }

    public final B b() {
        return this.f4364c;
    }

    public final A c() {
        return this.f4363b;
    }

    public final B d() {
        return this.f4364c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return g.p.b.f.a(this.f4363b, fVar.f4363b) && g.p.b.f.a(this.f4364c, fVar.f4364c);
    }

    public int hashCode() {
        A a2 = this.f4363b;
        int iHashCode = (a2 != null ? a2.hashCode() : 0) * 31;
        B b2 = this.f4364c;
        return iHashCode + (b2 != null ? b2.hashCode() : 0);
    }

    public String toString() {
        return '(' + this.f4363b + ", " + this.f4364c + ')';
    }
}
