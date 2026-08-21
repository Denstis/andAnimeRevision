package b.k.a;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import b.h.o.u;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class r {

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f2814b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ArrayList f2815c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ ArrayList f2816d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ ArrayList f2817e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ ArrayList f2818f;

        a(r rVar, int i2, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
            this.f2814b = i2;
            this.f2815c = arrayList;
            this.f2816d = arrayList2;
            this.f2817e = arrayList3;
            this.f2818f = arrayList4;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (int i2 = 0; i2 < this.f2814b; i2++) {
                b.h.o.s.a((View) this.f2815c.get(i2), (String) this.f2816d.get(i2));
                b.h.o.s.a((View) this.f2817e.get(i2), (String) this.f2818f.get(i2));
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArrayList f2819b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f2820c;

        b(r rVar, ArrayList arrayList, Map map) {
            this.f2819b = arrayList;
            this.f2820c = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            int size = this.f2819b.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = (View) this.f2819b.get(i2);
                String strQ = b.h.o.s.q(view);
                if (strQ != null) {
                    b.h.o.s.a(view, r.a((Map<String, String>) this.f2820c, strQ));
                }
            }
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArrayList f2821b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Map f2822c;

        c(r rVar, ArrayList arrayList, Map map) {
            this.f2821b = arrayList;
            this.f2822c = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            int size = this.f2821b.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = (View) this.f2821b.get(i2);
                b.h.o.s.a(view, (String) this.f2822c.get(b.h.o.s.q(view)));
            }
        }
    }

    static String a(Map<String, String> map, String str) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (str.equals(entry.getValue())) {
                return entry.getKey();
            }
        }
        return null;
    }

    protected static void a(List<View> list, View view) {
        int size = list.size();
        if (a(list, view, size)) {
            return;
        }
        list.add(view);
        for (int i2 = size; i2 < list.size(); i2++) {
            View view2 = list.get(i2);
            if (view2 instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view2;
                int childCount = viewGroup.getChildCount();
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt = viewGroup.getChildAt(i3);
                    if (!a(list, childAt, size)) {
                        list.add(childAt);
                    }
                }
            }
        }
    }

    protected static boolean a(List list) {
        return list == null || list.isEmpty();
    }

    private static boolean a(List<View> list, View view, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            if (list.get(i3) == view) {
                return true;
            }
        }
        return false;
    }

    public abstract Object a(Object obj, Object obj2, Object obj3);

    ArrayList<String> a(ArrayList<View> arrayList) {
        ArrayList<String> arrayList2 = new ArrayList<>();
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = arrayList.get(i2);
            arrayList2.add(b.h.o.s.q(view));
            b.h.o.s.a(view, (String) null);
        }
        return arrayList2;
    }

    protected void a(View view, Rect rect) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        rect.set(iArr[0], iArr[1], iArr[0] + view.getWidth(), iArr[1] + view.getHeight());
    }

    void a(View view, ArrayList<View> arrayList, ArrayList<View> arrayList2, ArrayList<String> arrayList3, Map<String, String> map) {
        int size = arrayList2.size();
        ArrayList arrayList4 = new ArrayList();
        for (int i2 = 0; i2 < size; i2++) {
            View view2 = arrayList.get(i2);
            String strQ = b.h.o.s.q(view2);
            arrayList4.add(strQ);
            if (strQ != null) {
                b.h.o.s.a(view2, (String) null);
                String str = map.get(strQ);
                int i3 = 0;
                while (true) {
                    if (i3 >= size) {
                        break;
                    }
                    if (str.equals(arrayList3.get(i3))) {
                        b.h.o.s.a(arrayList2.get(i3), strQ);
                        break;
                    }
                    i3++;
                }
            }
        }
        s.a(view, new a(this, size, arrayList2, arrayList3, arrayList, arrayList4));
    }

    void a(View view, ArrayList<View> arrayList, Map<String, String> map) {
        s.a(view, new b(this, arrayList, map));
    }

    public abstract void a(ViewGroup viewGroup, Object obj);

    void a(ViewGroup viewGroup, ArrayList<View> arrayList, Map<String, String> map) {
        s.a(viewGroup, new c(this, arrayList, map));
    }

    public abstract void a(Object obj, Rect rect);

    public abstract void a(Object obj, View view);

    public abstract void a(Object obj, View view, ArrayList<View> arrayList);

    public abstract void a(Object obj, Object obj2, ArrayList<View> arrayList, Object obj3, ArrayList<View> arrayList2, Object obj4, ArrayList<View> arrayList3);

    public abstract void a(Object obj, ArrayList<View> arrayList);

    public abstract void a(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    void a(ArrayList<View> arrayList, View view) {
        if (view.getVisibility() == 0) {
            boolean z = view instanceof ViewGroup;
            View view2 = view;
            if (z) {
                ViewGroup viewGroup = (ViewGroup) view;
                boolean zA = u.a(viewGroup);
                view2 = viewGroup;
                if (!zA) {
                    int childCount = viewGroup.getChildCount();
                    for (int i2 = 0; i2 < childCount; i2++) {
                        a(arrayList, viewGroup.getChildAt(i2));
                    }
                    return;
                }
            }
            arrayList.add(view2);
        }
    }

    void a(Map<String, View> map, View view) {
        if (view.getVisibility() == 0) {
            String strQ = b.h.o.s.q(view);
            if (strQ != null) {
                map.put(strQ, view);
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    a(map, viewGroup.getChildAt(i2));
                }
            }
        }
    }

    public abstract boolean a(Object obj);

    public abstract Object b(Object obj);

    public abstract Object b(Object obj, Object obj2, Object obj3);

    public abstract void b(Object obj, View view);

    public abstract void b(Object obj, View view, ArrayList<View> arrayList);

    public abstract void b(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2);

    public abstract Object c(Object obj);

    public abstract void c(Object obj, View view);
}
