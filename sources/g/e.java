package g;

/* JADX INFO: loaded from: classes.dex */
public final class e implements Comparable<e> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final e f4358f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f4359b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f4360c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f4361d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f4362e;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(g.p.b.d dVar) {
            this();
        }
    }

    static {
        new a(null);
        f4358f = new e(1, 3, 21);
    }

    public e(int i2, int i3, int i4) {
        this.f4360c = i2;
        this.f4361d = i3;
        this.f4362e = i4;
        this.f4359b = a(this.f4360c, this.f4361d, this.f4362e);
    }

    private final int a(int i2, int i3, int i4) {
        if (i2 >= 0 && 255 >= i2 && i3 >= 0 && 255 >= i3 && i4 >= 0 && 255 >= i4) {
            return (i2 << 16) + (i3 << 8) + i4;
        }
        throw new IllegalArgumentException(("Version components are out of range: " + i2 + '.' + i3 + '.' + i4).toString());
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(e eVar) {
        g.p.b.f.b(eVar, "other");
        return this.f4359b - eVar.f4359b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            obj = null;
        }
        e eVar = (e) obj;
        return eVar != null && this.f4359b == eVar.f4359b;
    }

    public int hashCode() {
        return this.f4359b;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f4360c);
        sb.append('.');
        sb.append(this.f4361d);
        sb.append('.');
        sb.append(this.f4362e);
        return sb.toString();
    }
}
