package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class g extends v {
    private static TimeInterpolator s;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ArrayList<RecyclerView.d0> f1281h = new ArrayList<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ArrayList<RecyclerView.d0> f1282i = new ArrayList<>();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ArrayList<j> f1283j = new ArrayList<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ArrayList<i> f1284k = new ArrayList<>();
    ArrayList<ArrayList<RecyclerView.d0>> l = new ArrayList<>();
    ArrayList<ArrayList<j>> m = new ArrayList<>();
    ArrayList<ArrayList<i>> n = new ArrayList<>();
    ArrayList<RecyclerView.d0> o = new ArrayList<>();
    ArrayList<RecyclerView.d0> p = new ArrayList<>();
    ArrayList<RecyclerView.d0> q = new ArrayList<>();
    ArrayList<RecyclerView.d0> r = new ArrayList<>();

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArrayList f1285b;

        a(ArrayList arrayList) {
            this.f1285b = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (j jVar : this.f1285b) {
                g.this.b(jVar.f1319a, jVar.f1320b, jVar.f1321c, jVar.f1322d, jVar.f1323e);
            }
            this.f1285b.clear();
            g.this.m.remove(this.f1285b);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArrayList f1287b;

        b(ArrayList arrayList) {
            this.f1287b = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = this.f1287b.iterator();
            while (it.hasNext()) {
                g.this.a((i) it.next());
            }
            this.f1287b.clear();
            g.this.n.remove(this.f1287b);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArrayList f1289b;

        c(ArrayList arrayList) {
            this.f1289b = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = this.f1289b.iterator();
            while (it.hasNext()) {
                g.this.t((RecyclerView.d0) it.next());
            }
            this.f1289b.clear();
            g.this.l.remove(this.f1289b);
        }
    }

    class d extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ RecyclerView.d0 f1291a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ViewPropertyAnimator f1292b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f1293c;

        d(RecyclerView.d0 d0Var, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.f1291a = d0Var;
            this.f1292b = viewPropertyAnimator;
            this.f1293c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f1292b.setListener(null);
            this.f1293c.setAlpha(1.0f);
            g.this.l(this.f1291a);
            g.this.q.remove(this.f1291a);
            g.this.j();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            g.this.m(this.f1291a);
        }
    }

    class e extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ RecyclerView.d0 f1295a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f1296b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ ViewPropertyAnimator f1297c;

        e(RecyclerView.d0 d0Var, View view, ViewPropertyAnimator viewPropertyAnimator) {
            this.f1295a = d0Var;
            this.f1296b = view;
            this.f1297c = viewPropertyAnimator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f1296b.setAlpha(1.0f);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f1297c.setListener(null);
            g.this.h(this.f1295a);
            g.this.o.remove(this.f1295a);
            g.this.j();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            g.this.i(this.f1295a);
        }
    }

    class f extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ RecyclerView.d0 f1299a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f1300b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f1301c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f1302d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ ViewPropertyAnimator f1303e;

        f(RecyclerView.d0 d0Var, int i2, View view, int i3, ViewPropertyAnimator viewPropertyAnimator) {
            this.f1299a = d0Var;
            this.f1300b = i2;
            this.f1301c = view;
            this.f1302d = i3;
            this.f1303e = viewPropertyAnimator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            if (this.f1300b != 0) {
                this.f1301c.setTranslationX(0.0f);
            }
            if (this.f1302d != 0) {
                this.f1301c.setTranslationY(0.0f);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f1303e.setListener(null);
            g.this.j(this.f1299a);
            g.this.p.remove(this.f1299a);
            g.this.j();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            g.this.k(this.f1299a);
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.g$g, reason: collision with other inner class name */
    class C0024g extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ i f1305a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ViewPropertyAnimator f1306b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f1307c;

        C0024g(i iVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.f1305a = iVar;
            this.f1306b = viewPropertyAnimator;
            this.f1307c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f1306b.setListener(null);
            this.f1307c.setAlpha(1.0f);
            this.f1307c.setTranslationX(0.0f);
            this.f1307c.setTranslationY(0.0f);
            g.this.a(this.f1305a.f1313a, true);
            g.this.r.remove(this.f1305a.f1313a);
            g.this.j();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            g.this.b(this.f1305a.f1313a, true);
        }
    }

    class h extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ i f1309a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ViewPropertyAnimator f1310b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f1311c;

        h(i iVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
            this.f1309a = iVar;
            this.f1310b = viewPropertyAnimator;
            this.f1311c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f1310b.setListener(null);
            this.f1311c.setAlpha(1.0f);
            this.f1311c.setTranslationX(0.0f);
            this.f1311c.setTranslationY(0.0f);
            g.this.a(this.f1309a.f1314b, false);
            g.this.r.remove(this.f1309a.f1314b);
            g.this.j();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            g.this.b(this.f1309a.f1314b, false);
        }
    }

    private static class i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public RecyclerView.d0 f1313a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public RecyclerView.d0 f1314b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f1315c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f1316d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f1317e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f1318f;

        private i(RecyclerView.d0 d0Var, RecyclerView.d0 d0Var2) {
            this.f1313a = d0Var;
            this.f1314b = d0Var2;
        }

        i(RecyclerView.d0 d0Var, RecyclerView.d0 d0Var2, int i2, int i3, int i4, int i5) {
            this(d0Var, d0Var2);
            this.f1315c = i2;
            this.f1316d = i3;
            this.f1317e = i4;
            this.f1318f = i5;
        }

        public String toString() {
            return "ChangeInfo{oldHolder=" + this.f1313a + ", newHolder=" + this.f1314b + ", fromX=" + this.f1315c + ", fromY=" + this.f1316d + ", toX=" + this.f1317e + ", toY=" + this.f1318f + '}';
        }
    }

    private static class j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public RecyclerView.d0 f1319a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1320b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f1321c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f1322d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f1323e;

        j(RecyclerView.d0 d0Var, int i2, int i3, int i4, int i5) {
            this.f1319a = d0Var;
            this.f1320b = i2;
            this.f1321c = i3;
            this.f1322d = i4;
            this.f1323e = i5;
        }
    }

    private void a(List<i> list, RecyclerView.d0 d0Var) {
        for (int size = list.size() - 1; size >= 0; size--) {
            i iVar = list.get(size);
            if (a(iVar, d0Var) && iVar.f1313a == null && iVar.f1314b == null) {
                list.remove(iVar);
            }
        }
    }

    private boolean a(i iVar, RecyclerView.d0 d0Var) {
        boolean z = false;
        if (iVar.f1314b == d0Var) {
            iVar.f1314b = null;
        } else {
            if (iVar.f1313a != d0Var) {
                return false;
            }
            iVar.f1313a = null;
            z = true;
        }
        d0Var.itemView.setAlpha(1.0f);
        d0Var.itemView.setTranslationX(0.0f);
        d0Var.itemView.setTranslationY(0.0f);
        a(d0Var, z);
        return true;
    }

    private void b(i iVar) {
        RecyclerView.d0 d0Var = iVar.f1313a;
        if (d0Var != null) {
            a(iVar, d0Var);
        }
        RecyclerView.d0 d0Var2 = iVar.f1314b;
        if (d0Var2 != null) {
            a(iVar, d0Var2);
        }
    }

    private void u(RecyclerView.d0 d0Var) {
        View view = d0Var.itemView;
        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.q.add(d0Var);
        viewPropertyAnimatorAnimate.setDuration(f()).alpha(0.0f).setListener(new d(d0Var, viewPropertyAnimatorAnimate, view)).start();
    }

    private void v(RecyclerView.d0 d0Var) {
        if (s == null) {
            s = new ValueAnimator().getInterpolator();
        }
        d0Var.itemView.animate().setInterpolator(s);
        c(d0Var);
    }

    void a(i iVar) {
        RecyclerView.d0 d0Var = iVar.f1313a;
        View view = d0Var == null ? null : d0Var.itemView;
        RecyclerView.d0 d0Var2 = iVar.f1314b;
        View view2 = d0Var2 != null ? d0Var2.itemView : null;
        if (view != null) {
            ViewPropertyAnimator duration = view.animate().setDuration(d());
            this.r.add(iVar.f1313a);
            duration.translationX(iVar.f1317e - iVar.f1315c);
            duration.translationY(iVar.f1318f - iVar.f1316d);
            duration.alpha(0.0f).setListener(new C0024g(iVar, duration, view)).start();
        }
        if (view2 != null) {
            ViewPropertyAnimator viewPropertyAnimatorAnimate = view2.animate();
            this.r.add(iVar.f1314b);
            viewPropertyAnimatorAnimate.translationX(0.0f).translationY(0.0f).setDuration(d()).alpha(1.0f).setListener(new h(iVar, viewPropertyAnimatorAnimate, view2)).start();
        }
    }

    void a(List<RecyclerView.d0> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            list.get(size).itemView.animate().cancel();
        }
    }

    @Override // androidx.recyclerview.widget.v
    public boolean a(RecyclerView.d0 d0Var, int i2, int i3, int i4, int i5) {
        View view = d0Var.itemView;
        int translationX = i2 + ((int) view.getTranslationX());
        int translationY = i3 + ((int) d0Var.itemView.getTranslationY());
        v(d0Var);
        int i6 = i4 - translationX;
        int i7 = i5 - translationY;
        if (i6 == 0 && i7 == 0) {
            j(d0Var);
            return false;
        }
        if (i6 != 0) {
            view.setTranslationX(-i6);
        }
        if (i7 != 0) {
            view.setTranslationY(-i7);
        }
        this.f1283j.add(new j(d0Var, translationX, translationY, i4, i5));
        return true;
    }

    @Override // androidx.recyclerview.widget.v
    public boolean a(RecyclerView.d0 d0Var, RecyclerView.d0 d0Var2, int i2, int i3, int i4, int i5) {
        if (d0Var == d0Var2) {
            return a(d0Var, i2, i3, i4, i5);
        }
        float translationX = d0Var.itemView.getTranslationX();
        float translationY = d0Var.itemView.getTranslationY();
        float alpha = d0Var.itemView.getAlpha();
        v(d0Var);
        int i6 = (int) ((i4 - i2) - translationX);
        int i7 = (int) ((i5 - i3) - translationY);
        d0Var.itemView.setTranslationX(translationX);
        d0Var.itemView.setTranslationY(translationY);
        d0Var.itemView.setAlpha(alpha);
        if (d0Var2 != null) {
            v(d0Var2);
            d0Var2.itemView.setTranslationX(-i6);
            d0Var2.itemView.setTranslationY(-i7);
            d0Var2.itemView.setAlpha(0.0f);
        }
        this.f1284k.add(new i(d0Var, d0Var2, i2, i3, i4, i5));
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public boolean a(RecyclerView.d0 d0Var, List<Object> list) {
        return !list.isEmpty() || super.a(d0Var, list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public void b() {
        int size = this.f1283j.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            j jVar = this.f1283j.get(size);
            View view = jVar.f1319a.itemView;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            j(jVar.f1319a);
            this.f1283j.remove(size);
        }
        for (int size2 = this.f1281h.size() - 1; size2 >= 0; size2--) {
            l(this.f1281h.get(size2));
            this.f1281h.remove(size2);
        }
        int size3 = this.f1282i.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            RecyclerView.d0 d0Var = this.f1282i.get(size3);
            d0Var.itemView.setAlpha(1.0f);
            h(d0Var);
            this.f1282i.remove(size3);
        }
        for (int size4 = this.f1284k.size() - 1; size4 >= 0; size4--) {
            b(this.f1284k.get(size4));
        }
        this.f1284k.clear();
        if (g()) {
            for (int size5 = this.m.size() - 1; size5 >= 0; size5--) {
                ArrayList<j> arrayList = this.m.get(size5);
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    j jVar2 = arrayList.get(size6);
                    View view2 = jVar2.f1319a.itemView;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    j(jVar2.f1319a);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.m.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.l.size() - 1; size7 >= 0; size7--) {
                ArrayList<RecyclerView.d0> arrayList2 = this.l.get(size7);
                for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                    RecyclerView.d0 d0Var2 = arrayList2.get(size8);
                    d0Var2.itemView.setAlpha(1.0f);
                    h(d0Var2);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.l.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.n.size() - 1; size9 >= 0; size9--) {
                ArrayList<i> arrayList3 = this.n.get(size9);
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    b(arrayList3.get(size10));
                    if (arrayList3.isEmpty()) {
                        this.n.remove(arrayList3);
                    }
                }
            }
            a(this.q);
            a(this.p);
            a(this.o);
            a(this.r);
            a();
        }
    }

    void b(RecyclerView.d0 d0Var, int i2, int i3, int i4, int i5) {
        View view = d0Var.itemView;
        int i6 = i4 - i2;
        int i7 = i5 - i3;
        if (i6 != 0) {
            view.animate().translationX(0.0f);
        }
        if (i7 != 0) {
            view.animate().translationY(0.0f);
        }
        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.p.add(d0Var);
        viewPropertyAnimatorAnimate.setDuration(e()).setListener(new f(d0Var, i6, view, i7, viewPropertyAnimatorAnimate)).start();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public void c(RecyclerView.d0 d0Var) {
        View view = d0Var.itemView;
        view.animate().cancel();
        int size = this.f1283j.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (this.f1283j.get(size).f1319a == d0Var) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                j(d0Var);
                this.f1283j.remove(size);
            }
        }
        a(this.f1284k, d0Var);
        if (this.f1281h.remove(d0Var)) {
            view.setAlpha(1.0f);
            l(d0Var);
        }
        if (this.f1282i.remove(d0Var)) {
            view.setAlpha(1.0f);
            h(d0Var);
        }
        for (int size2 = this.n.size() - 1; size2 >= 0; size2--) {
            ArrayList<i> arrayList = this.n.get(size2);
            a(arrayList, d0Var);
            if (arrayList.isEmpty()) {
                this.n.remove(size2);
            }
        }
        for (int size3 = this.m.size() - 1; size3 >= 0; size3--) {
            ArrayList<j> arrayList2 = this.m.get(size3);
            int size4 = arrayList2.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                }
                if (arrayList2.get(size4).f1319a == d0Var) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    j(d0Var);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.m.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        for (int size5 = this.l.size() - 1; size5 >= 0; size5--) {
            ArrayList<RecyclerView.d0> arrayList3 = this.l.get(size5);
            if (arrayList3.remove(d0Var)) {
                view.setAlpha(1.0f);
                h(d0Var);
                if (arrayList3.isEmpty()) {
                    this.l.remove(size5);
                }
            }
        }
        this.q.remove(d0Var);
        this.o.remove(d0Var);
        this.r.remove(d0Var);
        this.p.remove(d0Var);
        j();
    }

    @Override // androidx.recyclerview.widget.v
    public boolean f(RecyclerView.d0 d0Var) {
        v(d0Var);
        d0Var.itemView.setAlpha(0.0f);
        this.f1282i.add(d0Var);
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public boolean g() {
        return (this.f1282i.isEmpty() && this.f1284k.isEmpty() && this.f1283j.isEmpty() && this.f1281h.isEmpty() && this.p.isEmpty() && this.q.isEmpty() && this.o.isEmpty() && this.r.isEmpty() && this.m.isEmpty() && this.l.isEmpty() && this.n.isEmpty()) ? false : true;
    }

    @Override // androidx.recyclerview.widget.v
    public boolean g(RecyclerView.d0 d0Var) {
        v(d0Var);
        this.f1281h.add(d0Var);
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public void i() {
        boolean z = !this.f1281h.isEmpty();
        boolean z2 = !this.f1283j.isEmpty();
        boolean z3 = !this.f1284k.isEmpty();
        boolean z4 = !this.f1282i.isEmpty();
        if (z || z2 || z4 || z3) {
            Iterator<RecyclerView.d0> it = this.f1281h.iterator();
            while (it.hasNext()) {
                u(it.next());
            }
            this.f1281h.clear();
            if (z2) {
                ArrayList<j> arrayList = new ArrayList<>();
                arrayList.addAll(this.f1283j);
                this.m.add(arrayList);
                this.f1283j.clear();
                a aVar = new a(arrayList);
                if (z) {
                    b.h.o.s.a(arrayList.get(0).f1319a.itemView, aVar, f());
                } else {
                    aVar.run();
                }
            }
            if (z3) {
                ArrayList<i> arrayList2 = new ArrayList<>();
                arrayList2.addAll(this.f1284k);
                this.n.add(arrayList2);
                this.f1284k.clear();
                b bVar = new b(arrayList2);
                if (z) {
                    b.h.o.s.a(arrayList2.get(0).f1313a.itemView, bVar, f());
                } else {
                    bVar.run();
                }
            }
            if (z4) {
                ArrayList<RecyclerView.d0> arrayList3 = new ArrayList<>();
                arrayList3.addAll(this.f1282i);
                this.l.add(arrayList3);
                this.f1282i.clear();
                c cVar = new c(arrayList3);
                if (z || z2 || z3) {
                    b.h.o.s.a(arrayList3.get(0).itemView, cVar, (z ? f() : 0L) + Math.max(z2 ? e() : 0L, z3 ? d() : 0L));
                } else {
                    cVar.run();
                }
            }
        }
    }

    void j() {
        if (g()) {
            return;
        }
        a();
    }

    void t(RecyclerView.d0 d0Var) {
        View view = d0Var.itemView;
        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.o.add(d0Var);
        viewPropertyAnimatorAnimate.alpha(1.0f).setDuration(c()).setListener(new e(d0Var, view, viewPropertyAnimatorAnimate)).start();
    }
}
