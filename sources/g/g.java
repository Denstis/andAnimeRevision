package g;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public final class g<T> implements Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f4365b = new a(null);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(g.p.b.d dVar) {
            this();
        }
    }

    public static final class b implements Serializable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Throwable f4366b;

        public b(Throwable th) {
            g.p.b.f.b(th, "exception");
            this.f4366b = th;
        }

        public boolean equals(Object obj) {
            return (obj instanceof b) && g.p.b.f.a(this.f4366b, ((b) obj).f4366b);
        }

        public int hashCode() {
            return this.f4366b.hashCode();
        }

        public String toString() {
            return "Failure(" + this.f4366b + ')';
        }
    }

    public static Object a(Object obj) {
        return obj;
    }
}
