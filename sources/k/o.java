package k;

import h.b0;
import h.c0;
import h.d0;
import h.e;
import h.s;
import h.t;
import h.v;
import h.w;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import k.j;
import k.s.q;
import k.s.r;

/* JADX INFO: loaded from: classes.dex */
final class o<R, T> {
    static final Pattern m = Pattern.compile("\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}");
    static final Pattern n = Pattern.compile("[a-zA-Z][a-zA-Z0-9_-]*");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e.a f5134a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c<R, T> f5135b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final t f5136c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final e<d0, R> f5137d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f5138e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f5139f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final s f5140g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final v f5141h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f5142i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final boolean f5143j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final boolean f5144k;
    private final j<?>[] l;

    static final class a<T, R> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final n f5145a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Method f5146b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final Annotation[] f5147c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final Annotation[][] f5148d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final Type[] f5149e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        Type f5150f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        boolean f5151g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        boolean f5152h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        boolean f5153i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        boolean f5154j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        boolean f5155k;
        boolean l;
        String m;
        boolean n;
        boolean o;
        boolean p;
        String q;
        s r;
        v s;
        Set<String> t;
        j<?>[] u;
        e<d0, T> v;
        c<T, R> w;

        a(n nVar, Method method) {
            this.f5145a = nVar;
            this.f5146b = method;
            this.f5147c = method.getAnnotations();
            this.f5149e = method.getGenericParameterTypes();
            this.f5148d = method.getParameterAnnotations();
        }

        private s a(String[] strArr) {
            s.a aVar = new s.a();
            for (String str : strArr) {
                int iIndexOf = str.indexOf(58);
                if (iIndexOf == -1 || iIndexOf == 0 || iIndexOf == str.length() - 1) {
                    throw a("@Headers value must be in the form \"Name: Value\". Found: \"%s\"", str);
                }
                String strSubstring = str.substring(0, iIndexOf);
                String strTrim = str.substring(iIndexOf + 1).trim();
                if ("Content-Type".equalsIgnoreCase(strSubstring)) {
                    v vVarA = v.a(strTrim);
                    if (vVarA == null) {
                        throw a("Malformed content type: %s", strTrim);
                    }
                    this.s = vVarA;
                } else {
                    aVar.a(strSubstring, strTrim);
                }
            }
            return aVar.a();
        }

        private RuntimeException a(int i2, String str, Object... objArr) {
            return a(str + " (parameter #" + (i2 + 1) + ")", objArr);
        }

        private RuntimeException a(String str, Object... objArr) {
            return a((Throwable) null, str, objArr);
        }

        private RuntimeException a(Throwable th, int i2, String str, Object... objArr) {
            return a(th, str + " (parameter #" + (i2 + 1) + ")", objArr);
        }

        private RuntimeException a(Throwable th, String str, Object... objArr) {
            return new IllegalArgumentException(String.format(str, objArr) + "\n    for method " + this.f5146b.getDeclaringClass().getSimpleName() + "." + this.f5146b.getName(), th);
        }

        private j<?> a(int i2, Type type, Annotation[] annotationArr) {
            j<?> jVar = null;
            for (Annotation annotation : annotationArr) {
                j<?> jVarA = a(i2, type, annotationArr, annotation);
                if (jVarA != null) {
                    if (jVar != null) {
                        throw a(i2, "Multiple Retrofit annotations found, only one allowed.", new Object[0]);
                    }
                    jVar = jVarA;
                }
            }
            if (jVar != null) {
                return jVar;
            }
            throw a(i2, "No Retrofit annotation found.", new Object[0]);
        }

