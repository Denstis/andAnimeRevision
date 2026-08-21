package g.q;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class b implements Iterable<Integer>, g.p.b.l.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f4391e = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f4392b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f4393c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f4394d;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(g.p.b.d dVar) {
            this();
        }

        public final b a(int i2, int i3, int i4) {
            return new b(i2, i3, i4);
        }
    }

    public b(int i2, int i3, int i4) {
        if (i4 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (i4 == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
        this.f4392b = i2;
        this.f4393c = g.n.c.b(i2, i3, i4);
        this.f4394d = i4;
    }

    public final int a() {
        return this.f4392b;
    }

    public final int b() {
        return this.f4393c;
    }

    public final int c() {
        return this.f4394d;
    }

    public boolean equals(Object obj) {
        if (obj instanceof b) {
            if (!isEmpty() || !((b) obj).isEmpty()) {
                b bVar = (b) obj;
                if (this.f4392b != bVar.f4392b || this.f4393c != bVar.f4393c || this.f4394d != bVar.f4394d) {
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((this.f4392b * 31) + this.f4393c) * 31) + this.f4394d;
    }

    public boolean isEmpty() {
        if (this.f4394d > 0) {
            if (this.f4392b > this.f4393c) {
                return true;
            }
        } else if (this.f4392b < this.f4393c) {
            return true;
        }
        return false;
    }

    @Override // java.lang.Iterable
    /* JADX INFO: renamed from: iterator, reason: merged with bridge method [inline-methods] */
    public Iterator<Integer> iterator2() {
        return new c(this.f4392b, this.f4393c, this.f4394d);
    }

    public String toString() {
        StringBuilder sb;
        int i2;
        if (this.f4394d > 0) {
            sb = new StringBuilder();
            sb.append(this.f4392b);
            sb.append("..");
            sb.append(this.f4393c);
            sb.append(" step ");
            i2 = this.f4394d;
        } else {
            sb = new StringBuilder();
            sb.append(this.f4392b);
            sb.append(" downTo ");
            sb.append(this.f4393c);
            sb.append(" step ");
            i2 = -this.f4394d;
        }
        sb.append(i2);
        return sb.toString();
    }
}
