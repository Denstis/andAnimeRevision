package c.b.a;

import c.b.a.c.c;
import c.b.a.c.e;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, C0134a> f3341a = new b.e.a();

    /* JADX INFO: renamed from: c.b.a.a$a, reason: collision with other inner class name */
    static final class C0134a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private c<?> f3342a;

        C0134a() {
        }
    }

    a() {
    }

    public <P> P a(String str) {
        C0134a c0134a = this.f3341a.get(str);
        if (c0134a == null) {
            return null;
        }
        return (P) c0134a.f3342a;
    }

    public void a() {
        this.f3341a.clear();
    }

    public void a(String str, c<? extends e> cVar) {
        if (str == null) {
            throw new NullPointerException("ViewId is null");
        }
        if (cVar == null) {
            throw new NullPointerException("Presenter is null");
        }
        C0134a c0134a = this.f3341a.get(str);
        if (c0134a != null) {
            c0134a.f3342a = cVar;
            return;
        }
        C0134a c0134a2 = new C0134a();
        c0134a2.f3342a = cVar;
        this.f3341a.put(str, c0134a2);
    }

    public void b(String str) {
        if (str == null) {
            throw new NullPointerException("View Id is null");
        }
        this.f3341a.remove(str);
    }
}
