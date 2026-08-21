package b.f.a.j;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public List<f> f2417a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f2418b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f2419c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2420d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int[] f2421e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    List<f> f2422f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    List<f> f2423g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    HashSet<f> f2424h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    HashSet<f> f2425i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    List<f> f2426j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    List<f> f2427k;

    h(List<f> list) {
        this.f2418b = -1;
        this.f2419c = -1;
        this.f2420d = false;
        this.f2421e = new int[]{this.f2418b, this.f2419c};
        this.f2422f = new ArrayList();
        this.f2423g = new ArrayList();
        this.f2424h = new HashSet<>();
        this.f2425i = new HashSet<>();
        this.f2426j = new ArrayList();
        this.f2427k = new ArrayList();
        this.f2417a = list;
    }

    h(List<f> list, boolean z) {
        this.f2418b = -1;
        this.f2419c = -1;
        this.f2420d = false;
        this.f2421e = new int[]{this.f2418b, this.f2419c};
        this.f2422f = new ArrayList();
        this.f2423g = new ArrayList();
        this.f2424h = new HashSet<>();
        this.f2425i = new HashSet<>();
        this.f2426j = new ArrayList();
        this.f2427k = new ArrayList();
        this.f2417a = list;
        this.f2420d = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(b.f.a.j.f r7) {
        /*
            Method dump skipped, instruction units count: 218
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: b.f.a.j.h.a(b.f.a.j.f):void");
    }

    private void a(ArrayList<f> arrayList, f fVar) {
        if (fVar.d0) {
            return;
        }
        arrayList.add(fVar);
        fVar.d0 = true;
        if (fVar.y()) {
            return;
        }
        if (fVar instanceof j) {
            j jVar = (j) fVar;
            int i2 = jVar.l0;
            for (int i3 = 0; i3 < i2; i3++) {
                a(arrayList, jVar.k0[i3]);
            }
        }
        int length = fVar.A.length;
        for (int i4 = 0; i4 < length; i4++) {
            e eVar = fVar.A[i4].f2375d;
            if (eVar != null) {
                f fVar2 = eVar.f2373b;
                if (eVar != null && fVar2 != fVar.k()) {
                    a(arrayList, fVar2);
                }
            }
        }
    }

    List<f> a() {
        if (!this.f2426j.isEmpty()) {
            return this.f2426j;
        }
        int size = this.f2417a.size();
        for (int i2 = 0; i2 < size; i2++) {
            f fVar = this.f2417a.get(i2);
            if (!fVar.b0) {
                a((ArrayList<f>) this.f2426j, fVar);
            }
        }
        this.f2427k.clear();
        this.f2427k.addAll(this.f2417a);
        this.f2427k.removeAll(this.f2426j);
        return this.f2426j;
    }

    public List<f> a(int i2) {
        if (i2 == 0) {
            return this.f2422f;
        }
        if (i2 == 1) {
            return this.f2423g;
        }
        return null;
    }

    void a(f fVar, int i2) {
        HashSet<f> hashSet;
        if (i2 == 0) {
            hashSet = this.f2424h;
        } else if (i2 != 1) {
            return;
        } else {
            hashSet = this.f2425i;
        }
        hashSet.add(fVar);
    }

    Set<f> b(int i2) {
        if (i2 == 0) {
            return this.f2424h;
        }
        if (i2 == 1) {
            return this.f2425i;
        }
        return null;
    }

    void b() {
        int size = this.f2427k.size();
        for (int i2 = 0; i2 < size; i2++) {
            a(this.f2427k.get(i2));
        }
    }
}
