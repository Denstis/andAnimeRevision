package com.bumptech.glide.load.m;

import com.bumptech.glide.load.m.e;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final e.a<?> f3392b = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Class<?>, e.a<?>> f3393a = new HashMap();

    class a implements e.a<Object> {
        a() {
        }

        @Override // com.bumptech.glide.load.m.e.a
        public e<Object> a(Object obj) {
            return new b(obj);
        }

        @Override // com.bumptech.glide.load.m.e.a
        public Class<Object> a() {
            throw new UnsupportedOperationException("Not implemented");
        }
    }

    private static final class b implements e<Object> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f3394a;

        b(Object obj) {
            this.f3394a = obj;
        }

        @Override // com.bumptech.glide.load.m.e
        public Object a() {
            return this.f3394a;
        }

        @Override // com.bumptech.glide.load.m.e
        public void b() {
        }
    }

    public synchronized <T> e<T> a(T t) {
        e.a<?> aVar;
        c.a.a.t.j.a(t);
        aVar = this.f3393a.get(t.getClass());
        if (aVar == null) {
            Iterator<e.a<?>> it = this.f3393a.values().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                e.a<?> next = it.next();
                if (next.a().isAssignableFrom(t.getClass())) {
                    aVar = next;
                    break;
                }
            }
        }
        if (aVar == null) {
            aVar = f3392b;
        }
        return (e<T>) aVar.a(t);
    }

    public synchronized void a(e.a<?> aVar) {
        this.f3393a.put(aVar.a(), aVar);
    }
}
