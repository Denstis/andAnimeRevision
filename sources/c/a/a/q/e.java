package c.a.a.q;

import com.bumptech.glide.load.j;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<String> f3249a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<String, List<a<?, ?>>> f3250b = new HashMap();

    private static class a<T, R> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Class<T> f3251a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Class<R> f3252b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final j<T, R> f3253c;

        public a(Class<T> cls, Class<R> cls2, j<T, R> jVar) {
            this.f3251a = cls;
            this.f3252b = cls2;
            this.f3253c = jVar;
        }

        public boolean a(Class<?> cls, Class<?> cls2) {
            return this.f3251a.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f3252b);
        }
    }

    private synchronized List<a<?, ?>> a(String str) {
        List<a<?, ?>> arrayList;
        if (!this.f3249a.contains(str)) {
            this.f3249a.add(str);
        }
        arrayList = this.f3250b.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.f3250b.put(str, arrayList);
        }
        return arrayList;
    }

    public synchronized <T, R> List<j<T, R>> a(Class<T> cls, Class<R> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator<String> it = this.f3249a.iterator();
        while (it.hasNext()) {
            List<a<?, ?>> list = this.f3250b.get(it.next());
            if (list != null) {
                for (a<?, ?> aVar : list) {
                    if (aVar.a(cls, cls2)) {
                        arrayList.add(aVar.f3253c);
                    }
                }
            }
        }
        return arrayList;
    }

    public synchronized <T, R> void a(String str, j<T, R> jVar, Class<T> cls, Class<R> cls2) {
        a(str).add(new a<>(cls, cls2, jVar));
    }

    public synchronized void a(List<String> list) {
        ArrayList<String> arrayList = new ArrayList(this.f3249a);
        this.f3249a.clear();
        this.f3249a.addAll(list);
        for (String str : arrayList) {
            if (!list.contains(str)) {
                this.f3249a.add(str);
            }
        }
    }

    public synchronized <T, R> List<Class<R>> b(Class<T> cls, Class<R> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator<String> it = this.f3249a.iterator();
        while (it.hasNext()) {
            List<a<?, ?>> list = this.f3250b.get(it.next());
            if (list != null) {
                for (a<?, ?> aVar : list) {
                    if (aVar.a(cls, cls2) && !arrayList.contains(aVar.f3252b)) {
                        arrayList.add(aVar.f3252b);
                    }
                }
            }
        }
        return arrayList;
    }
}
