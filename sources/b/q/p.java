package b.q;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static n f2958a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static ThreadLocal<WeakReference<b.e.a<ViewGroup, ArrayList<n>>>> f2959b = new ThreadLocal<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static ArrayList<ViewGroup> f2960c = new ArrayList<>();

    private static class a implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        n f2961b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        ViewGroup f2962c;

        /* JADX INFO: renamed from: b.q.p$a$a, reason: collision with other inner class name */
        class C0124a extends o {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ b.e.a f2963a;

            C0124a(b.e.a aVar) {
                this.f2963a = aVar;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // b.q.n.g
            public void c(n nVar) {
                ((ArrayList) this.f2963a.get(a.this.f2962c)).remove(nVar);
            }
        }

        a(n nVar, ViewGroup viewGroup) {
            this.f2961b = nVar;
            this.f2962c = viewGroup;
        }

        private void a() {
            this.f2962c.getViewTreeObserver().removeOnPreDrawListener(this);
            this.f2962c.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            a();
            if (!p.f2960c.remove(this.f2962c)) {
                return true;
            }
            b.e.a<ViewGroup, ArrayList<n>> aVarA = p.a();
            ArrayList<n> arrayList = aVarA.get(this.f2962c);
            ArrayList arrayList2 = null;
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                aVarA.put(this.f2962c, arrayList);
            } else if (arrayList.size() > 0) {
                arrayList2 = new ArrayList(arrayList);
            }
            arrayList.add(this.f2961b);
            this.f2961b.addListener(new C0124a(aVarA));
            this.f2961b.captureValues(this.f2962c, false);
            if (arrayList2 != null) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((n) it.next()).resume(this.f2962c);
                }
            }
            this.f2961b.playTransition(this.f2962c);
            return true;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            a();
            p.f2960c.remove(this.f2962c);
            ArrayList<n> arrayList = p.a().get(this.f2962c);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator<n> it = arrayList.iterator();
                while (it.hasNext()) {
                    it.next().resume(this.f2962c);
                }
            }
            this.f2961b.clearValues(true);
        }
    }

    static b.e.a<ViewGroup, ArrayList<n>> a() {
        b.e.a<ViewGroup, ArrayList<n>> aVar;
        WeakReference<b.e.a<ViewGroup, ArrayList<n>>> weakReference = f2959b.get();
        if (weakReference != null && (aVar = weakReference.get()) != null) {
            return aVar;
        }
        b.e.a<ViewGroup, ArrayList<n>> aVar2 = new b.e.a<>();
        f2959b.set(new WeakReference<>(aVar2));
        return aVar2;
    }

    public static void a(ViewGroup viewGroup, n nVar) {
        if (f2960c.contains(viewGroup) || !b.h.o.s.z(viewGroup)) {
            return;
        }
        f2960c.add(viewGroup);
        if (nVar == null) {
            nVar = f2958a;
        }
        n nVarMo3clone = nVar.mo3clone();
        c(viewGroup, nVarMo3clone);
        l.a(viewGroup, null);
        b(viewGroup, nVarMo3clone);
    }

    private static void b(ViewGroup viewGroup, n nVar) {
        if (nVar == null || viewGroup == null) {
            return;
        }
        a aVar = new a(nVar, viewGroup);
        viewGroup.addOnAttachStateChangeListener(aVar);
        viewGroup.getViewTreeObserver().addOnPreDrawListener(aVar);
    }

    private static void c(ViewGroup viewGroup, n nVar) {
        ArrayList<n> arrayList = a().get(viewGroup);
        if (arrayList != null && arrayList.size() > 0) {
            Iterator<n> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().pause(viewGroup);
            }
        }
        if (nVar != null) {
            nVar.captureValues(viewGroup, true);
        }
        l lVarA = l.a(viewGroup);
        if (lVarA != null) {
            lVarA.a();
        }
    }
}
