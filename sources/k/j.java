package k;

import h.b0;
import h.s;
import h.w;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
abstract class j<T> {

    class a extends j<Iterable<T>> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // k.j
        public void a(k.l lVar, Iterable<T> iterable) {
            if (iterable == null) {
                return;
            }
            Iterator<T> it = iterable.iterator();
            while (it.hasNext()) {
                j.this.a(lVar, it.next());
            }
        }
    }

    class b extends j<Object> {
        b() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // k.j
        void a(k.l lVar, Object obj) {
            if (obj == null) {
                return;
            }
            int length = Array.getLength(obj);
            for (int i2 = 0; i2 < length; i2++) {
                j.this.a(lVar, Array.get(obj, i2));
            }
        }
    }

    static final class c<T> extends j<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final k.e<T, b0> f5077a;

        c(k.e<T, b0> eVar) {
            this.f5077a = eVar;
        }

        @Override // k.j
        void a(k.l lVar, T t) {
            if (t == null) {
                throw new IllegalArgumentException("Body parameter value must not be null.");
            }
            try {
                lVar.a(this.f5077a.convert(t));
            } catch (IOException e2) {
                throw new RuntimeException("Unable to convert " + t + " to RequestBody", e2);
            }
        }
    }

    static final class d<T> extends j<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f5078a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final k.e<T, String> f5079b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f5080c;

        d(String str, k.e<T, String> eVar, boolean z) {
            p.a(str, "name == null");
            this.f5078a = str;
            this.f5079b = eVar;
            this.f5080c = z;
        }

        @Override // k.j
        void a(k.l lVar, T t) {
            String strConvert;
            if (t == null || (strConvert = this.f5079b.convert(t)) == null) {
                return;
            }
            lVar.a(this.f5078a, strConvert, this.f5080c);
        }
    }

    static final class e<T> extends j<Map<String, T>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final k.e<T, String> f5081a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f5082b;

        e(k.e<T, String> eVar, boolean z) {
            this.f5081a = eVar;
            this.f5082b = z;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // k.j
        public void a(k.l lVar, Map<String, T> map) {
            if (map == null) {
                throw new IllegalArgumentException("Field map was null.");
            }
            for (Map.Entry<String, T> entry : map.entrySet()) {
                String key = entry.getKey();
                if (key == null) {
                    throw new IllegalArgumentException("Field map contained null key.");
                }
                T value = entry.getValue();
                if (value == null) {
                    throw new IllegalArgumentException("Field map contained null value for key '" + key + "'.");
                }
                String strConvert = this.f5081a.convert(value);
                if (strConvert == null) {
                    throw new IllegalArgumentException("Field map value '" + value + "' converted to null by " + this.f5081a.getClass().getName() + " for key '" + key + "'.");
                }
                lVar.a(key, strConvert, this.f5082b);
            }
        }
    }

    static final class f<T> extends j<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f5083a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final k.e<T, String> f5084b;

        f(String str, k.e<T, String> eVar) {
            p.a(str, "name == null");
            this.f5083a = str;
            this.f5084b = eVar;
        }

        @Override // k.j
        void a(k.l lVar, T t) {
            String strConvert;
            if (t == null || (strConvert = this.f5084b.convert(t)) == null) {
                return;
            }
            lVar.a(this.f5083a, strConvert);
        }
    }

    static final class g<T> extends j<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final s f5085a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final k.e<T, b0> f5086b;

        g(s sVar, k.e<T, b0> eVar) {
            this.f5085a = sVar;
            this.f5086b = eVar;
        }

        @Override // k.j
        void a(k.l lVar, T t) {
            if (t == null) {
                return;
            }
            try {
                lVar.a(this.f5085a, this.f5086b.convert(t));
            } catch (IOException e2) {
                throw new RuntimeException("Unable to convert " + t + " to RequestBody", e2);
            }
        }
    }

    static final class h<T> extends j<Map<String, T>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final k.e<T, b0> f5087a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f5088b;

        h(k.e<T, b0> eVar, String str) {
            this.f5087a = eVar;
            this.f5088b = str;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // k.j
        public void a(k.l lVar, Map<String, T> map) {
            if (map == null) {
                throw new IllegalArgumentException("Part map was null.");
            }
            for (Map.Entry<String, T> entry : map.entrySet()) {
                String key = entry.getKey();
                if (key == null) {
                    throw new IllegalArgumentException("Part map contained null key.");
                }
                T value = entry.getValue();
                if (value == null) {
                    throw new IllegalArgumentException("Part map contained null value for key '" + key + "'.");
                }
                lVar.a(s.a("Content-Disposition", "form-data; name=\"" + key + "\"", "Content-Transfer-Encoding", this.f5088b), this.f5087a.convert(value));
            }
        }
    }

    static final class i<T> extends j<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f5089a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final k.e<T, String> f5090b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f5091c;

        i(String str, k.e<T, String> eVar, boolean z) {
            p.a(str, "name == null");
            this.f5089a = str;
            this.f5090b = eVar;
            this.f5091c = z;
        }

        @Override // k.j
        void a(k.l lVar, T t) {
            if (t != null) {
                lVar.b(this.f5089a, this.f5090b.convert(t), this.f5091c);
                return;
            }
            throw new IllegalArgumentException("Path parameter \"" + this.f5089a + "\" value must not be null.");
        }
    }

    /* JADX INFO: renamed from: k.j$j, reason: collision with other inner class name */
    static final class C0197j<T> extends j<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f5092a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final k.e<T, String> f5093b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f5094c;

        C0197j(String str, k.e<T, String> eVar, boolean z) {
            p.a(str, "name == null");
            this.f5092a = str;
            this.f5093b = eVar;
            this.f5094c = z;
        }

        @Override // k.j
        void a(k.l lVar, T t) {
            String strConvert;
            if (t == null || (strConvert = this.f5093b.convert(t)) == null) {
                return;
            }
            lVar.c(this.f5092a, strConvert, this.f5094c);
        }
    }

    static final class k<T> extends j<Map<String, T>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final k.e<T, String> f5095a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f5096b;

        k(k.e<T, String> eVar, boolean z) {
            this.f5095a = eVar;
            this.f5096b = z;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // k.j
        public void a(k.l lVar, Map<String, T> map) {
            if (map == null) {
                throw new IllegalArgumentException("Query map was null.");
            }
            for (Map.Entry<String, T> entry : map.entrySet()) {
                String key = entry.getKey();
                if (key == null) {
                    throw new IllegalArgumentException("Query map contained null key.");
                }
                T value = entry.getValue();
                if (value == null) {
                    throw new IllegalArgumentException("Query map contained null value for key '" + key + "'.");
                }
                String strConvert = this.f5095a.convert(value);
                if (strConvert == null) {
                    throw new IllegalArgumentException("Query map value '" + value + "' converted to null by " + this.f5095a.getClass().getName() + " for key '" + key + "'.");
                }
                lVar.c(key, strConvert, this.f5096b);
            }
        }
    }

    static final class l<T> extends j<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final k.e<T, String> f5097a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f5098b;

        l(k.e<T, String> eVar, boolean z) {
            this.f5097a = eVar;
            this.f5098b = z;
        }

        @Override // k.j
        void a(k.l lVar, T t) {
            if (t == null) {
                return;
            }
            lVar.c(this.f5097a.convert(t), null, this.f5098b);
        }
    }

    static final class m extends j<w.b> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final m f5099a = new m();

        private m() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // k.j
        public void a(k.l lVar, w.b bVar) {
            if (bVar != null) {
                lVar.a(bVar);
            }
        }
    }

    j() {
    }

    final j<Object> a() {
        return new b();
    }

    abstract void a(k.l lVar, T t);

    final j<Iterable<T>> b() {
        return new a();
    }
}
