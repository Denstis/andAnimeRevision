package androidx.lifecycle;

import androidx.lifecycle.e;

/* JADX INFO: loaded from: classes.dex */
class FullLifecycleObserverAdapter implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f1028a;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f1029a = new int[e.a.values().length];

        static {
            try {
                f1029a[e.a.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1029a[e.a.ON_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1029a[e.a.ON_RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1029a[e.a.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1029a[e.a.ON_STOP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1029a[e.a.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1029a[e.a.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    FullLifecycleObserverAdapter(b bVar) {
        this.f1028a = bVar;
    }

    @Override // androidx.lifecycle.d
    public void a(g gVar, e.a aVar) {
        switch (a.f1029a[aVar.ordinal()]) {
            case 1:
                this.f1028a.b(gVar);
                return;
            case 2:
                this.f1028a.f(gVar);
                return;
            case 3:
                this.f1028a.a(gVar);
                return;
            case 4:
                this.f1028a.c(gVar);
                return;
            case 5:
                this.f1028a.d(gVar);
                return;
            case 6:
                this.f1028a.e(gVar);
                return;
            case 7:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
            default:
                return;
        }
    }
}
