package c.a.a.q;

import c.a.a.t.i;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicReference<i> f3247a = new AtomicReference<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b.e.a<i, List<Class<?>>> f3248b = new b.e.a<>();

    public List<Class<?>> a(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        List<Class<?>> list;
        i andSet = this.f3247a.getAndSet(null);
        if (andSet == null) {
            andSet = new i(cls, cls2, cls3);
        } else {
            andSet.a(cls, cls2, cls3);
        }
        synchronized (this.f3248b) {
            list = this.f3248b.get(andSet);
        }
        this.f3247a.set(andSet);
        return list;
    }

    public void a(Class<?> cls, Class<?> cls2, Class<?> cls3, List<Class<?>> list) {
        synchronized (this.f3248b) {
            this.f3248b.put(new i(cls, cls2, cls3), list);
        }
    }
}
