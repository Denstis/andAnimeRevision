package k.q.a;

import e.a.n;
import e.a.o;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import k.c;
import k.m;

/* JADX INFO: loaded from: classes.dex */
public final class h extends c.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final n f5185a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f5186b;

    private h(n nVar, boolean z) {
        this.f5185a = nVar;
        this.f5186b = z;
    }

    public static h a() {
        return new h(null, false);
    }

    @Override // k.c.a
    public k.c<?, ?> a(Type type, Annotation[] annotationArr, k.n nVar) {
        Type typeA;
        boolean z;
        boolean z2;
        Class<?> clsA = c.a.a(type);
        if (clsA == e.a.b.class) {
            return new g(Void.class, this.f5185a, this.f5186b, false, true, false, false, false, true);
        }
        boolean z3 = clsA == e.a.e.class;
        boolean z4 = clsA == o.class;
        boolean z5 = clsA == e.a.f.class;
        if (clsA != e.a.h.class && !z3 && !z4 && !z5) {
            return null;
        }
        if (!(type instanceof ParameterizedType)) {
            String str = !z3 ? !z4 ? z5 ? "Maybe" : "Observable" : "Single" : "Flowable";
            throw new IllegalStateException(str + " return type must be parameterized as " + str + "<Foo> or " + str + "<? extends Foo>");
        }
        Type typeA2 = c.a.a(0, (ParameterizedType) type);
        Class<?> clsA2 = c.a.a(typeA2);
        if (clsA2 == m.class) {
            if (!(typeA2 instanceof ParameterizedType)) {
                throw new IllegalStateException("Response must be parameterized as Response<Foo> or Response<? extends Foo>");
            }
            typeA = c.a.a(0, (ParameterizedType) typeA2);
            z = false;
        } else {
            if (clsA2 != e.class) {
                typeA = typeA2;
                z = false;
                z2 = true;
                return new g(typeA, this.f5185a, this.f5186b, z, z2, z3, z4, z5, false);
            }
            if (!(typeA2 instanceof ParameterizedType)) {
                throw new IllegalStateException("Result must be parameterized as Result<Foo> or Result<? extends Foo>");
            }
            typeA = c.a.a(0, (ParameterizedType) typeA2);
            z = true;
        }
        z2 = false;
        return new g(typeA, this.f5185a, this.f5186b, z, z2, z3, z4, z5, false);
    }
}
