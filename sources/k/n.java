package k;

import h.b0;
import h.d0;
import h.e;
import h.t;
import h.x;
import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import k.a;
import k.c;
import k.e;
import k.o;

/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Method, o<?, ?>> f5118a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final e.a f5119b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final t f5120c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final List<e.a> f5121d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final List<c.a> f5122e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final boolean f5123f;

    class a implements InvocationHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final k f5124a = k.c();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Class f5125b;

        a(Class cls) {
            this.f5125b = cls;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            if (method.getDeclaringClass() == Object.class) {
                return method.invoke(this, objArr);
            }
            if (this.f5124a.a(method)) {
                return this.f5124a.a(method, this.f5125b, obj, objArr);
            }
            o<?, ?> oVarA = n.this.a(method);
            return oVarA.a(new i(oVarA, objArr));
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final k f5127a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private e.a f5128b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private t f5129c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final List<e.a> f5130d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final List<c.a> f5131e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Executor f5132f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f5133g;

        public b() {
            this(k.c());
        }

        b(k kVar) {
            this.f5130d = new ArrayList();
            this.f5131e = new ArrayList();
            this.f5127a = kVar;
        }

        public b a(e.a aVar) {
            p.a(aVar, "factory == null");
            this.f5128b = aVar;
            return this;
        }

        public b a(t tVar) {
            p.a(tVar, "baseUrl == null");
            if ("".equals(tVar.j().get(r0.size() - 1))) {
                this.f5129c = tVar;
                return this;
            }
            throw new IllegalArgumentException("baseUrl must end in /: " + tVar);
        }

        public b a(x xVar) {
            p.a(xVar, "client == null");
            a((e.a) xVar);
            return this;
        }

        public b a(String str) {
            p.a(str, "baseUrl == null");
            t tVarD = t.d(str);
            if (tVarD != null) {
                a(tVarD);
                return this;
            }
            throw new IllegalArgumentException("Illegal URL: " + str);
        }

        public b a(c.a aVar) {
            List<c.a> list = this.f5131e;
            p.a(aVar, "factory == null");
            list.add(aVar);
            return this;
        }

        public b a(e.a aVar) {
            List<e.a> list = this.f5130d;
            p.a(aVar, "factory == null");
            list.add(aVar);
            return this;
        }

        public n a() {
            if (this.f5129c == null) {
                throw new IllegalStateException("Base URL required.");
            }
            e.a xVar = this.f5128b;
            if (xVar == null) {
                xVar = new x();
            }
            e.a aVar = xVar;
            Executor executorA = this.f5132f;
            if (executorA == null) {
                executorA = this.f5127a.a();
            }
            Executor executor = executorA;
            ArrayList arrayList = new ArrayList(this.f5131e);
            arrayList.add(this.f5127a.a(executor));
            ArrayList arrayList2 = new ArrayList(this.f5130d.size() + 1);
            arrayList2.add(new k.a());
            arrayList2.addAll(this.f5130d);
            return new n(aVar, this.f5129c, Collections.unmodifiableList(arrayList2), Collections.unmodifiableList(arrayList), executor, this.f5133g);
        }
    }

    n(e.a aVar, t tVar, List<e.a> list, List<c.a> list2, Executor executor, boolean z) {
        this.f5119b = aVar;
        this.f5120c = tVar;
        this.f5121d = list;
        this.f5122e = list2;
        this.f5123f = z;
    }

    private void b(Class<?> cls) {
        k kVarC = k.c();
        for (Method method : cls.getDeclaredMethods()) {
            if (!kVarC.a(method)) {
                a(method);
            }
        }
    }

    public t a() {
        return this.f5120c;
    }

    public <T> T a(Class<T> cls) {
        p.a((Class) cls);
        if (this.f5123f) {
            b(cls);
        }
        return (T) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new a(cls));
    }

    public c<?, ?> a(Type type, Annotation[] annotationArr) {
        return a((c.a) null, type, annotationArr);
    }

    public c<?, ?> a(c.a aVar, Type type, Annotation[] annotationArr) {
        p.a(type, "returnType == null");
        p.a(annotationArr, "annotations == null");
        int iIndexOf = this.f5122e.indexOf(aVar) + 1;
        int size = this.f5122e.size();
        for (int i2 = iIndexOf; i2 < size; i2++) {
            c<?, ?> cVarA = this.f5122e.get(i2).a(type, annotationArr, this);
            if (cVarA != null) {
                return cVarA;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate call adapter for ");
        sb.append(type);
        sb.append(".\n");
        if (aVar != null) {
            sb.append("  Skipped:");
            for (int i3 = 0; i3 < iIndexOf; i3++) {
                sb.append("\n   * ");
                sb.append(this.f5122e.get(i3).getClass().getName());
            }
            sb.append('\n');
        }
        sb.append("  Tried:");
        int size2 = this.f5122e.size();
        while (iIndexOf < size2) {
            sb.append("\n   * ");
            sb.append(this.f5122e.get(iIndexOf).getClass().getName());
            iIndexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public <T> e<T, b0> a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        return a(null, type, annotationArr, annotationArr2);
    }

    public <T> e<d0, T> a(e.a aVar, Type type, Annotation[] annotationArr) {
        p.a(type, "type == null");
        p.a(annotationArr, "annotations == null");
        int iIndexOf = this.f5121d.indexOf(aVar) + 1;
        int size = this.f5121d.size();
        for (int i2 = iIndexOf; i2 < size; i2++) {
            e<d0, T> eVar = (e<d0, T>) this.f5121d.get(i2).a(type, annotationArr, this);
            if (eVar != null) {
                return eVar;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate ResponseBody converter for ");
        sb.append(type);
        sb.append(".\n");
        if (aVar != null) {
            sb.append("  Skipped:");
            for (int i3 = 0; i3 < iIndexOf; i3++) {
                sb.append("\n   * ");
                sb.append(this.f5121d.get(i3).getClass().getName());
            }
            sb.append('\n');
        }
        sb.append("  Tried:");
        int size2 = this.f5121d.size();
        while (iIndexOf < size2) {
            sb.append("\n   * ");
            sb.append(this.f5121d.get(iIndexOf).getClass().getName());
            iIndexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public <T> e<T, b0> a(e.a aVar, Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        p.a(type, "type == null");
        p.a(annotationArr, "parameterAnnotations == null");
        p.a(annotationArr2, "methodAnnotations == null");
        int iIndexOf = this.f5121d.indexOf(aVar) + 1;
        int size = this.f5121d.size();
        for (int i2 = iIndexOf; i2 < size; i2++) {
            e<T, b0> eVar = (e<T, b0>) this.f5121d.get(i2).a(type, annotationArr, annotationArr2, this);
            if (eVar != null) {
                return eVar;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate RequestBody converter for ");
        sb.append(type);
        sb.append(".\n");
        if (aVar != null) {
            sb.append("  Skipped:");
            for (int i3 = 0; i3 < iIndexOf; i3++) {
                sb.append("\n   * ");
                sb.append(this.f5121d.get(i3).getClass().getName());
            }
            sb.append('\n');
        }
        sb.append("  Tried:");
        int size2 = this.f5121d.size();
        while (iIndexOf < size2) {
            sb.append("\n   * ");
            sb.append(this.f5121d.get(iIndexOf).getClass().getName());
            iIndexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    o<?, ?> a(Method method) {
        o oVarA;
        o<?, ?> oVar = this.f5118a.get(method);
        if (oVar != null) {
            return oVar;
        }
        synchronized (this.f5118a) {
            oVarA = this.f5118a.get(method);
            if (oVarA == null) {
                oVarA = new o.a(this, method).a();
                this.f5118a.put(method, oVarA);
            }
        }
        return oVarA;
    }

    public e.a b() {
        return this.f5119b;
    }

    public <T> e<d0, T> b(Type type, Annotation[] annotationArr) {
        return a((e.a) null, type, annotationArr);
    }

    public <T> e<T, String> c(Type type, Annotation[] annotationArr) {
        p.a(type, "type == null");
        p.a(annotationArr, "annotations == null");
        int size = this.f5121d.size();
        for (int i2 = 0; i2 < size; i2++) {
            e<T, String> eVar = (e<T, String>) this.f5121d.get(i2).b(type, annotationArr, this);
            if (eVar != null) {
                return eVar;
            }
        }
        return a.d.f5046a;
    }
}