        private j<?> a(int i2, Type type, Annotation[] annotationArr, Annotation annotation) {
            if (annotation instanceof k.s.p) {
                if (this.f5155k) {
                    throw a(i2, "A @Path parameter must not come after a @Query.", new Object[0]);
                }
                if (this.l) {
                    throw a(i2, "@Path parameters may not be used with @Url.", new Object[0]);
                }
                if (this.q == null) {
                    throw a(i2, "@Path can only be used with relative url on @%s", this.m);
                }
                this.f5154j = true;
                k.s.p pVar = (k.s.p) annotation;
                String strValue = pVar.value();
                a(i2, strValue);
                return new j.i(strValue, this.f5145a.c(type, annotationArr), pVar.encoded());
            }
            if (annotation instanceof q) {
                q qVar = (q) annotation;
                String strValue2 = qVar.value();
                boolean zEncoded = qVar.encoded();
                Class<?> clsC = p.c(type);
                this.f5155k = true;
                if (!Iterable.class.isAssignableFrom(clsC)) {
                    return clsC.isArray() ? new j.C0197j(strValue2, this.f5145a.c(o.a(clsC.getComponentType()), annotationArr), zEncoded).a() : new j.C0197j(strValue2, this.f5145a.c(type, annotationArr), zEncoded);
                }
                if (type instanceof ParameterizedType) {
                    return new j.C0197j(strValue2, this.f5145a.c(p.a(0, (ParameterizedType) type), annotationArr), zEncoded).b();
                }
                throw a(i2, clsC.getSimpleName() + " must include generic type (e.g., " + clsC.getSimpleName() + "<String>)", new Object[0]);
            }
            if (annotation instanceof k.s.s) {
                boolean zEncoded2 = ((k.s.s) annotation).encoded();
                Class<?> clsC2 = p.c(type);
                this.f5155k = true;
                if (!Iterable.class.isAssignableFrom(clsC2)) {
                    return clsC2.isArray() ? new j.l(this.f5145a.c(o.a(clsC2.getComponentType()), annotationArr), zEncoded2).a() : new j.l(this.f5145a.c(type, annotationArr), zEncoded2);
                }
                if (type instanceof ParameterizedType) {
                    return new j.l(this.f5145a.c(p.a(0, (ParameterizedType) type), annotationArr), zEncoded2).b();
                }
                throw a(i2, clsC2.getSimpleName() + " must include generic type (e.g., " + clsC2.getSimpleName() + "<String>)", new Object[0]);
            }
            if (annotation instanceof r) {
                Class<?> clsC3 = p.c(type);
                if (!Map.class.isAssignableFrom(clsC3)) {
                    throw a(i2, "@QueryMap parameter type must be Map.", new Object[0]);
                }
                Type typeB = p.b(type, clsC3, Map.class);
                if (!(typeB instanceof ParameterizedType)) {
                    throw a(i2, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType = (ParameterizedType) typeB;
                Type typeA = p.a(0, parameterizedType);
                if (String.class == typeA) {
                    return new j.k(this.f5145a.c(p.a(1, parameterizedType), annotationArr), ((r) annotation).encoded());
                }
                throw a(i2, "@QueryMap keys must be of type String: " + typeA, new Object[0]);
            }
            if (annotation instanceof k.s.h) {
                String strValue3 = ((k.s.h) annotation).value();
                Class<?> clsC4 = p.c(type);
                if (!Iterable.class.isAssignableFrom(clsC4)) {
                    return clsC4.isArray() ? new j.f(strValue3, this.f5145a.c(o.a(clsC4.getComponentType()), annotationArr)).a() : new j.f(strValue3, this.f5145a.c(type, annotationArr));
                }
                if (type instanceof ParameterizedType) {
                    return new j.f(strValue3, this.f5145a.c(p.a(0, (ParameterizedType) type), annotationArr)).b();
                }
                throw a(i2, clsC4.getSimpleName() + " must include generic type (e.g., " + clsC4.getSimpleName() + "<String>)", new Object[0]);
            }
            if (annotation instanceof k.s.c) {
                if (!this.o) {
                    throw a(i2, "@Field parameters can only be used with form encoding.", new Object[0]);
                }
                k.s.c cVar = (k.s.c) annotation;
                String strValue4 = cVar.value();
                boolean zEncoded3 = cVar.encoded();
                this.f5151g = true;
                Class<?> clsC5 = p.c(type);
                if (!Iterable.class.isAssignableFrom(clsC5)) {
                    return clsC5.isArray() ? new j.d(strValue4, this.f5145a.c(o.a(clsC5.getComponentType()), annotationArr), zEncoded3).a() : new j.d(strValue4, this.f5145a.c(type, annotationArr), zEncoded3);
                }
                if (type instanceof ParameterizedType) {
                    return new j.d(strValue4, this.f5145a.c(p.a(0, (ParameterizedType) type), annotationArr), zEncoded3).b();
                }
                throw a(i2, clsC5.getSimpleName() + " must include generic type (e.g., " + clsC5.getSimpleName() + "<String>)", new Object[0]);
            }
            if (annotation instanceof k.s.d) {
                if (!this.o) {
                    throw a(i2, "@FieldMap parameters can only be used with form encoding.", new Object[0]);
                }
                Class<?> clsC6 = p.c(type);
                if (!Map.class.isAssignableFrom(clsC6)) {
                    throw a(i2, "@FieldMap parameter type must be Map.", new Object[0]);
                }
                Type typeB2 = p.b(type, clsC6, Map.class);
                if (!(typeB2 instanceof ParameterizedType)) {
                    throw a(i2, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType2 = (ParameterizedType) typeB2;
                Type typeA2 = p.a(0, parameterizedType2);
                if (String.class == typeA2) {
                    e<T, String> eVarC = this.f5145a.c(p.a(1, parameterizedType2), annotationArr);
                    this.f5151g = true;
                    return new j.e(eVarC, ((k.s.d) annotation).encoded());
                }
                throw a(i2, "@FieldMap keys must be of type String: " + typeA2, new Object[0]);
            }
            if (!(annotation instanceof k.s.n)) {
                if (!(annotation instanceof k.s.o)) {
                    if (!(annotation instanceof k.s.a)) {
                        return null;
                    }
                    if (this.o || this.p) {
                        throw a(i2, "@Body parameters cannot be used with form or multi-part encoding.", new Object[0]);
                    }
                    if (this.f5153i) {
                        throw a(i2, "Multiple @Body method annotations found.", new Object[0]);
                    }
                    try {
                        e<T, b0> eVarA = this.f5145a.a(type, annotationArr, this.f5147c);
                        this.f5153i = true;
                        return new j.c(eVarA);
                    } catch (RuntimeException e2) {
                        throw a(e2, i2, "Unable to create @Body converter for %s", type);
                    }
                }
                if (!this.p) {
                    throw a(i2, "@PartMap parameters can only be used with multipart encoding.", new Object[0]);
                }
                this.f5152h = true;
                Class<?> clsC7 = p.c(type);
                if (!Map.class.isAssignableFrom(clsC7)) {
                    throw a(i2, "@PartMap parameter type must be Map.", new Object[0]);
                }
                Type typeB3 = p.b(type, clsC7, Map.class);
                if (!(typeB3 instanceof ParameterizedType)) {
                    throw a(i2, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType3 = (ParameterizedType) typeB3;
                Type typeA3 = p.a(0, parameterizedType3);
                if (String.class == typeA3) {
                    Type typeA4 = p.a(1, parameterizedType3);
                    if (w.b.class.isAssignableFrom(p.c(typeA4))) {
                        throw a(i2, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead.", new Object[0]);
                    }
                    return new j.h(this.f5145a.a(typeA4, annotationArr, this.f5147c), ((k.s.o) annotation).encoding());
                }
                throw a(i2, "@PartMap keys must be of type String: " + typeA3, new Object[0]);
            }
            if (!this.p) {
                throw a(i2, "@Part parameters can only be used with multipart encoding.", new Object[0]);
            }
            k.s.n nVar = (k.s.n) annotation;
            this.f5152h = true;
            String strValue5 = nVar.value();
            Class<?> clsC8 = p.c(type);
            if (strValue5.isEmpty()) {
                if (!Iterable.class.isAssignableFrom(clsC8)) {
                    if (clsC8.isArray()) {
                        if (w.b.class.isAssignableFrom(clsC8.getComponentType())) {
                            return j.m.f5099a.a();
                        }
                        throw a(i2, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                    }
                    if (w.b.class.isAssignableFrom(clsC8)) {
                        return j.m.f5099a;
                    }
                    throw a(i2, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                }
                if (type instanceof ParameterizedType) {
                    if (w.b.class.isAssignableFrom(p.c(p.a(0, (ParameterizedType) type)))) {
                        return j.m.f5099a.b();
                    }
                    throw a(i2, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                }
                throw a(i2, clsC8.getSimpleName() + " must include generic type (e.g., " + clsC8.getSimpleName() + "<String>)", new Object[0]);
            }
            s sVarA = s.a("Content-Disposition", "form-data; name=\"" + strValue5 + "\"", "Content-Transfer-Encoding", nVar.encoding());
            if (!Iterable.class.isAssignableFrom(clsC8)) {
                if (!clsC8.isArray()) {
                    if (w.b.class.isAssignableFrom(clsC8)) {
                        throw a(i2, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                    }
                    return new j.g(sVarA, this.f5145a.a(type, annotationArr, this.f5147c));
                }
                Class<?> clsA = o.a(clsC8.getComponentType());
                if (w.b.class.isAssignableFrom(clsA)) {
                    throw a(i2, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                }
                return new j.g(sVarA, this.f5145a.a(clsA, annotationArr, this.f5147c)).a();
            }
            if (type instanceof ParameterizedType) {
                Type typeA5 = p.a(0, (ParameterizedType) type);
                if (w.b.class.isAssignableFrom(p.c(typeA5))) {
                    throw a(i2, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                }
                return new j.g(sVarA, this.f5145a.a(typeA5, annotationArr, this.f5147c)).b();
            }
            throw a(i2, clsC8.getSimpleName() + " must include generic type (e.g., " + clsC8.getSimpleName() + "<String>)", new Object[0]);
        }

        private void a(int i2, String str) {
            if (!o.n.matcher(str).matches()) {
                throw a(i2, "@Path parameter name must match %s. Found: %s", o.m.pattern(), str);
            }
            if (!this.t.contains(str)) {
                throw a(i2, "URL \"%s\" does not contain \"{%s}\".", this.q, str);
            }
        }

        private void a(String str, String str2, boolean z) {
            String str3 = this.m;
            if (str3 != null) {
                throw a("Only one HTTP method is allowed. Found: %s and %s.", str3, str);
            }
            this.m = str;
            this.n = z;
            if (str2.isEmpty()) {
                return;
            }
            int iIndexOf = str2.indexOf(63);
            if (iIndexOf != -1 && iIndexOf < str2.length() - 1) {
                String strSubstring = str2.substring(iIndexOf + 1);
                if (o.m.matcher(strSubstring).find()) {
                    throw a("URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query.", strSubstring);
                }
            }
            this.q = str2;
            this.t = o.a(str2);
        }

        private void a(Annotation annotation) {
            String strValue;
            String str;
            String strValue2;
            String str2;
            if (annotation instanceof k.s.b) {
                strValue = ((k.s.b) annotation).value();
                str = "DELETE";
            } else {
                if (!(annotation instanceof k.s.e)) {
                    if (annotation instanceof k.s.f) {
                        a("HEAD", ((k.s.f) annotation).value(), false);
                        if (!Void.class.equals(this.f5150f)) {
                            throw a("HEAD method must use Void as response type.", new Object[0]);
                        }
                        return;
                    }
                    if (annotation instanceof k.s.k) {
                        strValue2 = ((k.s.k) annotation).value();
                        str2 = "PATCH";
                    } else if (annotation instanceof k.s.l) {
                        strValue2 = ((k.s.l) annotation).value();
                        str2 = "POST";
                    } else if (annotation instanceof k.s.m) {
                        strValue2 = ((k.s.m) annotation).value();
                        str2 = "PUT";
                    } else {
                        if (!(annotation instanceof k.s.j)) {
                            if (annotation instanceof k.s.g) {
                                k.s.g gVar = (k.s.g) annotation;
                                a(gVar.method(), gVar.path(), gVar.hasBody());
                                return;
                            } else {
                                if (annotation instanceof k.s.i) {
                                    String[] strArrValue = ((k.s.i) annotation).value();
                                    if (strArrValue.length == 0) {
                                        throw a("@Headers annotation is empty.", new Object[0]);
                                    }
                                    this.r = a(strArrValue);
                                    return;
                                }
                                return;
                            }
                        }
                        strValue = ((k.s.j) annotation).value();
                        str = "OPTIONS";
                    }
                    a(str2, strValue2, true);
                    return;
                }
                strValue = ((k.s.e) annotation).value();
                str = "GET";
            }
            a(str, strValue, false);
        }

        private c<T, R> b() {
            Type genericReturnType = this.f5146b.getGenericReturnType();
            if (p.d(genericReturnType)) {
                throw a("Method return type must not include a type variable or wildcard: %s", genericReturnType);
            }
            if (genericReturnType == Void.TYPE) {
                throw a("Service methods cannot return void.", new Object[0]);
            }
            try {
                return (c<T, R>) this.f5145a.a(genericReturnType, this.f5146b.getAnnotations());
            } catch (RuntimeException e2) {
                throw a(e2, "Unable to create call adapter for %s", genericReturnType);
            }
        }

        private e<d0, T> c() {
            try {
                return this.f5145a.b(this.f5150f, this.f5146b.getAnnotations());
            } catch (RuntimeException e2) {
                throw a(e2, "Unable to create converter for %s", this.f5150f);
            }
        }

        public o a() {
            this.w = b();
            this.f5150f = this.w.a();
            Type type = this.f5150f;
            if (type == m.class || type == c0.class) {
                throw a("'" + p.c(this.f5150f).getName() + "' is not a valid response body type. Did you mean ResponseBody?", new Object[0]);
            }
            this.v = c();
            for (Annotation annotation : this.f5147c) {
                a(annotation);
            }
            if (this.m == null) {
                throw a("HTTP method annotation is required (e.g., @GET, @POST, etc.).", new Object[0]);
            }
            if (!this.n) {
                if (this.p) {
                    throw a("Multipart can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                }
                if (this.o) {
                    throw a("FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                }
            }
            int length = this.f5148d.length;
            this.u = new j[length];
            for (int i2 = 0; i2 < length; i2++) {
                Type type2 = this.f5149e[i2];
                if (p.d(type2)) {
                    throw a(i2, "Parameter type must not include a type variable or wildcard: %s", type2);
                }
                Annotation[] annotationArr = this.f5148d[i2];
                if (annotationArr == null) {
                    throw a(i2, "No Retrofit annotation found.", new Object[0]);
                }
                this.u[i2] = a(i2, type2, annotationArr);
            }
            if (this.q == null && !this.l) {
                throw a("Missing either @%s URL or @Url parameter.", this.m);
            }
            if (!this.o && !this.p && !this.n && this.f5153i) {
                throw a("Non-body HTTP method cannot contain @Body.", new Object[0]);
            }
            if (this.o && !this.f5151g) {
                throw a("Form-encoded method must contain at least one @Field.", new Object[0]);
            }
            if (!this.p || this.f5152h) {
                return new o(this);
            }
            throw a("Multipart method must contain at least one @Part.", new Object[0]);
        }
    }

    o(a<R, T> aVar) {
        this.f5134a = aVar.f5145a.b();
        this.f5135b = aVar.w;
        this.f5136c = aVar.f5145a.a();
        this.f5137d = aVar.v;
        this.f5138e = aVar.m;
        this.f5139f = aVar.q;
        this.f5140g = aVar.r;
        this.f5141h = aVar.s;
        this.f5142i = aVar.n;
        this.f5143j = aVar.o;
        this.f5144k = aVar.p;
        this.l = aVar.u;
    }

    static Class<?> a(Class<?> cls) {
        return Boolean.TYPE == cls ? Boolean.class : Byte.TYPE == cls ? Byte.class : Character.TYPE == cls ? Character.class : Double.TYPE == cls ? Double.class : Float.TYPE == cls ? Float.class : Integer.TYPE == cls ? Integer.class : Long.TYPE == cls ? Long.class : Short.TYPE == cls ? Short.class : cls;
    }

    static Set<String> a(String str) {
        Matcher matcher = m.matcher(str);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        while (matcher.find()) {
            linkedHashSet.add(matcher.group(1));
        }
        return linkedHashSet;
    }

    h.e a(Object... objArr) {
        l lVar = new l(this.f5138e, this.f5136c, this.f5139f, this.f5140g, this.f5141h, this.f5142i, this.f5143j, this.f5144k);
        j<?>[] jVarArr = this.l;
        int length = objArr != null ? objArr.length : 0;
        if (length == jVarArr.length) {
            for (int i2 = 0; i2 < length; i2++) {
                jVarArr[i2].a(lVar, objArr[i2]);
            }
            return this.f5134a.a(lVar.a());
        }
        throw new IllegalArgumentException("Argument count (" + length + ") doesn't match expected count (" + jVarArr.length + ")");
    }

    R a(d0 d0Var) {
        return this.f5137d.convert(d0Var);
    }

    T a(b<R> bVar) {
        return this.f5135b.a(bVar);
    }
}
