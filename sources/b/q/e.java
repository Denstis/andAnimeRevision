package b.q;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import b.q.n;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class e extends b.k.a.r {

    class a extends n.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Rect f2897a;

        a(e eVar, Rect rect) {
            this.f2897a = rect;
        }

        @Override // b.q.n.f
        public Rect a(n nVar) {
            return this.f2897a;
        }
    }

    class b implements n.g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f2898a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArrayList f2899b;

        b(e eVar, View view, ArrayList arrayList) {
            this.f2898a = view;
            this.f2899b = arrayList;
        }

        @Override // b.q.n.g
        public void a(n nVar) {
        }

        @Override // b.q.n.g
        public void b(n nVar) {
        }

        @Override // b.q.n.g
        public void c(n nVar) {
            nVar.removeListener(this);
            this.f2898a.setVisibility(8);
            int size = this.f2899b.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((View) this.f2899b.get(i2)).setVisibility(0);
            }
        }

        @Override // b.q.n.g
        public void d(n nVar) {
        }

        @Override // b.q.n.g
        public void e(n nVar) {
        }
    }

    class c implements n.g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f2900a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArrayList f2901b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Object f2902c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ ArrayList f2903d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ Object f2904e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ ArrayList f2905f;

        c(Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
            this.f2900a = obj;
            this.f2901b = arrayList;
            this.f2902c = obj2;
            this.f2903d = arrayList2;
            this.f2904e = obj3;
            this.f2905f = arrayList3;
        }

        @Override // b.q.n.g
        public void a(n nVar) {
            Object obj = this.f2900a;
            if (obj != null) {
                e.this.a(obj, this.f2901b, (ArrayList<View>) null);
            }
            Object obj2 = this.f2902c;
            if (obj2 != null) {
                e.this.a(obj2, this.f2903d, (ArrayList<View>) null);
            }
            Object obj3 = this.f2904e;
            if (obj3 != null) {
                e.this.a(obj3, this.f2905f, (ArrayList<View>) null);
            }
        }

        @Override // b.q.n.g
        public void b(n nVar) {
        }

        @Override // b.q.n.g
        public void c(n nVar) {
        }

        @Override // b.q.n.g
        public void d(n nVar) {
        }

        @Override // b.q.n.g
        public void e(n nVar) {
        }
    }

    class d extends n.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Rect f2907a;

        d(e eVar, Rect rect) {
            this.f2907a = rect;
        }

        @Override // b.q.n.f
        public Rect a(n nVar) {
            Rect rect = this.f2907a;
            if (rect == null || rect.isEmpty()) {
                return null;
            }
            return this.f2907a;
        }
    }

    private static boolean a(n nVar) {
        return (b.k.a.r.a((List) nVar.getTargetIds()) && b.k.a.r.a((List) nVar.getTargetNames()) && b.k.a.r.a((List) nVar.getTargetTypes())) ? false : true;
    }

    @Override // b.k.a.r
    public Object a(Object obj, Object obj2, Object obj3) {
        n nVar = (n) obj;
        n nVar2 = (n) obj2;
        n nVar3 = (n) obj3;
        if (nVar != null && nVar2 != null) {
            r rVar = new r();
            rVar.a(nVar);
            rVar.a(nVar2);
            rVar.b(1);
            nVar = rVar;
        } else if (nVar == null) {
            nVar = nVar2 != null ? nVar2 : null;
        }
        if (nVar3 == null) {
            return nVar;
        }
        r rVar2 = new r();
        if (nVar != null) {
            rVar2.a(nVar);
        }
        rVar2.a(nVar3);
        return rVar2;
    }

    @Override // b.k.a.r
    public void a(ViewGroup viewGroup, Object obj) {
        p.a(viewGroup, (n) obj);
    }

    @Override // b.k.a.r
    public void a(Object obj, Rect rect) {
        if (obj != null) {
            ((n) obj).setEpicenterCallback(new d(this, rect));
        }
    }

    @Override // b.k.a.r
    public void a(Object obj, View view) {
        if (obj != null) {
            ((n) obj).addTarget(view);
        }
    }

    @Override // b.k.a.r
    public void a(Object obj, View view, ArrayList<View> arrayList) {
        ((n) obj).addListener(new b(this, view, arrayList));
    }

    @Override // b.k.a.r
    public void a(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3) {
        ((n) obj).addListener(new c(obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    @Override // b.k.a.r
    public void a(Object obj, ArrayList<View> arrayList) {
        n nVar = (n) obj;
        if (nVar == null) {
            return;
        }
        int i2 = 0;
        if (nVar instanceof r) {
            r rVar = (r) nVar;
            int iA = rVar.a();
            while (i2 < iA) {
                a(rVar.a(i2), arrayList);
                i2++;
            }
            return;
        }
        if (a(nVar) || !b.k.a.r.a((List) nVar.getTargets())) {
            return;
        }
        int size = arrayList.size();
        while (i2 < size) {
            nVar.addTarget(arrayList.get(i2));
            i2++;
        }
    }

    @Override // b.k.a.r
    public void a(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        n nVar = (n) obj;
        int i2 = 0;
        if (nVar instanceof r) {
            r rVar = (r) nVar;
            int iA = rVar.a();
            while (i2 < iA) {
                a((Object) rVar.a(i2), arrayList, arrayList2);
                i2++;
            }
            return;
        }
        if (a(nVar)) {
            return;
        }
        List<View> targets = nVar.getTargets();
        if (targets.size() == arrayList.size() && targets.containsAll(arrayList)) {
            int size = arrayList2 == null ? 0 : arrayList2.size();
            while (i2 < size) {
                nVar.addTarget(arrayList2.get(i2));
                i2++;
            }
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                nVar.removeTarget(arrayList.get(size2));
            }
        }
    }

    @Override // b.k.a.r
    public boolean a(Object obj) {
        return obj instanceof n;
    }

    @Override // b.k.a.r
    public Object b(Object obj) {
        if (obj != null) {
            return ((n) obj).mo3clone();
        }
        return null;
    }

    @Override // b.k.a.r
    public Object b(Object obj, Object obj2, Object obj3) {
        r rVar = new r();
        if (obj != null) {
            rVar.a((n) obj);
        }
        if (obj2 != null) {
            rVar.a((n) obj2);
        }
        if (obj3 != null) {
            rVar.a((n) obj3);
        }
        return rVar;
    }

    @Override // b.k.a.r
    public void b(Object obj, View view) {
        if (obj != null) {
            ((n) obj).removeTarget(view);
        }
    }

    @Override // b.k.a.r
    public void b(Object obj, View view, ArrayList<View> arrayList) {
        r rVar = (r) obj;
        List<View> targets = rVar.getTargets();
        targets.clear();
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            b.k.a.r.a(targets, arrayList.get(i2));
        }
        targets.add(view);
        arrayList.add(view);
        a(rVar, arrayList);
    }

    @Override // b.k.a.r
    public void b(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        r rVar = (r) obj;
        if (rVar != null) {
            rVar.getTargets().clear();
            rVar.getTargets().addAll(arrayList2);
            a((Object) rVar, arrayList, arrayList2);
        }
    }

    @Override // b.k.a.r
    public Object c(Object obj) {
        if (obj == null) {
            return null;
        }
        r rVar = new r();
        rVar.a((n) obj);
        return rVar;
    }

    @Override // b.k.a.r
    public void c(Object obj, View view) {
        if (view != null) {
            Rect rect = new Rect();
            a(view, rect);
            ((n) obj).setEpicenterCallback(new a(this, rect));
        }
    }
}
