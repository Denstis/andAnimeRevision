package androidx.coordinatorlayout.widget;

import b.e.g;
import b.h.n.d;
import b.h.n.e;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d<ArrayList<T>> f815a = new e(10);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g<T, ArrayList<T>> f816b = new g<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ArrayList<T> f817c = new ArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashSet<T> f818d = new HashSet<>();

    private void a(T t, ArrayList<T> arrayList, HashSet<T> hashSet) {
        if (arrayList.contains(t)) {
            return;
        }
        if (hashSet.contains(t)) {
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(t);
        ArrayList<T> arrayList2 = this.f816b.get(t);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i2 = 0; i2 < size; i2++) {
                a(arrayList2.get(i2), arrayList, hashSet);
            }
        }
        hashSet.remove(t);
        arrayList.add(t);
    }

    private void a(ArrayList<T> arrayList) {
        arrayList.clear();
        this.f815a.a(arrayList);
    }

    private ArrayList<T> c() {
        ArrayList<T> arrayListA = this.f815a.a();
        return arrayListA == null ? new ArrayList<>() : arrayListA;
    }

    public void a() {
        int size = this.f816b.size();
        for (int i2 = 0; i2 < size; i2++) {
            ArrayList<T> arrayListD = this.f816b.d(i2);
            if (arrayListD != null) {
                a((ArrayList) arrayListD);
            }
        }
        this.f816b.clear();
    }

    public void a(T t) {
        if (this.f816b.containsKey(t)) {
            return;
        }
        this.f816b.put(t, null);
    }

    public void a(T t, T t2) {
        if (!this.f816b.containsKey(t) || !this.f816b.containsKey(t2)) {
            throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
        }
        ArrayList<T> arrayListC = this.f816b.get(t);
        if (arrayListC == null) {
            arrayListC = c();
            this.f816b.put(t, arrayListC);
        }
        arrayListC.add(t2);
    }

    public ArrayList<T> b() {
        this.f817c.clear();
        this.f818d.clear();
        int size = this.f816b.size();
        for (int i2 = 0; i2 < size; i2++) {
            a(this.f816b.b(i2), this.f817c, this.f818d);
        }
        return this.f817c;
    }

    public boolean b(T t) {
        return this.f816b.containsKey(t);
    }

    public List c(T t) {
        return this.f816b.get(t);
    }

    public List<T> d(T t) {
        int size = this.f816b.size();
        ArrayList arrayList = null;
        for (int i2 = 0; i2 < size; i2++) {
            ArrayList<T> arrayListD = this.f816b.d(i2);
            if (arrayListD != null && arrayListD.contains(t)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(this.f816b.b(i2));
            }
        }
        return arrayList;
    }

    public boolean e(T t) {
        int size = this.f816b.size();
        for (int i2 = 0; i2 < size; i2++) {
            ArrayList<T> arrayListD = this.f816b.d(i2);
            if (arrayListD != null && arrayListD.contains(t)) {
                return true;
            }
        }
        return false;
    }
}
