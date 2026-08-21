package k;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import k.c;

/* JADX INFO: loaded from: classes.dex */
final class f extends c.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final c.a f5048a = new f();

    class a implements c<Object, b<?>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Type f5049a;

        a(f fVar, Type type) {
            this.f5049a = type;
        }

        @Override // k.c
        public /* bridge */ /* synthetic */ b<?> a(b<Object> bVar) {
            a2(bVar);
            return bVar;
        }

        @Override // k.c
        public Type a() {
            return this.f5049a;
        }

        @Override // k.c
        /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
        public b<?> a2(b<Object> bVar) {
            return bVar;
        }
    }

    f() {
    }

    @Override // k.c.a
    public c<?, ?> a(Type type, Annotation[] annotationArr, n nVar) {
        if (c.a.a(type) != b.class) {
            return null;
        }
        return new a(this, p.b(type));
    }
}
