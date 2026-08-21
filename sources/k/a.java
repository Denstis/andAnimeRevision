package k;

import h.b0;
import h.d0;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import k.e;
import k.s.t;

/* JADX INFO: loaded from: classes.dex */
final class a extends e.a {

    /* JADX INFO: renamed from: k.a$a, reason: collision with other inner class name */
    static final class C0194a implements k.e<d0, d0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final C0194a f5043a = new C0194a();

        C0194a() {
        }

        @Override // k.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public d0 convert(d0 d0Var) {
            try {
                return p.a(d0Var);
            } finally {
                d0Var.close();
            }
        }
    }

    static final class b implements k.e<b0, b0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final b f5044a = new b();

        b() {
        }

        public b0 a(b0 b0Var) {
            return b0Var;
        }

        @Override // k.e
        public /* bridge */ /* synthetic */ b0 convert(b0 b0Var) {
            b0 b0Var2 = b0Var;
            a(b0Var2);
            return b0Var2;
        }
    }

    static final class c implements k.e<d0, d0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final c f5045a = new c();

        c() {
        }

        public d0 a(d0 d0Var) {
            return d0Var;
        }

        @Override // k.e
        public /* bridge */ /* synthetic */ d0 convert(d0 d0Var) {
            d0 d0Var2 = d0Var;
            a(d0Var2);
            return d0Var2;
        }
    }

    static final class d implements k.e<Object, String> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final d f5046a = new d();

        d() {
        }

        @Override // k.e
        public String convert(Object obj) {
            return obj.toString();
        }
    }

    static final class e implements k.e<d0, Void> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final e f5047a = new e();

        e() {
        }

        @Override // k.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void convert(d0 d0Var) {
            d0Var.close();
            return null;
        }
    }

    a() {
    }

    @Override // k.e.a
    public k.e<d0, ?> a(Type type, Annotation[] annotationArr, n nVar) {
        if (type == d0.class) {
            return p.a(annotationArr, (Class<? extends Annotation>) t.class) ? c.f5045a : C0194a.f5043a;
        }
        if (type == Void.class) {
            return e.f5047a;
        }
        return null;
    }

    @Override // k.e.a
    public k.e<?, b0> a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, n nVar) {
        if (b0.class.isAssignableFrom(p.c(type))) {
            return b.f5044a;
        }
        return null;
    }
}
