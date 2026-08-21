package com.bumptech.glide.load.n.a0;

import com.bumptech.glide.load.n.a0.m;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class h<K extends m, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a<K, V> f3444a = new a<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<K, a<K, V>> f3445b = new HashMap();

    private static class a<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final K f3446a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private List<V> f3447b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        a<K, V> f3448c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        a<K, V> f3449d;

        a() {
            this(null);
        }

        a(K k2) {
            this.f3449d = this;
            this.f3448c = this;
            this.f3446a = k2;
        }

        public V a() {
            int iB = b();
            if (iB > 0) {
                return this.f3447b.remove(iB - 1);
            }
            return null;
        }

        public void a(V v) {
            if (this.f3447b == null) {
                this.f3447b = new ArrayList();
            }
            this.f3447b.add(v);
        }

        public int b() {
            List<V> list = this.f3447b;
            if (list != null) {
                return list.size();
            }
            return 0;
        }
    }

    h() {
    }

    private void a(a<K, V> aVar) {
        c(aVar);
        a<K, V> aVar2 = this.f3444a;
        aVar.f3449d = aVar2;
        aVar.f3448c = aVar2.f3448c;
        d(aVar);
    }

    private void b(a<K, V> aVar) {
        c(aVar);
        a<K, V> aVar2 = this.f3444a;
        aVar.f3449d = aVar2.f3449d;
        aVar.f3448c = aVar2;
        d(aVar);
    }

    private static <K, V> void c(a<K, V> aVar) {
        a<K, V> aVar2 = aVar.f3449d;
        aVar2.f3448c = aVar.f3448c;
        aVar.f3448c.f3449d = aVar2;
    }

    private static <K, V> void d(a<K, V> aVar) {
        aVar.f3448c.f3449d = aVar;
        aVar.f3449d.f3448c = aVar;
    }

    public V a() {
        a aVar = this.f3444a;
        while (true) {
            aVar = aVar.f3449d;
            if (aVar.equals(this.f3444a)) {
                return null;
            }
            V v = (V) aVar.a();
            if (v != null) {
                return v;
            }
            c(aVar);
            this.f3445b.remove(aVar.f3446a);
            ((m) aVar.f3446a).a();
        }
    }

    public V a(K k2) {
        a<K, V> aVar = this.f3445b.get(k2);
        if (aVar == null) {
            aVar = new a<>(k2);
            this.f3445b.put(k2, aVar);
        } else {
            k2.a();
        }
        a(aVar);
        return aVar.a();
    }

    public void a(K k2, V v) {
        a<K, V> aVar = this.f3445b.get(k2);
        if (aVar == null) {
            aVar = new a<>(k2);
            b(aVar);
            this.f3445b.put(k2, aVar);
        } else {
            k2.a();
        }
        aVar.a(v);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
        boolean z = false;
        for (a aVar = this.f3444a.f3448c; !aVar.equals(this.f3444a); aVar = aVar.f3448c) {
            z = true;
            sb.append('{');
            sb.append(aVar.f3446a);
            sb.append(':');
            sb.append(aVar.b());
            sb.append("}, ");
        }
        if (z) {
            sb.delete(sb.length() - 2, sb.length());
        }
        sb.append(" )");
        return sb.toString();
    }
}
