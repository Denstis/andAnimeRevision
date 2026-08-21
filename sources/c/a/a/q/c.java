package c.a.a.q;

import com.bumptech.glide.load.n.i;
import com.bumptech.glide.load.n.t;
import com.bumptech.glide.load.p.h.g;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final t<?, ?, ?> f3244c = new t<>(Object.class, Object.class, Object.class, Collections.singletonList(new i(Object.class, Object.class, Object.class, Collections.emptyList(), new g(), null)), null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b.e.a<c.a.a.t.i, t<?, ?, ?>> f3245a = new b.e.a<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicReference<c.a.a.t.i> f3246b = new AtomicReference<>();

    private c.a.a.t.i b(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        c.a.a.t.i andSet = this.f3246b.getAndSet(null);
        if (andSet == null) {
            andSet = new c.a.a.t.i();
        }
        andSet.a(cls, cls2, cls3);
        return andSet;
    }

    public <Data, TResource, Transcode> t<Data, TResource, Transcode> a(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        t<Data, TResource, Transcode> tVar;
        c.a.a.t.i iVarB = b(cls, cls2, cls3);
        synchronized (this.f3245a) {
            tVar = (t) this.f3245a.get(iVarB);
        }
        this.f3246b.set(iVarB);
        return tVar;
    }

    public void a(Class<?> cls, Class<?> cls2, Class<?> cls3, t<?, ?, ?> tVar) {
        synchronized (this.f3245a) {
            b.e.a<c.a.a.t.i, t<?, ?, ?>> aVar = this.f3245a;
            c.a.a.t.i iVar = new c.a.a.t.i(cls, cls2, cls3);
            if (tVar == null) {
                tVar = f3244c;
            }
            aVar.put(iVar, tVar);
        }
    }

    public boolean a(t<?, ?, ?> tVar) {
        return f3244c.equals(tVar);
    }
}
