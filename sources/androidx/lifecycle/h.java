package androidx.lifecycle;

import android.util.Log;
import androidx.lifecycle.e;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class h extends e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final WeakReference<g> f1064c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b.b.a.b.a<f, b> f1062a = new b.b.a.b.a<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1065d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f1066e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f1067f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ArrayList<e.b> f1068g = new ArrayList<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private e.b f1063b = e.b.INITIALIZED;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f1069a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f1070b = new int[e.b.values().length];

        static {
            try {
                f1070b[e.b.INITIALIZED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1070b[e.b.CREATED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1070b[e.b.STARTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1070b[e.b.RESUMED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1070b[e.b.DESTROYED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f1069a = new int[e.a.values().length];
            try {
                f1069a[e.a.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1069a[e.a.ON_STOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f1069a[e.a.ON_START.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f1069a[e.a.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f1069a[e.a.ON_RESUME.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f1069a[e.a.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f1069a[e.a.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        e.b f1071a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        d f1072b;

        b(f fVar, e.b bVar) {
            this.f1072b = j.a(fVar);
            this.f1071a = bVar;
        }

        void a(g gVar, e.a aVar) {
            e.b bVarB = h.b(aVar);
            this.f1071a = h.a(this.f1071a, bVarB);
            this.f1072b.a(gVar, aVar);
            this.f1071a = bVarB;
        }
    }

    public h(g gVar) {
        this.f1064c = new WeakReference<>(gVar);
    }

    static e.b a(e.b bVar, e.b bVar2) {
        return (bVar2 == null || bVar2.compareTo(bVar) >= 0) ? bVar : bVar2;
    }

    private void a(g gVar) {
        Iterator<Map.Entry<f, b>> itA = this.f1062a.a();
        while (itA.hasNext() && !this.f1067f) {
            Map.Entry<f, b> next = itA.next();
            b value = next.getValue();
            while (value.f1071a.compareTo(this.f1063b) > 0 && !this.f1067f && this.f1062a.contains(next.getKey())) {
                e.a aVarB = b(value.f1071a);
                d(b(aVarB));
                value.a(gVar, aVarB);
                c();
            }
        }
    }

    private static e.a b(e.b bVar) {
        int i2 = a.f1070b[bVar.ordinal()];
        if (i2 == 1) {
            throw new IllegalArgumentException();
        }
        if (i2 == 2) {
            return e.a.ON_DESTROY;
        }
        if (i2 == 3) {
            return e.a.ON_STOP;
        }
        if (i2 == 4) {
            return e.a.ON_PAUSE;
        }
        if (i2 == 5) {
            throw new IllegalArgumentException();
        }
        throw new IllegalArgumentException("Unexpected state value " + bVar);
    }

    static e.b b(e.a aVar) {
        switch (a.f1069a[aVar.ordinal()]) {
            case 1:
            case 2:
                return e.b.CREATED;
            case 3:
            case 4:
                return e.b.STARTED;
            case 5:
                return e.b.RESUMED;
            case 6:
                return e.b.DESTROYED;
            default:
                throw new IllegalArgumentException("Unexpected event value " + aVar);
        }
    }

    private void b(g gVar) {
        b.b.a.b.b<f, b>.d dVarC = this.f1062a.c();
        while (dVarC.hasNext() && !this.f1067f) {
            Map.Entry next = dVarC.next();
            b bVar = (b) next.getValue();
            while (bVar.f1071a.compareTo(this.f1063b) < 0 && !this.f1067f && this.f1062a.contains((f) next.getKey())) {
                d(bVar.f1071a);
                bVar.a(gVar, e(bVar.f1071a));
                c();
            }
        }
    }

    private boolean b() {
        if (this.f1062a.size() == 0) {
            return true;
        }
        e.b bVar = this.f1062a.b().getValue().f1071a;
        e.b bVar2 = this.f1062a.d().getValue().f1071a;
        return bVar == bVar2 && this.f1063b == bVar2;
    }

    private e.b c(f fVar) {
        Map.Entry<f, b> entryB = this.f1062a.b(fVar);
        e.b bVar = null;
        e.b bVar2 = entryB != null ? entryB.getValue().f1071a : null;
        if (!this.f1068g.isEmpty()) {
            bVar = this.f1068g.get(r0.size() - 1);
        }
        return a(a(this.f1063b, bVar2), bVar);
    }

    private void c() {
        this.f1068g.remove(r0.size() - 1);
    }

    private void c(e.b bVar) {
        if (this.f1063b == bVar) {
            return;
        }
        this.f1063b = bVar;
        if (this.f1066e || this.f1065d != 0) {
            this.f1067f = true;
            return;
        }
        this.f1066e = true;
        d();
        this.f1066e = false;
    }

    private void d() {
        g gVar = this.f1064c.get();
        if (gVar == null) {
            Log.w("LifecycleRegistry", "LifecycleOwner is garbage collected, you shouldn't try dispatch new events from it.");
            return;
        }
        while (true) {
            boolean zB = b();
            this.f1067f = false;
            if (zB) {
                return;
            }
            if (this.f1063b.compareTo(this.f1062a.b().getValue().f1071a) < 0) {
                a(gVar);
            }
            Map.Entry<f, b> entryD = this.f1062a.d();
            if (!this.f1067f && entryD != null && this.f1063b.compareTo(entryD.getValue().f1071a) > 0) {
                b(gVar);
            }
        }
    }

    private void d(e.b bVar) {
        this.f1068g.add(bVar);
    }

    private static e.a e(e.b bVar) {
        int i2 = a.f1070b[bVar.ordinal()];
        if (i2 != 1) {
            if (i2 == 2) {
                return e.a.ON_START;
            }
            if (i2 == 3) {
                return e.a.ON_RESUME;
            }
            if (i2 == 4) {
                throw new IllegalArgumentException();
            }
            if (i2 != 5) {
                throw new IllegalArgumentException("Unexpected state value " + bVar);
            }
        }
        return e.a.ON_CREATE;
    }

    @Override // androidx.lifecycle.e
    public e.b a() {
        return this.f1063b;
    }

    public void a(e.a aVar) {
        c(b(aVar));
    }

    public void a(e.b bVar) {
        c(bVar);
    }

    @Override // androidx.lifecycle.e
    public void a(f fVar) {
        g gVar;
        e.b bVar = this.f1063b;
        e.b bVar2 = e.b.DESTROYED;
        if (bVar != bVar2) {
            bVar2 = e.b.INITIALIZED;
        }
        b bVar3 = new b(fVar, bVar2);
        if (this.f1062a.b(fVar, bVar3) == null && (gVar = this.f1064c.get()) != null) {
            boolean z = this.f1065d != 0 || this.f1066e;
            e.b bVarC = c(fVar);
            this.f1065d++;
            while (bVar3.f1071a.compareTo(bVarC) < 0 && this.f1062a.contains(fVar)) {
                d(bVar3.f1071a);
                bVar3.a(gVar, e(bVar3.f1071a));
                c();
                bVarC = c(fVar);
            }
            if (!z) {
                d();
            }
            this.f1065d--;
        }
    }

    @Override // androidx.lifecycle.e
    public void b(f fVar) {
        this.f1062a.remove(fVar);
    }
}
