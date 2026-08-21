package com.bumptech.glide.load.n.a0;

import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
public final class j implements com.bumptech.glide.load.n.a0.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h<a, Object> f3450a = new h<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f3451b = new b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<Class<?>, NavigableMap<Integer, Integer>> f3452c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<Class<?>, com.bumptech.glide.load.n.a0.a<?>> f3453d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f3454e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f3455f;

    private static final class a implements m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final b f3456a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f3457b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Class<?> f3458c;

        a(b bVar) {
            this.f3456a = bVar;
        }

        @Override // com.bumptech.glide.load.n.a0.m
        public void a() {
            this.f3456a.a(this);
        }

        void a(int i2, Class<?> cls) {
            this.f3457b = i2;
            this.f3458c = cls;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f3457b == aVar.f3457b && this.f3458c == aVar.f3458c;
        }

        public int hashCode() {
            int i2 = this.f3457b * 31;
            Class<?> cls = this.f3458c;
            return i2 + (cls != null ? cls.hashCode() : 0);
        }

        public String toString() {
            return "Key{size=" + this.f3457b + "array=" + this.f3458c + '}';
        }
    }

    private static final class b extends d<a> {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.bumptech.glide.load.n.a0.d
        public a a() {
            return new a(this);
        }

        a a(int i2, Class<?> cls) {
            a aVarB = b();
            aVarB.a(i2, cls);
            return aVarB;
        }
    }

    public j(int i2) {
        this.f3454e = i2;
    }

    private <T> com.bumptech.glide.load.n.a0.a<T> a(Class<T> cls) {
        com.bumptech.glide.load.n.a0.a<T> gVar = (com.bumptech.glide.load.n.a0.a) this.f3453d.get(cls);
        if (gVar == null) {
            if (cls.equals(int[].class)) {
                gVar = new i();
            } else {
                if (!cls.equals(byte[].class)) {
                    throw new IllegalArgumentException("No array pool found for: " + cls.getSimpleName());
                }
                gVar = new g();
            }
            this.f3453d.put(cls, gVar);
        }
        return gVar;
    }

    private <T> T a(a aVar) {
        return (T) this.f3450a.a(aVar);
    }

    private <T> T a(a aVar, Class<T> cls) {
        com.bumptech.glide.load.n.a0.a<T> aVarA = a((Class) cls);
        T t = (T) a(aVar);
        if (t != null) {
            this.f3455f -= aVarA.a(t) * aVarA.a();
            c(aVarA.a(t), cls);
        }
        if (t != null) {
            return t;
        }
        if (Log.isLoggable(aVarA.getTag(), 2)) {
            Log.v(aVarA.getTag(), "Allocated " + aVar.f3457b + " bytes");
        }
        return aVarA.newArray(aVar.f3457b);
    }

    private boolean a(int i2, Integer num) {
        return num != null && (c() || num.intValue() <= i2 * 8);
    }

    private <T> com.bumptech.glide.load.n.a0.a<T> b(T t) {
        return a((Class) t.getClass());
    }

    private NavigableMap<Integer, Integer> b(Class<?> cls) {
        NavigableMap<Integer, Integer> navigableMap = this.f3452c.get(cls);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        this.f3452c.put(cls, treeMap);
        return treeMap;
    }

    private void b() {
        b(this.f3454e);
    }

    private void b(int i2) {
        while (this.f3455f > i2) {
            Object objA = this.f3450a.a();
            c.a.a.t.j.a(objA);
            com.bumptech.glide.load.n.a0.a aVarB = b(objA);
            this.f3455f -= aVarB.a(objA) * aVarB.a();
            c(aVarB.a(objA), objA.getClass());
            if (Log.isLoggable(aVarB.getTag(), 2)) {
                Log.v(aVarB.getTag(), "evicted: " + aVarB.a(objA));
            }
        }
    }

    private void c(int i2, Class<?> cls) {
        NavigableMap<Integer, Integer> navigableMapB = b(cls);
        Integer num = (Integer) navigableMapB.get(Integer.valueOf(i2));
        if (num == null) {
            throw new NullPointerException("Tried to decrement empty size, size: " + i2 + ", this: " + this);
        }
        int iIntValue = num.intValue();
        Integer numValueOf = Integer.valueOf(i2);
        if (iIntValue == 1) {
            navigableMapB.remove(numValueOf);
        } else {
            navigableMapB.put(numValueOf, Integer.valueOf(num.intValue() - 1));
        }
    }

    private boolean c() {
        int i2 = this.f3455f;
        return i2 == 0 || this.f3454e / i2 >= 2;
    }

    private boolean c(int i2) {
        return i2 <= this.f3454e / 2;
    }

    @Override // com.bumptech.glide.load.n.a0.b
    public synchronized <T> T a(int i2, Class<T> cls) {
        return (T) a(this.f3451b.a(i2, cls), cls);
    }

    @Override // com.bumptech.glide.load.n.a0.b
    public synchronized void a() {
        b(0);
    }

    @Override // com.bumptech.glide.load.n.a0.b
    public synchronized void a(int i2) {
        try {
            if (i2 >= 40) {
                a();
            } else if (i2 >= 20 || i2 == 15) {
                b(this.f3454e / 2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.bumptech.glide.load.n.a0.b
    public synchronized <T> void a(T t) {
        Class<?> cls = t.getClass();
        com.bumptech.glide.load.n.a0.a<T> aVarA = a((Class) cls);
        int iA = aVarA.a(t);
        int iA2 = aVarA.a() * iA;
        if (c(iA2)) {
            a aVarA2 = this.f3451b.a(iA, cls);
            this.f3450a.a(aVarA2, t);
            NavigableMap<Integer, Integer> navigableMapB = b(cls);
            Integer num = (Integer) navigableMapB.get(Integer.valueOf(aVarA2.f3457b));
            Integer numValueOf = Integer.valueOf(aVarA2.f3457b);
            int iIntValue = 1;
            if (num != null) {
                iIntValue = 1 + num.intValue();
            }
            navigableMapB.put(numValueOf, Integer.valueOf(iIntValue));
            this.f3455f += iA2;
            b();
        }
    }

    @Override // com.bumptech.glide.load.n.a0.b
    public synchronized <T> T b(int i2, Class<T> cls) {
        Integer numCeilingKey;
        numCeilingKey = b((Class<?>) cls).ceilingKey(Integer.valueOf(i2));
        return (T) a(a(i2, numCeilingKey) ? this.f3451b.a(numCeilingKey.intValue(), cls) : this.f3451b.a(i2, cls), cls);
    }
}
