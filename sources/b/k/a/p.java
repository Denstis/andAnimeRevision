package b.k.a;

import android.graphics.Rect;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f2768a = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final r f2769b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final r f2770c;

    static class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArrayList f2771b;

        a(ArrayList arrayList) {
            this.f2771b = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.a((ArrayList<View>) this.f2771b, 4);
        }
    }

    static class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Object f2772b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ r f2773c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ View f2774d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ b.k.a.d f2775e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ ArrayList f2776f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ ArrayList f2777g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ ArrayList f2778h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final /* synthetic */ Object f2779i;

        b(Object obj, r rVar, View view, b.k.a.d dVar, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, Object obj2) {
            this.f2772b = obj;
            this.f2773c = rVar;
            this.f2774d = view;
            this.f2775e = dVar;
            this.f2776f = arrayList;
            this.f2777g = arrayList2;
            this.f2778h = arrayList3;
            this.f2779i = obj2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Object obj = this.f2772b;
            if (obj != null) {
                this.f2773c.b(obj, this.f2774d);
                this.f2777g.addAll(p.a(this.f2773c, this.f2772b, this.f2775e, (ArrayList<View>) this.f2776f, this.f2774d));
            }
            if (this.f2778h != null) {
                if (this.f2779i != null) {
                    ArrayList<View> arrayList = new ArrayList<>();
                    arrayList.add(this.f2774d);
                    this.f2773c.a(this.f2779i, this.f2778h, arrayList);
                }
                this.f2778h.clear();
                this.f2778h.add(this.f2774d);
            }
        }
    }

    static class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ b.k.a.d f2780b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ b.k.a.d f2781c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f2782d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ b.e.a f2783e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ View f2784f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ r f2785g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ Rect f2786h;

        c(b.k.a.d dVar, b.k.a.d dVar2, boolean z, b.e.a aVar, View view, r rVar, Rect rect) {
            this.f2780b = dVar;
            this.f2781c = dVar2;
            this.f2782d = z;
            this.f2783e = aVar;
            this.f2784f = view;
            this.f2785g = rVar;
            this.f2786h = rect;
        }

        @Override // java.lang.Runnable
        public void run() {
            p.a(this.f2780b, this.f2781c, this.f2782d, (b.e.a<String, View>) this.f2783e, false);
            View view = this.f2784f;
            if (view != null) {
                this.f2785g.a(view, this.f2786h);
            }
        }
    }

    static class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ r f2787b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ b.e.a f2788c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Object f2789d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ e f2790e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ ArrayList f2791f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ View f2792g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ b.k.a.d f2793h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final /* synthetic */ b.k.a.d f2794i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        final /* synthetic */ boolean f2795j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        final /* synthetic */ ArrayList f2796k;
        final /* synthetic */ Object l;
        final /* synthetic */ Rect m;

        d(r rVar, b.e.a aVar, Object obj, e eVar, ArrayList arrayList, View view, b.k.a.d dVar, b.k.a.d dVar2, boolean z, ArrayList arrayList2, Object obj2, Rect rect) {
            this.f2787b = rVar;
            this.f2788c = aVar;
            this.f2789d = obj;
            this.f2790e = eVar;
            this.f2791f = arrayList;
            this.f2792g = view;
            this.f2793h = dVar;
            this.f2794i = dVar2;
            this.f2795j = z;
            this.f2796k = arrayList2;
            this.l = obj2;
            this.m = rect;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.e.a<String, View> aVarA = p.a(this.f2787b, (b.e.a<String, String>) this.f2788c, this.f2789d, this.f2790e);
            if (aVarA != null) {
                this.f2791f.addAll(aVarA.values());
                this.f2791f.add(this.f2792g);
            }
            p.a(this.f2793h, this.f2794i, this.f2795j, aVarA, false);
            Object obj = this.f2789d;
            if (obj != null) {
                this.f2787b.b(obj, this.f2796k, this.f2791f);
                View viewA = p.a(aVarA, this.f2790e, this.l, this.f2795j);
                if (viewA != null) {
                    this.f2787b.a(viewA, this.m);
                }
            }
        }
    }

    static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public b.k.a.d f2797a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f2798b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public b.k.a.a f2799c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public b.k.a.d f2800d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f2801e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public b.k.a.a f2802f;

        e() {
        }
    }

    static {
        f2769b = Build.VERSION.SDK_INT >= 21 ? new q() : null;
        f2770c = a();
    }

    static View a(b.e.a<String, View> aVar, e eVar, Object obj, boolean z) {
        ArrayList<String> arrayList;
        b.k.a.a aVar2 = eVar.f2799c;
        if (obj == null || aVar == null || (arrayList = aVar2.r) == null || arrayList.isEmpty()) {
            return null;
        }
        return aVar.get((z ? aVar2.r : aVar2.s).get(0));
    }

    private static b.e.a<String, String> a(int i2, ArrayList<b.k.a.a> arrayList, ArrayList<Boolean> arrayList2, int i3, int i4) {
        ArrayList<String> arrayList3;
        ArrayList<String> arrayList4;
        b.e.a<String, String> aVar = new b.e.a<>();
        for (int i5 = i4 - 1; i5 >= i3; i5--) {
            b.k.a.a aVar2 = arrayList.get(i5);
            if (aVar2.b(i2)) {
                boolean zBooleanValue = arrayList2.get(i5).booleanValue();
                ArrayList<String> arrayList5 = aVar2.r;
                if (arrayList5 != null) {
                    int size = arrayList5.size();
                    if (zBooleanValue) {
                        arrayList3 = aVar2.r;
                        arrayList4 = aVar2.s;
                    } else {
                        ArrayList<String> arrayList6 = aVar2.r;
                        arrayList3 = aVar2.s;
                        arrayList4 = arrayList6;
                    }
                    for (int i6 = 0; i6 < size; i6++) {
                        String str = arrayList4.get(i6);
                        String str2 = arrayList3.get(i6);
                        String strRemove = aVar.remove(str2);
                        if (strRemove != null) {
                            aVar.put(str, strRemove);
                        } else {
                            aVar.put(str, str2);
                        }
                    }
                }
            }
        }
        return aVar;
    }

    static b.e.a<String, View> a(r rVar, b.e.a<String, String> aVar, Object obj, e eVar) {
        androidx.core.app.m enterTransitionCallback;
        ArrayList<String> arrayList;
        String strA;
        b.k.a.d dVar = eVar.f2797a;
        View view = dVar.getView();
        if (aVar.isEmpty() || obj == null || view == null) {
            aVar.clear();
            return null;
        }
        b.e.a<String, View> aVar2 = new b.e.a<>();
        rVar.a((Map<String, View>) aVar2, view);
        b.k.a.a aVar3 = eVar.f2799c;
        if (eVar.f2798b) {
            enterTransitionCallback = dVar.getExitTransitionCallback();
            arrayList = aVar3.r;
        } else {
            enterTransitionCallback = dVar.getEnterTransitionCallback();
            arrayList = aVar3.s;
        }
        if (arrayList != null) {
            aVar2.a((Collection<?>) arrayList);
            aVar2.a((Collection<?>) aVar.values());
        }
        if (enterTransitionCallback != null) {
            enterTransitionCallback.a(arrayList, aVar2);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view2 = aVar2.get(str);
                if (view2 == null) {
                    String strA2 = a(aVar, str);
                    if (strA2 != null) {
                        aVar.remove(strA2);
                    }
                } else if (!str.equals(b.h.o.s.q(view2)) && (strA = a(aVar, str)) != null) {
                    aVar.put(strA, b.h.o.s.q(view2));
                }
            }
        } else {
            a(aVar, aVar2);
        }
        return aVar2;
    }

    private static e a(e eVar, SparseArray<e> sparseArray, int i2) {
        if (eVar != null) {
            return eVar;
        }
        e eVar2 = new e();
        sparseArray.put(i2, eVar2);
        return eVar2;
    }

    private static r a() {
        try {
            return (r) Class.forName("b.q.e").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    private static r a(b.k.a.d dVar, b.k.a.d dVar2) {
        ArrayList arrayList = new ArrayList();
        if (dVar != null) {
            Object exitTransition = dVar.getExitTransition();
            if (exitTransition != null) {
                arrayList.add(exitTransition);
            }
            Object returnTransition = dVar.getReturnTransition();
            if (returnTransition != null) {
                arrayList.add(returnTransition);
            }
            Object sharedElementReturnTransition = dVar.getSharedElementReturnTransition();
            if (sharedElementReturnTransition != null) {
                arrayList.add(sharedElementReturnTransition);
            }
        }
        if (dVar2 != null) {
            Object enterTransition = dVar2.getEnterTransition();
            if (enterTransition != null) {
                arrayList.add(enterTransition);
            }
            Object reenterTransition = dVar2.getReenterTransition();
            if (reenterTransition != null) {
                arrayList.add(reenterTransition);
            }
            Object sharedElementEnterTransition = dVar2.getSharedElementEnterTransition();
            if (sharedElementEnterTransition != null) {
                arrayList.add(sharedElementEnterTransition);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        r rVar = f2769b;
        if (rVar != null && a(rVar, arrayList)) {
            return f2769b;
        }
        r rVar2 = f2770c;
        if (rVar2 != null && a(rVar2, arrayList)) {
            return f2770c;
        }
        if (f2769b == null && f2770c == null) {
            return null;
        }
        throw new IllegalArgumentException("Invalid Transition types");
    }

    private static Object a(r rVar, ViewGroup viewGroup, View view, b.e.a<String, String> aVar, e eVar, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Object objA;
        b.e.a<String, String> aVar2;
        Object obj3;
        Rect rect;
        b.k.a.d dVar = eVar.f2797a;
        b.k.a.d dVar2 = eVar.f2800d;
        if (dVar == null || dVar2 == null) {
            return null;
        }
        boolean z = eVar.f2798b;
        if (aVar.isEmpty()) {
            aVar2 = aVar;
            objA = null;
        } else {
            objA = a(rVar, dVar, dVar2, z);
            aVar2 = aVar;
        }
        b.e.a<String, View> aVarB = b(rVar, aVar2, objA, eVar);
        if (aVar.isEmpty()) {
            obj3 = null;
        } else {
            arrayList.addAll(aVarB.values());
            obj3 = objA;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        a(dVar, dVar2, z, aVarB, true);
        if (obj3 != null) {
            rect = new Rect();
            rVar.b(obj3, view, arrayList);
            a(rVar, obj3, obj2, aVarB, eVar.f2801e, eVar.f2802f);
            if (obj != null) {
                rVar.a(obj, rect);
            }
        } else {
            rect = null;
        }
        s.a(viewGroup, new d(rVar, aVar, obj3, eVar, arrayList2, view, dVar, dVar2, z, arrayList, obj, rect));
        return obj3;
    }

    private static Object a(r rVar, b.k.a.d dVar, b.k.a.d dVar2, boolean z) {
        if (dVar == null || dVar2 == null) {
            return null;
        }
        return rVar.c(rVar.b(z ? dVar2.getSharedElementReturnTransition() : dVar.getSharedElementEnterTransition()));
    }

    private static Object a(r rVar, b.k.a.d dVar, boolean z) {
        if (dVar == null) {
            return null;
        }
        return rVar.b(z ? dVar.getReenterTransition() : dVar.getEnterTransition());
    }

    private static Object a(r rVar, Object obj, Object obj2, Object obj3, b.k.a.d dVar, boolean z) {
        return (obj == null || obj2 == null || dVar == null) ? true : z ? dVar.getAllowReturnTransitionOverlap() : dVar.getAllowEnterTransitionOverlap() ? rVar.b(obj2, obj, obj3) : rVar.a(obj2, obj, obj3);
    }

    private static String a(b.e.a<String, String> aVar, String str) {
        int size = aVar.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (str.equals(aVar.d(i2))) {
                return aVar.b(i2);
            }
        }
        return null;
    }

    static ArrayList<View> a(r rVar, Object obj, b.k.a.d dVar, ArrayList<View> arrayList, View view) {
        if (obj == null) {
            return null;
        }
        ArrayList<View> arrayList2 = new ArrayList<>();
        View view2 = dVar.getView();
        if (view2 != null) {
            rVar.a(arrayList2, view2);
        }
        if (arrayList != null) {
            arrayList2.removeAll(arrayList);
        }
        if (arrayList2.isEmpty()) {
            return arrayList2;
        }
        arrayList2.add(view);
        rVar.a(obj, arrayList2);
        return arrayList2;
    }

    private static void a(b.e.a<String, String> aVar, b.e.a<String, View> aVar2) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            if (!aVar2.containsKey(aVar.d(size))) {
                aVar.c(size);
            }
        }
    }

    public static void a(b.k.a.a aVar, SparseArray<e> sparseArray, boolean z) {
        int size = aVar.f2645b.size();
        for (int i2 = 0; i2 < size; i2++) {
            a(aVar, aVar.f2645b.get(i2), sparseArray, false, z);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0094  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void a(b.k.a.a r16, b.k.a.a.C0114a r17, android.util.SparseArray<b.k.a.p.e> r18, boolean r19, boolean r20) {
        /*
            Method dump skipped, instruction units count: 240
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: b.k.a.p.a(b.k.a.a, b.k.a.a$a, android.util.SparseArray, boolean, boolean):void");
    }

    static void a(b.k.a.d dVar, b.k.a.d dVar2, boolean z, b.e.a<String, View> aVar, boolean z2) {
        androidx.core.app.m enterTransitionCallback = z ? dVar2.getEnterTransitionCallback() : dVar.getEnterTransitionCallback();
        if (enterTransitionCallback != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int size = aVar == null ? 0 : aVar.size();
            for (int i2 = 0; i2 < size; i2++) {
                arrayList2.add(aVar.b(i2));
                arrayList.add(aVar.d(i2));
            }
            if (z2) {
                enterTransitionCallback.b(arrayList2, arrayList, null);
            } else {
                enterTransitionCallback.a(arrayList2, arrayList, null);
            }
        }
    }

    private static void a(j jVar, int i2, e eVar, View view, b.e.a<String, String> aVar) {
        b.k.a.d dVar;
        b.k.a.d dVar2;
        r rVarA;
        Object obj;
        ViewGroup viewGroup = jVar.o.a() ? (ViewGroup) jVar.o.a(i2) : null;
        if (viewGroup == null || (rVarA = a((dVar2 = eVar.f2800d), (dVar = eVar.f2797a))) == null) {
            return;
        }
        boolean z = eVar.f2798b;
        boolean z2 = eVar.f2801e;
        Object objA = a(rVarA, dVar, z);
        Object objB = b(rVarA, dVar2, z2);
        ArrayList arrayList = new ArrayList();
        ArrayList<View> arrayList2 = new ArrayList<>();
        Object objA2 = a(rVarA, viewGroup, view, aVar, eVar, (ArrayList<View>) arrayList, arrayList2, objA, objB);
        if (objA == null && objA2 == null) {
            obj = objB;
            if (obj == null) {
                return;
            }
        } else {
            obj = objB;
        }
        ArrayList<View> arrayListA = a(rVarA, obj, dVar2, (ArrayList<View>) arrayList, view);
        Object obj2 = (arrayListA == null || arrayListA.isEmpty()) ? null : obj;
        rVarA.a(objA, view);
        Object objA3 = a(rVarA, objA, obj2, objA2, dVar, eVar.f2798b);
        if (objA3 != null) {
            ArrayList<View> arrayList3 = new ArrayList<>();
            rVarA.a(objA3, objA, arrayList3, obj2, arrayListA, objA2, arrayList2);
            a(rVarA, viewGroup, dVar, view, arrayList2, objA, arrayList3, obj2, arrayListA);
            rVarA.a((View) viewGroup, arrayList2, (Map<String, String>) aVar);
            rVarA.a(viewGroup, objA3);
            rVarA.a(viewGroup, arrayList2, (Map<String, String>) aVar);
        }
    }

    static void a(j jVar, ArrayList<b.k.a.a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3, boolean z) {
        if (jVar.m < 1) {
            return;
        }
        SparseArray sparseArray = new SparseArray();
        for (int i4 = i2; i4 < i3; i4++) {
            b.k.a.a aVar = arrayList.get(i4);
            if (arrayList2.get(i4).booleanValue()) {
                b(aVar, (SparseArray<e>) sparseArray, z);
            } else {
                a(aVar, (SparseArray<e>) sparseArray, z);
            }
        }
        if (sparseArray.size() != 0) {
            View view = new View(jVar.n.c());
            int size = sparseArray.size();
            for (int i5 = 0; i5 < size; i5++) {
                int iKeyAt = sparseArray.keyAt(i5);
                b.e.a<String, String> aVarA = a(iKeyAt, arrayList, arrayList2, i2, i3);
                e eVar = (e) sparseArray.valueAt(i5);
                if (z) {
                    b(jVar, iKeyAt, eVar, view, aVarA);
                } else {
                    a(jVar, iKeyAt, eVar, view, aVarA);
                }
            }
        }
    }

    private static void a(r rVar, ViewGroup viewGroup, b.k.a.d dVar, View view, ArrayList<View> arrayList, Object obj, ArrayList<View> arrayList2, Object obj2, ArrayList<View> arrayList3) {
        s.a(viewGroup, new b(obj, rVar, view, dVar, arrayList, arrayList2, arrayList3, obj2));
    }

    private static void a(r rVar, Object obj, b.k.a.d dVar, ArrayList<View> arrayList) {
        if (dVar != null && obj != null && dVar.mAdded && dVar.mHidden && dVar.mHiddenChanged) {
            dVar.setHideReplaced(true);
            rVar.a(obj, dVar.getView(), arrayList);
            s.a(dVar.mContainer, new a(arrayList));
        }
    }

    private static void a(r rVar, Object obj, Object obj2, b.e.a<String, View> aVar, boolean z, b.k.a.a aVar2) {
        ArrayList<String> arrayList = aVar2.r;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        View view = aVar.get((z ? aVar2.s : aVar2.r).get(0));
        rVar.c(obj, view);
        if (obj2 != null) {
            rVar.c(obj2, view);
        }
    }

    static void a(ArrayList<View> arrayList, int i2) {
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            arrayList.get(size).setVisibility(i2);
        }
    }

    private static void a(ArrayList<View> arrayList, b.e.a<String, View> aVar, Collection<String> collection) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            View viewD = aVar.d(size);
            if (collection.contains(b.h.o.s.q(viewD))) {
                arrayList.add(viewD);
            }
        }
    }

    private static boolean a(r rVar, List<Object> list) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (!rVar.a(list.get(i2))) {
                return false;
            }
        }
        return true;
    }

    private static b.e.a<String, View> b(r rVar, b.e.a<String, String> aVar, Object obj, e eVar) {
        androidx.core.app.m exitTransitionCallback;
        ArrayList<String> arrayList;
        if (aVar.isEmpty() || obj == null) {
            aVar.clear();
            return null;
        }
        b.k.a.d dVar = eVar.f2800d;
        b.e.a<String, View> aVar2 = new b.e.a<>();
        rVar.a((Map<String, View>) aVar2, dVar.getView());
        b.k.a.a aVar3 = eVar.f2802f;
        if (eVar.f2801e) {
            exitTransitionCallback = dVar.getEnterTransitionCallback();
            arrayList = aVar3.s;
        } else {
            exitTransitionCallback = dVar.getExitTransitionCallback();
            arrayList = aVar3.r;
        }
        aVar2.a((Collection<?>) arrayList);
        if (exitTransitionCallback != null) {
            exitTransitionCallback.a(arrayList, aVar2);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view = aVar2.get(str);
                if (view == null) {
                    aVar.remove(str);
                } else if (!str.equals(b.h.o.s.q(view))) {
                    aVar.put(b.h.o.s.q(view), aVar.remove(str));
                }
            }
        } else {
            aVar.a((Collection<?>) aVar2.keySet());
        }
        return aVar2;
    }

    private static Object b(r rVar, ViewGroup viewGroup, View view, b.e.a<String, String> aVar, e eVar, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Object obj3;
        View view2;
        Rect rect;
        b.k.a.d dVar = eVar.f2797a;
        b.k.a.d dVar2 = eVar.f2800d;
        if (dVar != null) {
            dVar.getView().setVisibility(0);
        }
        if (dVar == null || dVar2 == null) {
            return null;
        }
        boolean z = eVar.f2798b;
        Object objA = aVar.isEmpty() ? null : a(rVar, dVar, dVar2, z);
        b.e.a<String, View> aVarB = b(rVar, aVar, objA, eVar);
        b.e.a<String, View> aVarA = a(rVar, aVar, objA, eVar);
        if (aVar.isEmpty()) {
            if (aVarB != null) {
                aVarB.clear();
            }
            if (aVarA != null) {
                aVarA.clear();
            }
            obj3 = null;
        } else {
            a(arrayList, aVarB, aVar.keySet());
            a(arrayList2, aVarA, aVar.values());
            obj3 = objA;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        a(dVar, dVar2, z, aVarB, true);
        if (obj3 != null) {
            arrayList2.add(view);
            rVar.b(obj3, view, arrayList);
            a(rVar, obj3, obj2, aVarB, eVar.f2801e, eVar.f2802f);
            Rect rect2 = new Rect();
            View viewA = a(aVarA, eVar, obj, z);
            if (viewA != null) {
                rVar.a(obj, rect2);
            }
            rect = rect2;
            view2 = viewA;
        } else {
            view2 = null;
            rect = null;
        }
        s.a(viewGroup, new c(dVar, dVar2, z, aVarA, view2, rVar, rect));
        return obj3;
    }

    private static Object b(r rVar, b.k.a.d dVar, boolean z) {
        if (dVar == null) {
            return null;
        }
        return rVar.b(z ? dVar.getReturnTransition() : dVar.getExitTransition());
    }

    public static void b(b.k.a.a aVar, SparseArray<e> sparseArray, boolean z) {
        if (aVar.f2644a.o.a()) {
            for (int size = aVar.f2645b.size() - 1; size >= 0; size--) {
                a(aVar, aVar.f2645b.get(size), sparseArray, true, z);
            }
        }
    }

    private static void b(j jVar, int i2, e eVar, View view, b.e.a<String, String> aVar) {
        b.k.a.d dVar;
        b.k.a.d dVar2;
        r rVarA;
        Object obj;
        ViewGroup viewGroup = jVar.o.a() ? (ViewGroup) jVar.o.a(i2) : null;
        if (viewGroup == null || (rVarA = a((dVar2 = eVar.f2800d), (dVar = eVar.f2797a))) == null) {
            return;
        }
        boolean z = eVar.f2798b;
        boolean z2 = eVar.f2801e;
        ArrayList<View> arrayList = new ArrayList<>();
        ArrayList<View> arrayList2 = new ArrayList<>();
        Object objA = a(rVarA, dVar, z);
        Object objB = b(rVarA, dVar2, z2);
        Object objB2 = b(rVarA, viewGroup, view, aVar, eVar, arrayList2, arrayList, objA, objB);
        if (objA == null && objB2 == null) {
            obj = objB;
            if (obj == null) {
                return;
            }
        } else {
            obj = objB;
        }
        ArrayList<View> arrayListA = a(rVarA, obj, dVar2, arrayList2, view);
        ArrayList<View> arrayListA2 = a(rVarA, objA, dVar, arrayList, view);
        a(arrayListA2, 4);
        Object objA2 = a(rVarA, objA, obj, objB2, dVar, z);
        if (objA2 != null) {
            a(rVarA, obj, dVar2, arrayListA);
            ArrayList<String> arrayListA3 = rVarA.a(arrayList);
            rVarA.a(objA2, objA, arrayListA2, obj, arrayListA, objB2, arrayList);
            rVarA.a(viewGroup, objA2);
            rVarA.a(viewGroup, arrayList2, arrayList, arrayListA3, aVar);
            a(arrayListA2, 0);
            rVarA.b(objB2, arrayList2, arrayList);
        }
    }
}
