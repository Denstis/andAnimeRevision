package androidx.lifecycle;

import androidx.lifecycle.e;

/* JADX INFO: loaded from: classes.dex */
public abstract class LiveData<T> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static final Object f1030i = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Object f1031a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b.b.a.b.b<m<? super T>, LiveData<T>.b> f1032b = new b.b.a.b.b<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f1033c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile Object f1034d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    volatile Object f1035e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f1036f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f1037g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f1038h;

    class LifecycleBoundObserver extends LiveData<T>.b implements d {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final g f1039e;

        LifecycleBoundObserver(g gVar, m<? super T> mVar) {
            super(mVar);
            this.f1039e = gVar;
        }

        @Override // androidx.lifecycle.LiveData.b
        void a() {
            this.f1039e.getLifecycle().b(this);
        }

        @Override // androidx.lifecycle.d
        public void a(g gVar, e.a aVar) {
            if (this.f1039e.getLifecycle().a() == e.b.DESTROYED) {
                LiveData.this.a((m) this.f1042a);
            } else {
                a(b());
            }
        }

        @Override // androidx.lifecycle.LiveData.b
        boolean a(g gVar) {
            return this.f1039e == gVar;
        }

        @Override // androidx.lifecycle.LiveData.b
        boolean b() {
            return this.f1039e.getLifecycle().a().a(e.b.STARTED);
        }
    }

    class a implements Runnable {
        a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            synchronized (LiveData.this.f1031a) {
                obj = LiveData.this.f1035e;
                LiveData.this.f1035e = LiveData.f1030i;
            }
            LiveData.this.a(obj);
        }
    }

    private abstract class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final m<? super T> f1042a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f1043b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f1044c = -1;

        b(m<? super T> mVar) {
            this.f1042a = mVar;
        }

        void a() {
        }

        void a(boolean z) {
            if (z == this.f1043b) {
                return;
            }
            this.f1043b = z;
            boolean z2 = LiveData.this.f1033c == 0;
            LiveData.this.f1033c += this.f1043b ? 1 : -1;
            if (z2 && this.f1043b) {
                LiveData.this.a();
            }
            LiveData liveData = LiveData.this;
            if (liveData.f1033c == 0 && !this.f1043b) {
                liveData.b();
            }
            if (this.f1043b) {
                LiveData.this.a(this);
            }
        }

        boolean a(g gVar) {
            return false;
        }

        abstract boolean b();
    }

    public LiveData() {
        Object obj = f1030i;
        this.f1034d = obj;
        this.f1035e = obj;
        this.f1036f = -1;
        new a();
    }

    private static void a(String str) {
        if (b.b.a.a.a.b().a()) {
            return;
        }
        throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
    }

    private void b(LiveData<T>.b bVar) {
        if (bVar.f1043b) {
            if (!bVar.b()) {
                bVar.a(false);
                return;
            }
            int i2 = bVar.f1044c;
            int i3 = this.f1036f;
            if (i2 >= i3) {
                return;
            }
            bVar.f1044c = i3;
            bVar.f1042a.a((Object) this.f1034d);
        }
    }

    protected void a() {
    }

    void a(LiveData<T>.b bVar) {
        if (this.f1037g) {
            this.f1038h = true;
            return;
        }
        this.f1037g = true;
        do {
            this.f1038h = false;
            if (bVar != null) {
                b(bVar);
                bVar = null;
            } else {
                b.b.a.b.b<m<? super T>, LiveData<T>.b>.d dVarC = this.f1032b.c();
                while (dVarC.hasNext()) {
                    b((b) dVarC.next().getValue());
                    if (this.f1038h) {
                        break;
                    }
                }
            }
        } while (this.f1038h);
        this.f1037g = false;
    }

    public void a(g gVar, m<? super T> mVar) {
        a("observe");
        if (gVar.getLifecycle().a() == e.b.DESTROYED) {
            return;
        }
        LifecycleBoundObserver lifecycleBoundObserver = new LifecycleBoundObserver(gVar, mVar);
        LiveData<T>.b bVarB = this.f1032b.b(mVar, lifecycleBoundObserver);
        if (bVarB != null && !bVarB.a(gVar)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (bVarB != null) {
            return;
        }
        gVar.getLifecycle().a(lifecycleBoundObserver);
    }

    public void a(m<? super T> mVar) {
        a("removeObserver");
        LiveData<T>.b bVarRemove = this.f1032b.remove(mVar);
        if (bVarRemove == null) {
            return;
        }
        bVarRemove.a();
        bVarRemove.a(false);
    }

    protected void a(T t) {
        a("setValue");
        this.f1036f++;
        this.f1034d = t;
        a((b) null);
    }

    protected void b() {
    }
}
