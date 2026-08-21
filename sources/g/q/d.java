package g.q;

/* JADX INFO: loaded from: classes.dex */
public final class d extends b implements g.q.a<Integer> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f4400g = new a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final d f4399f = new d(1, 0);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(g.p.b.d dVar) {
            this();
        }

        public final d a() {
            return d.f4399f;
        }
    }

    public d(int i2, int i3) {
        super(i2, i3, 1);
    }

    public Integer d() {
        return Integer.valueOf(b());
    }

    public Integer e() {
        return Integer.valueOf(a());
    }

    @Override // g.q.b
    public boolean equals(Object obj) {
        if (obj instanceof d) {
            if (!isEmpty() || !((d) obj).isEmpty()) {
                d dVar = (d) obj;
                if (a() != dVar.a() || b() != dVar.b()) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // g.q.b
    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (a() * 31) + b();
    }

    @Override // g.q.b
    public boolean isEmpty() {
        return a() > b();
    }

    @Override // g.q.b
    public String toString() {
        return a() + ".." + b();
    }
}
