package c.a.a.q;

import com.bumptech.glide.load.k;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<a<?>> f3254a = new ArrayList();

    private static final class a<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Class<T> f3255a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final k<T> f3256b;

        a(Class<T> cls, k<T> kVar) {
            this.f3255a = cls;
            this.f3256b = kVar;
        }

        boolean a(Class<?> cls) {
            return this.f3255a.isAssignableFrom(cls);
        }
    }

    public synchronized <Z> k<Z> a(Class<Z> cls) {
        int size = this.f3254a.size();
        for (int i2 = 0; i2 < size; i2++) {
            a<?> aVar = this.f3254a.get(i2);
            if (aVar.a(cls)) {
                return (k<Z>) aVar.f3256b;
            }
        }
        return null;
    }

    public synchronized <Z> void a(Class<Z> cls, k<Z> kVar) {
        this.f3254a.add(new a<>(cls, kVar));
    }
}
