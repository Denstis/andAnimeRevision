package c.a.a.t.l;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    private static class b extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private volatile boolean f3340a;

        b() {
            super();
        }

        @Override // c.a.a.t.l.c
        public void a() {
            if (this.f3340a) {
                throw new IllegalStateException("Already released");
            }
        }

        @Override // c.a.a.t.l.c
        public void a(boolean z) {
            this.f3340a = z;
        }
    }

    private c() {
    }

    public static c b() {
        return new b();
    }

    public abstract void a();

    abstract void a(boolean z);
}
