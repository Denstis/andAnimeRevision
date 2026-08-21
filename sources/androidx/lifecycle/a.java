package androidx.lifecycle;

import androidx.lifecycle.e;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static a f1049c = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Class, C0020a> f1050a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<Class, Boolean> f1051b = new HashMap();

    /* JADX INFO: renamed from: androidx.lifecycle.a$a, reason: collision with other inner class name */
    static class C0020a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Map<e.a, List<b>> f1052a = new HashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Map<b, e.a> f1053b;

        C0020a(Map<b, e.a> map) {
            this.f1053b = map;
            for (Map.Entry<b, e.a> entry : map.entrySet()) {
                e.a value = entry.getValue();
                List<b> arrayList = this.f1052a.get(value);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    this.f1052a.put(value, arrayList);
                }
                arrayList.add(entry.getKey());
            }
        }

        private static void a(List<b> list, g gVar, e.a aVar, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    list.get(size).a(gVar, aVar, obj);
                }
            }
        }

        void a(g gVar, e.a aVar, Object obj) {
            a(this.f1052a.get(aVar), gVar, aVar, obj);
            a(this.f1052a.get(e.a.ON_ANY), gVar, aVar, obj);
        }
    }

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f1054a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Method f1055b;

        b(int i2, Method method) {
            this.f1054a = i2;
            this.f1055b = method;
            this.f1055b.setAccessible(true);
        }

        void a(g gVar, e.a aVar, Object obj) {
            try {
                int i2 = this.f1054a;
                if (i2 == 0) {
                    this.f1055b.invoke(obj, new Object[0]);
                } else if (i2 == 1) {
                    this.f1055b.invoke(obj, gVar);
                } else {
                    if (i2 != 2) {
                        return;
                    }
                    this.f1055b.invoke(obj, gVar, aVar);
                }
            } catch (IllegalAccessException e2) {
                throw new RuntimeException(e2);
            } catch (InvocationTargetException e3) {
                throw new RuntimeException("Failed to call observer method", e3.getCause());
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || b.class != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            return this.f1054a == bVar.f1054a && this.f1055b.getName().equals(bVar.f1055b.getName());
        }

        public int hashCode() {
            return (this.f1054a * 31) + this.f1055b.getName().hashCode();
        }
    }

    a() {
    }

    private C0020a a(Class cls, Method[] methodArr) {
        int i2;
        C0020a c0020aA;
        Class superclass = cls.getSuperclass();
        HashMap map = new HashMap();
        if (superclass != null && (c0020aA = a(superclass)) != null) {
            map.putAll(c0020aA.f1053b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry<b, e.a> entry : a(cls2).f1053b.entrySet()) {
                a(map, entry.getKey(), entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            methodArr = c(cls);
        }
        boolean z = false;
        for (Method method : methodArr) {
            n nVar = (n) method.getAnnotation(n.class);
            if (nVar != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i2 = 0;
                } else {
                    if (!parameterTypes[0].isAssignableFrom(g.class)) {
                        throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                    }
                    i2 = 1;
                }
                e.a aVarValue = nVar.value();
                if (parameterTypes.length > 1) {
                    if (!parameterTypes[1].isAssignableFrom(e.a.class)) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (aVarValue != e.a.ON_ANY) {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    i2 = 2;
                }
                if (parameterTypes.length > 2) {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
                a(map, new b(i2, method), aVarValue, cls);
                z = true;
            }
        }
        C0020a c0020a = new C0020a(map);
        this.f1050a.put(cls, c0020a);
        this.f1051b.put(cls, Boolean.valueOf(z));
        return c0020a;
    }

    private void a(Map<b, e.a> map, b bVar, e.a aVar, Class cls) {
        e.a aVar2 = map.get(bVar);
        if (aVar2 == null || aVar == aVar2) {
            if (aVar2 == null) {
                map.put(bVar, aVar);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Method " + bVar.f1055b.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + aVar2 + ", new value " + aVar);
    }

    private Method[] c(Class cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError e2) {
            throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e2);
        }
    }

    C0020a a(Class cls) {
        C0020a c0020a = this.f1050a.get(cls);
        return c0020a != null ? c0020a : a(cls, null);
    }

    boolean b(Class cls) {
        if (this.f1051b.containsKey(cls)) {
            return this.f1051b.get(cls).booleanValue();
        }
        Method[] methodArrC = c(cls);
        for (Method method : methodArrC) {
            if (((n) method.getAnnotation(n.class)) != null) {
                a(cls, methodArrC);
                return true;
            }
        }
        this.f1051b.put(cls, false);
        return false;
    }
}
