package c.a.a.q;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<C0129a<?>> f3240a = new ArrayList();

    /* JADX INFO: renamed from: c.a.a.q.a$a, reason: collision with other inner class name */
    private static final class C0129a<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Class<T> f3241a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final com.bumptech.glide.load.d<T> f3242b;

        C0129a(Class<T> cls, com.bumptech.glide.load.d<T> dVar) {
            this.f3241a = cls;
            this.f3242b = dVar;
        }

        boolean a(Class<?> cls) {
            return this.f3241a.isAssignableFrom(cls);
        }
    }

    public synchronized <T> com.bumptech.glide.load.d<T> a(Class<T> cls) {
        for (C0129a<?> c0129a : this.f3240a) {
            if (c0129a.a(cls)) {
                return (com.bumptech.glide.load.d<T>) c0129a.f3242b;
            }
        }
        return null;
    }

    public synchronized <T> void a(Class<T> cls, com.bumptech.glide.load.d<T> dVar) {
        this.f3240a.add(new C0129a<>(cls, dVar));
    }
}
