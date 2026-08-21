package k;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.concurrent.Executor;
import k.c;

/* JADX INFO: loaded from: classes.dex */
final class g extends c.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Executor f5050a;

    class a implements c<Object, k.b<?>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Type f5051a;

        a(Type type) {
            this.f5051a = type;
        }

        @Override // k.c
        public Type a() {
            return this.f5051a;
        }

        @Override // k.c
        public k.b<?> a(k.b<Object> bVar) {
            return new b(g.this.f5050a, bVar);
        }
    }

    static final class b<T> implements k.b<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Executor f5053b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final k.b<T> f5054c;

        class a implements d<T> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ d f5055b;

            /* JADX INFO: renamed from: k.g$b$a$a, reason: collision with other inner class name */
            class RunnableC0195a implements Runnable {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ m f5057b;

                RunnableC0195a(m mVar) {
                    this.f5057b = mVar;
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (b.this.f5054c.j()) {
                        a aVar = a.this;
                        aVar.f5055b.a(b.this, new IOException("Canceled"));
                    } else {
                        a aVar2 = a.this;
                        aVar2.f5055b.a(b.this, this.f5057b);
                    }
                }
            }

            /* JADX INFO: renamed from: k.g$b$a$b, reason: collision with other inner class name */
            class RunnableC0196b implements Runnable {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ Throwable f5059b;

                RunnableC0196b(Throwable th) {
                    this.f5059b = th;
                }

                @Override // java.lang.Runnable
                public void run() {
                    a aVar = a.this;
                    aVar.f5055b.a(b.this, this.f5059b);
                }
            }

            a(d dVar) {
                this.f5055b = dVar;
            }

            @Override // k.d
            public void a(k.b<T> bVar, Throwable th) {
                b.this.f5053b.execute(new RunnableC0196b(th));
            }

            @Override // k.d
            public void a(k.b<T> bVar, m<T> mVar) {
                b.this.f5053b.execute(new RunnableC0195a(mVar));
            }
        }

        b(Executor executor, k.b<T> bVar) {
            this.f5053b = executor;
            this.f5054c = bVar;
        }

        @Override // k.b
        public void a(d<T> dVar) {
            p.a(dVar, "callback == null");
            this.f5054c.a(new a(dVar));
        }

        @Override // k.b
        public void cancel() {
            this.f5054c.cancel();
        }

        @Override // k.b
        public k.b<T> clone() {
            return new b(this.f5053b, this.f5054c.clone());
        }

        @Override // k.b
        public boolean j() {
            return this.f5054c.j();
        }

        @Override // k.b
        public m<T> k() {
            return this.f5054c.k();
        }
    }

    g(Executor executor) {
        this.f5050a = executor;
    }

    @Override // k.c.a
    public c<?, ?> a(Type type, Annotation[] annotationArr, n nVar) {
        if (c.a.a(type) != k.b.class) {
            return null;
        }
        return new a(p.b(type));
    }
}
