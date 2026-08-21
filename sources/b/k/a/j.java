package b.k.a;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import android.view.animation.Transformation;
import b.k.a.d;
import b.k.a.i;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
final class j extends b.k.a.i implements LayoutInflater.Factory2 {
    static boolean F = false;
    static Field G;
    static final Interpolator H = new DecelerateInterpolator(2.5f);
    static final Interpolator I = new DecelerateInterpolator(1.5f);
    ArrayList<n> C;
    b.k.a.k D;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ArrayList<l> f2704b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f2705c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    SparseArray<b.k.a.d> f2708f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    ArrayList<b.k.a.a> f2709g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    ArrayList<b.k.a.d> f2710h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    ArrayList<b.k.a.a> f2711i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    ArrayList<Integer> f2712j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    ArrayList<i.c> f2713k;
    b.k.a.h n;
    b.k.a.f o;
    b.k.a.d p;
    b.k.a.d q;
    boolean r;
    boolean s;
    boolean t;
    boolean u;
    String v;
    boolean w;
    ArrayList<b.k.a.a> x;
    ArrayList<Boolean> y;
    ArrayList<b.k.a.d> z;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f2706d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final ArrayList<b.k.a.d> f2707e = new ArrayList<>();
    private final CopyOnWriteArrayList<C0116j> l = new CopyOnWriteArrayList<>();
    int m = 0;
    Bundle A = null;
    SparseArray<Parcelable> B = null;
    Runnable E = new a();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j.this.q();
        }
    }

    class b extends f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ViewGroup f2715b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ b.k.a.d f2716c;

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (b.this.f2716c.getAnimatingAway() != null) {
                    b.this.f2716c.setAnimatingAway(null);
                    b bVar = b.this;
                    j jVar = j.this;
                    b.k.a.d dVar = bVar.f2716c;
                    jVar.a(dVar, dVar.getStateAfterAnimating(), 0, 0, false);
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Animation.AnimationListener animationListener, ViewGroup viewGroup, b.k.a.d dVar) {
            super(animationListener);
            this.f2715b = viewGroup;
            this.f2716c = dVar;
        }

        @Override // b.k.a.j.f, android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            super.onAnimationEnd(animation);
            this.f2715b.post(new a());
        }
    }

    class c extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewGroup f2719a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f2720b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ b.k.a.d f2721c;

        c(ViewGroup viewGroup, View view, b.k.a.d dVar) {
            this.f2719a = viewGroup;
            this.f2720b = view;
            this.f2721c = dVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f2719a.endViewTransition(this.f2720b);
            Animator animator2 = this.f2721c.getAnimator();
            this.f2721c.setAnimator(null);
            if (animator2 == null || this.f2719a.indexOfChild(this.f2720b) >= 0) {
                return;
            }
            j jVar = j.this;
            b.k.a.d dVar = this.f2721c;
            jVar.a(dVar, dVar.getStateAfterAnimating(), 0, 0, false);
        }
    }

    class d extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewGroup f2723a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f2724b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ b.k.a.d f2725c;

        d(j jVar, ViewGroup viewGroup, View view, b.k.a.d dVar) {
            this.f2723a = viewGroup;
            this.f2724b = view;
            this.f2725c = dVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f2723a.endViewTransition(this.f2724b);
            animator.removeListener(this);
            View view = this.f2725c.mView;
            if (view != null) {
                view.setVisibility(8);
            }
        }
    }

    private static class e extends f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        View f2726b;

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                e.this.f2726b.setLayerType(0, null);
            }
        }

        e(View view, Animation.AnimationListener animationListener) {
            super(animationListener);
            this.f2726b = view;
        }

        @Override // b.k.a.j.f, android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            if (b.h.o.s.y(this.f2726b) || Build.VERSION.SDK_INT >= 24) {
                this.f2726b.post(new a());
            } else {
                this.f2726b.setLayerType(0, null);
            }
            super.onAnimationEnd(animation);
        }
    }

    private static class f implements Animation.AnimationListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Animation.AnimationListener f2728a;

        f(Animation.AnimationListener animationListener) {
            this.f2728a = animationListener;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            Animation.AnimationListener animationListener = this.f2728a;
            if (animationListener != null) {
                animationListener.onAnimationEnd(animation);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
            Animation.AnimationListener animationListener = this.f2728a;
            if (animationListener != null) {
                animationListener.onAnimationRepeat(animation);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            Animation.AnimationListener animationListener = this.f2728a;
            if (animationListener != null) {
                animationListener.onAnimationStart(animation);
            }
        }
    }

    private static class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Animation f2729a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Animator f2730b;

        g(Animator animator) {
            this.f2729a = null;
            this.f2730b = animator;
            if (animator == null) {
                throw new IllegalStateException("Animator cannot be null");
            }
        }

        g(Animation animation) {
            this.f2729a = animation;
            this.f2730b = null;
            if (animation == null) {
                throw new IllegalStateException("Animation cannot be null");
            }
        }
    }

    private static class h extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        View f2731a;

        h(View view) {
            this.f2731a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f2731a.setLayerType(0, null);
            animator.removeListener(this);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f2731a.setLayerType(2, null);
        }
    }

    private static class i extends AnimationSet implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ViewGroup f2732b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final View f2733c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f2734d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f2735e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f2736f;

        i(Animation animation, ViewGroup viewGroup, View view) {
            super(false);
            this.f2736f = true;
            this.f2732b = viewGroup;
            this.f2733c = view;
            addAnimation(animation);
            this.f2732b.post(this);
        }

        @Override // android.view.animation.AnimationSet, android.view.animation.Animation
        public boolean getTransformation(long j2, Transformation transformation) {
            this.f2736f = true;
            if (this.f2734d) {
                return !this.f2735e;
            }
            if (!super.getTransformation(j2, transformation)) {
                this.f2734d = true;
                s.a(this.f2732b, this);
            }
            return true;
        }

        @Override // android.view.animation.Animation
        public boolean getTransformation(long j2, Transformation transformation, float f2) {
            this.f2736f = true;
            if (this.f2734d) {
                return !this.f2735e;
            }
            if (!super.getTransformation(j2, transformation, f2)) {
                this.f2734d = true;
                s.a(this.f2732b, this);
            }
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f2734d || !this.f2736f) {
                this.f2732b.endViewTransition(this.f2733c);
                this.f2735e = true;
            } else {
                this.f2736f = false;
                this.f2732b.post(this);
            }
        }
    }

    /* JADX INFO: renamed from: b.k.a.j$j, reason: collision with other inner class name */
    private static final class C0116j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final i.b f2737a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final boolean f2738b;
    }

    static class k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final int[] f2739a = {R.attr.name, R.attr.id, R.attr.tag};
    }

    interface l {
        boolean a(ArrayList<b.k.a.a> arrayList, ArrayList<Boolean> arrayList2);
    }

    private class m implements l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f2740a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f2741b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final int f2742c;

        m(String str, int i2, int i3) {
            this.f2740a = str;
            this.f2741b = i2;
            this.f2742c = i3;
        }

        @Override // b.k.a.j.l
        public boolean a(ArrayList<b.k.a.a> arrayList, ArrayList<Boolean> arrayList2) {
            b.k.a.i iVarPeekChildFragmentManager;
            b.k.a.d dVar = j.this.q;
            if (dVar == null || this.f2741b >= 0 || this.f2740a != null || (iVarPeekChildFragmentManager = dVar.peekChildFragmentManager()) == null || !iVarPeekChildFragmentManager.f()) {
                return j.this.a(arrayList, arrayList2, this.f2740a, this.f2741b, this.f2742c);
            }
            return false;
        }
    }

    static class n implements d.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final boolean f2744a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final b.k.a.a f2745b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f2746c;

        n(b.k.a.a aVar, boolean z) {
            this.f2744a = z;
            this.f2745b = aVar;
        }

        @Override // b.k.a.d.f
        public void a() {
            this.f2746c++;
        }

        @Override // b.k.a.d.f
        public void b() {
            this.f2746c--;
            if (this.f2746c != 0) {
                return;
            }
            this.f2745b.f2644a.y();
        }

        public void c() {
            b.k.a.a aVar = this.f2745b;
            aVar.f2644a.a(aVar, this.f2744a, false, false);
        }

        public void d() {
            boolean z = this.f2746c > 0;
            j jVar = this.f2745b.f2644a;
            int size = jVar.f2707e.size();
            for (int i2 = 0; i2 < size; i2++) {
                b.k.a.d dVar = jVar.f2707e.get(i2);
                dVar.setOnStartEnterTransitionListener(null);
                if (z && dVar.isPostponed()) {
                    dVar.startPostponedEnterTransition();
                }
            }
            b.k.a.a aVar = this.f2745b;
            aVar.f2644a.a(aVar, this.f2744a, !z, true);
        }

        public boolean e() {
            return this.f2746c == 0;
        }
    }

    static {
        new AccelerateInterpolator(2.5f);
        new AccelerateInterpolator(1.5f);
    }

    j() {
    }

    private void A() {
        SparseArray<b.k.a.d> sparseArray = this.f2708f;
        if (sparseArray != null) {
            for (int size = sparseArray.size() - 1; size >= 0; size--) {
                if (this.f2708f.valueAt(size) == null) {
                    SparseArray<b.k.a.d> sparseArray2 = this.f2708f;
                    sparseArray2.delete(sparseArray2.keyAt(size));
                }
            }
        }
    }

    private void B() {
        if (d()) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.v == null) {
            return;
        }
        throw new IllegalStateException("Can not perform this action inside of " + this.v);
    }

    private void C() {
        this.f2705c = false;
        this.y.clear();
        this.x.clear();
    }

    private void D() {
        SparseArray<b.k.a.d> sparseArray = this.f2708f;
        int size = sparseArray == null ? 0 : sparseArray.size();
        for (int i2 = 0; i2 < size; i2++) {
            b.k.a.d dVarValueAt = this.f2708f.valueAt(i2);
            if (dVarValueAt != null) {
                if (dVarValueAt.getAnimatingAway() != null) {
                    int stateAfterAnimating = dVarValueAt.getStateAfterAnimating();
                    View animatingAway = dVarValueAt.getAnimatingAway();
                    Animation animation = animatingAway.getAnimation();
                    if (animation != null) {
                        animation.cancel();
                        animatingAway.clearAnimation();
                    }
                    dVarValueAt.setAnimatingAway(null);
                    a(dVarValueAt, stateAfterAnimating, 0, 0, false);
                } else if (dVarValueAt.getAnimator() != null) {
                    dVarValueAt.getAnimator().end();
                }
            }
        }
    }

    private void E() {
        if (this.C != null) {
            while (!this.C.isEmpty()) {
                this.C.remove(0).d();
            }
        }
    }

    private int a(ArrayList<b.k.a.a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3, b.e.b<b.k.a.d> bVar) {
        int i4 = i3;
        for (int i5 = i3 - 1; i5 >= i2; i5--) {
            b.k.a.a aVar = arrayList.get(i5);
            boolean zBooleanValue = arrayList2.get(i5).booleanValue();
            if (aVar.h() && !aVar.a(arrayList, i5 + 1, i3)) {
                if (this.C == null) {
                    this.C = new ArrayList<>();
                }
                n nVar = new n(aVar, zBooleanValue);
                this.C.add(nVar);
                aVar.a(nVar);
                if (zBooleanValue) {
                    aVar.f();
                } else {
                    aVar.b(false);
                }
                i4--;
                if (i5 != i4) {
                    arrayList.remove(i5);
                    arrayList.add(i4, aVar);
                }
                a(bVar);
            }
        }
        return i4;
    }

    private static Animation.AnimationListener a(Animation animation) {
        String str;
        try {
            if (G == null) {
                G = Animation.class.getDeclaredField("mListener");
                G.setAccessible(true);
            }
            return (Animation.AnimationListener) G.get(animation);
        } catch (IllegalAccessException e2) {
            e = e2;
            str = "Cannot access Animation's mListener field";
            Log.e("FragmentManager", str, e);
            return null;
        } catch (NoSuchFieldException e3) {
            e = e3;
            str = "No field with the name mListener is found in Animation class";
            Log.e("FragmentManager", str, e);
            return null;
        }
    }

    static g a(Context context, float f2, float f3) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(f2, f3);
        alphaAnimation.setInterpolator(I);
        alphaAnimation.setDuration(220L);
        return new g(alphaAnimation);
    }

    static g a(Context context, float f2, float f3, float f4, float f5) {
        AnimationSet animationSet = new AnimationSet(false);
        ScaleAnimation scaleAnimation = new ScaleAnimation(f2, f3, f2, f3, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setInterpolator(H);
        scaleAnimation.setDuration(220L);
        animationSet.addAnimation(scaleAnimation);
        AlphaAnimation alphaAnimation = new AlphaAnimation(f4, f5);
        alphaAnimation.setInterpolator(I);
        alphaAnimation.setDuration(220L);
        animationSet.addAnimation(alphaAnimation);
        return new g(animationSet);
    }

    private static void a(View view, g gVar) {
        if (view == null || gVar == null || !b(view, gVar)) {
            return;
        }
        Animator animator = gVar.f2730b;
        if (animator != null) {
            animator.addListener(new h(view));
            return;
        }
        Animation.AnimationListener animationListenerA = a(gVar.f2729a);
        view.setLayerType(2, null);
        gVar.f2729a.setAnimationListener(new e(view, animationListenerA));
    }

    private void a(b.e.b<b.k.a.d> bVar) {
        int i2 = this.m;
        if (i2 < 1) {
            return;
        }
        int iMin = Math.min(i2, 3);
        int size = this.f2707e.size();
        for (int i3 = 0; i3 < size; i3++) {
            b.k.a.d dVar = this.f2707e.get(i3);
            if (dVar.mState < iMin) {
                a(dVar, iMin, dVar.getNextAnim(), dVar.getNextTransition(), false);
                if (dVar.mView != null && !dVar.mHidden && dVar.mIsNewlyAdded) {
                    bVar.add(dVar);
                }
            }
        }
    }

    private void a(b.k.a.d dVar, g gVar, int i2) {
        View view = dVar.mView;
        ViewGroup viewGroup = dVar.mContainer;
        viewGroup.startViewTransition(view);
        dVar.setStateAfterAnimating(i2);
        Animation animation = gVar.f2729a;
        if (animation != null) {
            i iVar = new i(animation, viewGroup, view);
            dVar.setAnimatingAway(dVar.mView);
            iVar.setAnimationListener(new b(a(iVar), viewGroup, dVar));
            a(view, gVar);
            dVar.mView.startAnimation(iVar);
            return;
        }
        Animator animator = gVar.f2730b;
        dVar.setAnimator(animator);
        animator.addListener(new c(viewGroup, view, dVar));
        animator.setTarget(dVar.mView);
        a(dVar.mView, gVar);
        animator.start();
    }

    private static void a(b.k.a.k kVar) {
        if (kVar == null) {
            return;
        }
        List<b.k.a.d> listB = kVar.b();
        if (listB != null) {
            Iterator<b.k.a.d> it = listB.iterator();
            while (it.hasNext()) {
                it.next().mRetaining = true;
            }
        }
        List<b.k.a.k> listA = kVar.a();
        if (listA != null) {
            Iterator<b.k.a.k> it2 = listA.iterator();
            while (it2.hasNext()) {
                a(it2.next());
            }
        }
    }

    private void a(RuntimeException runtimeException) {
        Log.e("FragmentManager", runtimeException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new b.h.n.b("FragmentManager"));
        b.k.a.h hVar = this.n;
        try {
            if (hVar != null) {
                hVar.a("  ", (FileDescriptor) null, printWriter, new String[0]);
            } else {
                a("  ", (FileDescriptor) null, printWriter, new String[0]);
            }
            throw runtimeException;
        } catch (Exception e2) {
            Log.e("FragmentManager", "Failed dumping state", e2);
            throw runtimeException;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0032 A[PHI: r0 r2
      0x0032: PHI (r0v8 int) = (r0v5 int), (r0v4 int) binds: [B:29:0x006b, B:15:0x0030] A[DONT_GENERATE, DONT_INLINE]
      0x0032: PHI (r2v4 int) = (r2v2 int), (r2v1 int) binds: [B:29:0x006b, B:15:0x0030] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(java.util.ArrayList<b.k.a.a> r8, java.util.ArrayList<java.lang.Boolean> r9) {
        /*
            r7 = this;
            java.util.ArrayList<b.k.a.j$n> r0 = r7.C
            r1 = 0
            if (r0 != 0) goto L7
            r0 = 0
            goto Lb
        L7:
            int r0 = r0.size()
        Lb:
            r2 = r0
            r0 = 0
        Ld:
            if (r0 >= r2) goto L74
            java.util.ArrayList<b.k.a.j$n> r3 = r7.C
            java.lang.Object r3 = r3.get(r0)
            b.k.a.j$n r3 = (b.k.a.j.n) r3
            r4 = -1
            if (r8 == 0) goto L36
            boolean r5 = r3.f2744a
            if (r5 != 0) goto L36
            b.k.a.a r5 = r3.f2745b
            int r5 = r8.indexOf(r5)
            if (r5 == r4) goto L36
            java.lang.Object r5 = r9.get(r5)
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            boolean r5 = r5.booleanValue()
            if (r5 == 0) goto L36
        L32:
            r3.c()
            goto L71
        L36:
            boolean r5 = r3.e()
            if (r5 != 0) goto L4a
            if (r8 == 0) goto L71
            b.k.a.a r5 = r3.f2745b
            int r6 = r8.size()
            boolean r5 = r5.a(r8, r1, r6)
            if (r5 == 0) goto L71
        L4a:
            java.util.ArrayList<b.k.a.j$n> r5 = r7.C
            r5.remove(r0)
            int r0 = r0 + (-1)
            int r2 = r2 + (-1)
            if (r8 == 0) goto L6e
            boolean r5 = r3.f2744a
            if (r5 != 0) goto L6e
            b.k.a.a r5 = r3.f2745b
            int r5 = r8.indexOf(r5)
            if (r5 == r4) goto L6e
            java.lang.Object r4 = r9.get(r5)
            java.lang.Boolean r4 = (java.lang.Boolean) r4
            boolean r4 = r4.booleanValue()
            if (r4 == 0) goto L6e
            goto L32
        L6e:
            r3.d()
        L71:
            int r0 = r0 + 1
            goto Ld
        L74:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: b.k.a.j.a(java.util.ArrayList, java.util.ArrayList):void");
    }

    private static void a(ArrayList<b.k.a.a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        while (i2 < i3) {
            b.k.a.a aVar = arrayList.get(i2);
            if (arrayList2.get(i2).booleanValue()) {
                aVar.a(-1);
                aVar.b(i2 == i3 + (-1));
            } else {
                aVar.a(1);
                aVar.f();
            }
            i2++;
        }
    }

    static boolean a(Animator animator) {
        if (animator == null) {
            return false;
        }
        if (animator instanceof ValueAnimator) {
            for (PropertyValuesHolder propertyValuesHolder : ((ValueAnimator) animator).getValues()) {
                if ("alpha".equals(propertyValuesHolder.getPropertyName())) {
                    return true;
                }
            }
        } else if (animator instanceof AnimatorSet) {
            ArrayList<Animator> childAnimations = ((AnimatorSet) animator).getChildAnimations();
            for (int i2 = 0; i2 < childAnimations.size(); i2++) {
                if (a(childAnimations.get(i2))) {
                    return true;
                }
            }
        }
        return false;
    }

    static boolean a(g gVar) {
        Animation animation = gVar.f2729a;
        if (animation instanceof AlphaAnimation) {
            return true;
        }
        if (!(animation instanceof AnimationSet)) {
            return a(gVar.f2730b);
        }
        List<Animation> animations = ((AnimationSet) animation).getAnimations();
        for (int i2 = 0; i2 < animations.size(); i2++) {
            if (animations.get(i2) instanceof AlphaAnimation) {
                return true;
            }
        }
        return false;
    }

    private boolean a(String str, int i2, int i3) {
        b.k.a.i iVarPeekChildFragmentManager;
        q();
        c(true);
        b.k.a.d dVar = this.q;
        if (dVar != null && i2 < 0 && str == null && (iVarPeekChildFragmentManager = dVar.peekChildFragmentManager()) != null && iVarPeekChildFragmentManager.f()) {
            return true;
        }
        boolean zA = a(this.x, this.y, str, i2, i3);
        if (zA) {
            this.f2705c = true;
            try {
                c(this.x, this.y);
            } finally {
                C();
            }
        }
        p();
        A();
        return zA;
    }

    public static int b(int i2, boolean z) {
        if (i2 == 4097) {
            return z ? 1 : 2;
        }
        if (i2 == 4099) {
            return z ? 5 : 6;
        }
        if (i2 != 8194) {
            return -1;
        }
        return z ? 3 : 4;
    }

    private void b(b.e.b<b.k.a.d> bVar) {
        int size = bVar.size();
        for (int i2 = 0; i2 < size; i2++) {
            b.k.a.d dVarC = bVar.c(i2);
            if (!dVarC.mAdded) {
                View view = dVarC.getView();
                dVarC.mPostponedAlpha = view.getAlpha();
                view.setAlpha(0.0f);
            }
        }
    }

    private void b(ArrayList<b.k.a.a> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        int i4;
        int i5;
        int i6 = i2;
        boolean z = arrayList.get(i6).t;
        ArrayList<b.k.a.d> arrayList3 = this.z;
        if (arrayList3 == null) {
            this.z = new ArrayList<>();
        } else {
            arrayList3.clear();
        }
        this.z.addAll(this.f2707e);
        b.k.a.d dVarS = s();
        boolean z2 = false;
        for (int i7 = i6; i7 < i3; i7++) {
            b.k.a.a aVar = arrayList.get(i7);
            dVarS = !arrayList2.get(i7).booleanValue() ? aVar.a(this.z, dVarS) : aVar.b(this.z, dVarS);
            z2 = z2 || aVar.f2652i;
        }
        this.z.clear();
        if (!z) {
            p.a(this, arrayList, arrayList2, i2, i3, false);
        }
        a(arrayList, arrayList2, i2, i3);
        if (z) {
            b.e.b<b.k.a.d> bVar = new b.e.b<>();
            a(bVar);
            int iA = a(arrayList, arrayList2, i2, i3, bVar);
            b(bVar);
            i4 = iA;
        } else {
            i4 = i3;
        }
        if (i4 != i6 && z) {
            p.a(this, arrayList, arrayList2, i2, i4, true);
            a(this.m, true);
        }
        while (i6 < i3) {
            b.k.a.a aVar2 = arrayList.get(i6);
            if (arrayList2.get(i6).booleanValue() && (i5 = aVar2.m) >= 0) {
                b(i5);
                aVar2.m = -1;
            }
            aVar2.i();
            i6++;
        }
        if (z2) {
            u();
        }
    }

    static boolean b(View view, g gVar) {
        return view != null && gVar != null && Build.VERSION.SDK_INT >= 19 && view.getLayerType() == 0 && b.h.o.s.w(view) && a(gVar);
    }

    private boolean b(ArrayList<b.k.a.a> arrayList, ArrayList<Boolean> arrayList2) {
        synchronized (this) {
            if (this.f2704b != null && this.f2704b.size() != 0) {
                int size = this.f2704b.size();
                boolean zA = false;
                for (int i2 = 0; i2 < size; i2++) {
                    zA |= this.f2704b.get(i2).a(arrayList, arrayList2);
                }
                this.f2704b.clear();
                this.n.e().removeCallbacks(this.E);
                return zA;
            }
            return false;
        }
    }

    private void c(ArrayList<b.k.a.a> arrayList, ArrayList<Boolean> arrayList2) {
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        if (arrayList2 == null || arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        a(arrayList, arrayList2);
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (i2 < size) {
            if (!arrayList.get(i2).t) {
                if (i3 != i2) {
                    b(arrayList, arrayList2, i3, i2);
                }
                i3 = i2 + 1;
                if (arrayList2.get(i2).booleanValue()) {
                    while (i3 < size && arrayList2.get(i3).booleanValue() && !arrayList.get(i3).t) {
                        i3++;
                    }
                }
                b(arrayList, arrayList2, i2, i3);
                i2 = i3 - 1;
            }
            i2++;
        }
        if (i3 != size) {
            b(arrayList, arrayList2, i3, size);
        }
    }

    private void c(boolean z) {
        if (this.f2705c) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (this.n == null) {
            throw new IllegalStateException("Fragment host has been destroyed");
        }
        if (Looper.myLooper() != this.n.e().getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!z) {
            B();
        }
        if (this.x == null) {
            this.x = new ArrayList<>();
            this.y = new ArrayList<>();
        }
        this.f2705c = true;
        try {
            a((ArrayList<b.k.a.a>) null, (ArrayList<Boolean>) null);
        } finally {
            this.f2705c = false;
        }
    }

    private void d(int i2) {
        try {
            this.f2705c = true;
            a(i2, false);
            this.f2705c = false;
            q();
        } catch (Throwable th) {
            this.f2705c = false;
            throw th;
        }
    }

    public static int e(int i2) {
        if (i2 == 4097) {
            return 8194;
        }
        if (i2 != 4099) {
            return i2 != 8194 ? 0 : 4097;
        }
        return 4099;
    }

    private b.k.a.d p(b.k.a.d dVar) {
        ViewGroup viewGroup = dVar.mContainer;
        View view = dVar.mView;
        if (viewGroup != null && view != null) {
            for (int iIndexOf = this.f2707e.indexOf(dVar) - 1; iIndexOf >= 0; iIndexOf--) {
                b.k.a.d dVar2 = this.f2707e.get(iIndexOf);
                if (dVar2.mContainer == viewGroup && dVar2.mView != null) {
                    return dVar2;
                }
            }
        }
        return null;
    }

    public b.k.a.d a(int i2) {
        for (int size = this.f2707e.size() - 1; size >= 0; size--) {
            b.k.a.d dVar = this.f2707e.get(size);
            if (dVar != null && dVar.mFragmentId == i2) {
                return dVar;
            }
        }
        SparseArray<b.k.a.d> sparseArray = this.f2708f;
        if (sparseArray == null) {
            return null;
        }
        for (int size2 = sparseArray.size() - 1; size2 >= 0; size2--) {
            b.k.a.d dVarValueAt = this.f2708f.valueAt(size2);
            if (dVarValueAt != null && dVarValueAt.mFragmentId == i2) {
                return dVarValueAt;
            }
        }
        return null;
    }

    public b.k.a.d a(Bundle bundle, String str) {
        int i2 = bundle.getInt(str, -1);
        if (i2 == -1) {
            return null;
        }
        b.k.a.d dVar = this.f2708f.get(i2);
        if (dVar != null) {
            return dVar;
        }
        a(new IllegalStateException("Fragment no longer exists for key " + str + ": index " + i2));
        throw null;
    }

    @Override // b.k.a.i
    public b.k.a.d a(String str) {
        if (str != null) {
            for (int size = this.f2707e.size() - 1; size >= 0; size--) {
                b.k.a.d dVar = this.f2707e.get(size);
                if (dVar != null && str.equals(dVar.mTag)) {
                    return dVar;
                }
            }
        }
        SparseArray<b.k.a.d> sparseArray = this.f2708f;
        if (sparseArray == null || str == null) {
            return null;
        }
        for (int size2 = sparseArray.size() - 1; size2 >= 0; size2--) {
            b.k.a.d dVarValueAt = this.f2708f.valueAt(size2);
            if (dVarValueAt != null && str.equals(dVarValueAt.mTag)) {
                return dVarValueAt;
            }
        }
        return null;
    }

    g a(b.k.a.d dVar, int i2, boolean z, int i3) {
        int iB;
        int nextAnim = dVar.getNextAnim();
        Animation animationOnCreateAnimation = dVar.onCreateAnimation(i2, z, nextAnim);
        if (animationOnCreateAnimation != null) {
            return new g(animationOnCreateAnimation);
        }
        Animator animatorOnCreateAnimator = dVar.onCreateAnimator(i2, z, nextAnim);
        if (animatorOnCreateAnimator != null) {
            return new g(animatorOnCreateAnimator);
        }
        if (nextAnim != 0) {
            boolean zEquals = "anim".equals(this.n.c().getResources().getResourceTypeName(nextAnim));
            boolean z2 = false;
            if (zEquals) {
                try {
                    Animation animationLoadAnimation = AnimationUtils.loadAnimation(this.n.c(), nextAnim);
                    if (animationLoadAnimation != null) {
                        return new g(animationLoadAnimation);
                    }
                    z2 = true;
                } catch (Resources.NotFoundException e2) {
                    throw e2;
                } catch (RuntimeException unused) {
                }
            }
            if (!z2) {
                try {
                    Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(this.n.c(), nextAnim);
                    if (animatorLoadAnimator != null) {
                        return new g(animatorLoadAnimator);
                    }
                } catch (RuntimeException e3) {
                    if (zEquals) {
                        throw e3;
                    }
                    Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(this.n.c(), nextAnim);
                    if (animationLoadAnimation2 != null) {
                        return new g(animationLoadAnimation2);
                    }
                }
            }
        }
        if (i2 == 0 || (iB = b(i2, z)) < 0) {
            return null;
        }
        switch (iB) {
            case 1:
                return a(this.n.c(), 1.125f, 1.0f, 0.0f, 1.0f);
            case 2:
                return a(this.n.c(), 1.0f, 0.975f, 1.0f, 0.0f);
            case 3:
                return a(this.n.c(), 0.975f, 1.0f, 0.0f, 1.0f);
            case 4:
                return a(this.n.c(), 1.0f, 1.075f, 1.0f, 0.0f);
            case 5:
                return a(this.n.c(), 0.0f, 1.0f);
            case 6:
                return a(this.n.c(), 1.0f, 0.0f);
            default:
                if (i3 != 0 || !this.n.i()) {
                    return null;
                }
                this.n.h();
                return null;
        }
    }

    @Override // b.k.a.i
    public o a() {
        return new b.k.a.a(this);
    }

    @Override // b.k.a.i
    public void a(int i2, int i3) {
        if (i2 >= 0) {
            a((l) new m(null, i2, i3), false);
            return;
        }
        throw new IllegalArgumentException("Bad id: " + i2);
    }

    public void a(int i2, b.k.a.a aVar) {
        synchronized (this) {
            if (this.f2711i == null) {
                this.f2711i = new ArrayList<>();
            }
            int size = this.f2711i.size();
            if (i2 < size) {
                if (F) {
                    Log.v("FragmentManager", "Setting back stack index " + i2 + " to " + aVar);
                }
                this.f2711i.set(i2, aVar);
            } else {
                while (size < i2) {
                    this.f2711i.add(null);
                    if (this.f2712j == null) {
                        this.f2712j = new ArrayList<>();
                    }
                    if (F) {
                        Log.v("FragmentManager", "Adding available back stack index " + size);
                    }
                    this.f2712j.add(Integer.valueOf(size));
                    size++;
                }
                if (F) {
                    Log.v("FragmentManager", "Adding back stack index " + i2 + " with " + aVar);
                }
                this.f2711i.add(aVar);
            }
        }
    }

    void a(int i2, boolean z) {
        b.k.a.h hVar;
        if (this.n == null && i2 != 0) {
            throw new IllegalStateException("No activity");
        }
        if (z || i2 != this.m) {
            this.m = i2;
            if (this.f2708f != null) {
                int size = this.f2707e.size();
                for (int i3 = 0; i3 < size; i3++) {
                    h(this.f2707e.get(i3));
                }
                int size2 = this.f2708f.size();
                for (int i4 = 0; i4 < size2; i4++) {
                    b.k.a.d dVarValueAt = this.f2708f.valueAt(i4);
                    if (dVarValueAt != null && ((dVarValueAt.mRemoving || dVarValueAt.mDetached) && !dVarValueAt.mIsNewlyAdded)) {
                        h(dVarValueAt);
                    }
                }
                z();
                if (this.r && (hVar = this.n) != null && this.m == 4) {
                    hVar.j();
                    this.r = false;
                }
            }
        }
    }

    public void a(Configuration configuration) {
        for (int i2 = 0; i2 < this.f2707e.size(); i2++) {
            b.k.a.d dVar = this.f2707e.get(i2);
            if (dVar != null) {
                dVar.performConfigurationChanged(configuration);
            }
        }
    }

    public void a(Bundle bundle, String str, b.k.a.d dVar) {
        int i2 = dVar.mIndex;
        if (i2 >= 0) {
            bundle.putInt(str, i2);
            return;
        }
        a(new IllegalStateException("Fragment " + dVar + " is not currently in the FragmentManager"));
        throw null;
    }

    void a(Parcelable parcelable, b.k.a.k kVar) {
        List<b.k.a.k> listA;
        List<androidx.lifecycle.r> listC;
        if (parcelable == null) {
            return;
        }
        b.k.a.l lVar = (b.k.a.l) parcelable;
        if (lVar.f2750b == null) {
            return;
        }
        if (kVar != null) {
            List<b.k.a.d> listB = kVar.b();
            listA = kVar.a();
            listC = kVar.c();
            int size = listB != null ? listB.size() : 0;
            for (int i2 = 0; i2 < size; i2++) {
                b.k.a.d dVar = listB.get(i2);
                if (F) {
                    Log.v("FragmentManager", "restoreAllState: re-attaching retained " + dVar);
                }
                int i3 = 0;
                while (true) {
                    b.k.a.n[] nVarArr = lVar.f2750b;
                    if (i3 >= nVarArr.length || nVarArr[i3].f2759c == dVar.mIndex) {
                        break;
                    } else {
                        i3++;
                    }
                }
                b.k.a.n[] nVarArr2 = lVar.f2750b;
                if (i3 == nVarArr2.length) {
                    a(new IllegalStateException("Could not find active fragment with index " + dVar.mIndex));
                    throw null;
                }
                b.k.a.n nVar = nVarArr2[i3];
                nVar.m = dVar;
                dVar.mSavedViewState = null;
                dVar.mBackStackNesting = 0;
                dVar.mInLayout = false;
                dVar.mAdded = false;
                dVar.mTarget = null;
                Bundle bundle = nVar.l;
                if (bundle != null) {
                    bundle.setClassLoader(this.n.c().getClassLoader());
                    dVar.mSavedViewState = nVar.l.getSparseParcelableArray("android:view_state");
                    dVar.mSavedFragmentState = nVar.l;
                }
            }
        } else {
            listA = null;
            listC = null;
        }
        this.f2708f = new SparseArray<>(lVar.f2750b.length);
        int i4 = 0;
        while (true) {
            b.k.a.n[] nVarArr3 = lVar.f2750b;
            if (i4 >= nVarArr3.length) {
                break;
            }
            b.k.a.n nVar2 = nVarArr3[i4];
            if (nVar2 != null) {
                b.k.a.d dVarA = nVar2.a(this.n, this.o, this.p, (listA == null || i4 >= listA.size()) ? null : listA.get(i4), (listC == null || i4 >= listC.size()) ? null : listC.get(i4));
                if (F) {
                    Log.v("FragmentManager", "restoreAllState: active #" + i4 + ": " + dVarA);
                }
                this.f2708f.put(dVarA.mIndex, dVarA);
                nVar2.m = null;
            }
            i4++;
        }
        if (kVar != null) {
            List<b.k.a.d> listB2 = kVar.b();
            int size2 = listB2 != null ? listB2.size() : 0;
            for (int i5 = 0; i5 < size2; i5++) {
                b.k.a.d dVar2 = listB2.get(i5);
                int i6 = dVar2.mTargetIndex;
                if (i6 >= 0) {
                    dVar2.mTarget = this.f2708f.get(i6);
                    if (dVar2.mTarget == null) {
                        Log.w("FragmentManager", "Re-attaching retained fragment " + dVar2 + " target no longer exists: " + dVar2.mTargetIndex);
                    }
                }
            }
        }
        this.f2707e.clear();
        if (lVar.f2751c != null) {
            int i7 = 0;
            while (true) {
                int[] iArr = lVar.f2751c;
                if (i7 >= iArr.length) {
                    break;
                }
                b.k.a.d dVar3 = this.f2708f.get(iArr[i7]);
                if (dVar3 == null) {
                    a(new IllegalStateException("No instantiated fragment for index #" + lVar.f2751c[i7]));
                    throw null;
                }
                dVar3.mAdded = true;
                if (F) {
                    Log.v("FragmentManager", "restoreAllState: added #" + i7 + ": " + dVar3);
                }
                if (this.f2707e.contains(dVar3)) {
                    throw new IllegalStateException("Already added!");
                }
                synchronized (this.f2707e) {
                    this.f2707e.add(dVar3);
                }
                i7++;
            }
        }
        b.k.a.b[] bVarArr = lVar.f2752d;
        if (bVarArr != null) {
            this.f2709g = new ArrayList<>(bVarArr.length);
            int i8 = 0;
            while (true) {
                b.k.a.b[] bVarArr2 = lVar.f2752d;
                if (i8 >= bVarArr2.length) {
                    break;
                }
                b.k.a.a aVarA = bVarArr2[i8].a(this);
                if (F) {
                    Log.v("FragmentManager", "restoreAllState: back stack #" + i8 + " (index " + aVarA.m + "): " + aVarA);
                    PrintWriter printWriter = new PrintWriter(new b.h.n.b("FragmentManager"));
                    aVarA.a("  ", printWriter, false);
                    printWriter.close();
                }
                this.f2709g.add(aVarA);
                int i9 = aVarA.m;
                if (i9 >= 0) {
                    a(i9, aVarA);
                }
                i8++;
            }
        } else {
            this.f2709g = null;
        }
        int i10 = lVar.f2753e;
        if (i10 >= 0) {
            this.q = this.f2708f.get(i10);
        }
        this.f2706d = lVar.f2754f;
    }

    public void a(Menu menu) {
        if (this.m < 1) {
            return;
        }
        for (int i2 = 0; i2 < this.f2707e.size(); i2++) {
            b.k.a.d dVar = this.f2707e.get(i2);
            if (dVar != null) {
                dVar.performOptionsMenuClosed(menu);
            }
        }
    }

    void a(b.k.a.a aVar) {
        if (this.f2709g == null) {
            this.f2709g = new ArrayList<>();
        }
        this.f2709g.add(aVar);
    }

    void a(b.k.a.a aVar, boolean z, boolean z2, boolean z3) {
        if (z) {
            aVar.b(z3);
        } else {
            aVar.f();
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(aVar);
        arrayList2.add(Boolean.valueOf(z));
        if (z2) {
            p.a(this, (ArrayList<b.k.a.a>) arrayList, (ArrayList<Boolean>) arrayList2, 0, 1, true);
        }
        if (z3) {
            a(this.m, true);
        }
        SparseArray<b.k.a.d> sparseArray = this.f2708f;
        if (sparseArray != null) {
            int size = sparseArray.size();
            for (int i2 = 0; i2 < size; i2++) {
                b.k.a.d dVarValueAt = this.f2708f.valueAt(i2);
                if (dVarValueAt != null && dVarValueAt.mView != null && dVarValueAt.mIsNewlyAdded && aVar.b(dVarValueAt.mContainerId)) {
                    float f2 = dVarValueAt.mPostponedAlpha;
                    if (f2 > 0.0f) {
                        dVarValueAt.mView.setAlpha(f2);
                    }
                    if (z3) {
                        dVarValueAt.mPostponedAlpha = 0.0f;
                    } else {
                        dVarValueAt.mPostponedAlpha = -1.0f;
                        dVarValueAt.mIsNewlyAdded = false;
                    }
                }
            }
        }
    }

    public void a(b.k.a.d dVar) {
        if (F) {
            Log.v("FragmentManager", "attach: " + dVar);
        }
        if (dVar.mDetached) {
            dVar.mDetached = false;
            if (dVar.mAdded) {
                return;
            }
            if (this.f2707e.contains(dVar)) {
                throw new IllegalStateException("Fragment already added: " + dVar);
            }
            if (F) {
                Log.v("FragmentManager", "add from attach: " + dVar);
            }
            synchronized (this.f2707e) {
                this.f2707e.add(dVar);
            }
            dVar.mAdded = true;
            if (dVar.mHasMenu && dVar.mMenuVisible) {
                this.r = true;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:134:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x02b4  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x03a8  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x041f  */
    /* JADX WARN: Removed duplicated region for block: B:225:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void a(b.k.a.d r17, int r18, int r19, int r20, boolean r21) {
        /*
            Method dump skipped, instruction units count: 1101
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: b.k.a.j.a(b.k.a.d, int, int, int, boolean):void");
    }

    void a(b.k.a.d dVar, Context context, boolean z) {
        b.k.a.d dVar2 = this.p;
        if (dVar2 != null) {
            b.k.a.i fragmentManager = dVar2.getFragmentManager();
            if (fragmentManager instanceof j) {
                ((j) fragmentManager).a(dVar, context, true);
            }
        }
        for (C0116j c0116j : this.l) {
            if (!z || c0116j.f2738b) {
                c0116j.f2737a.a(this, dVar, context);
            }
        }
    }

    void a(b.k.a.d dVar, Bundle bundle, boolean z) {
        b.k.a.d dVar2 = this.p;
        if (dVar2 != null) {
            b.k.a.i fragmentManager = dVar2.getFragmentManager();
            if (fragmentManager instanceof j) {
                ((j) fragmentManager).a(dVar, bundle, true);
            }
        }
        for (C0116j c0116j : this.l) {
            if (!z || c0116j.f2738b) {
                c0116j.f2737a.a(this, dVar, bundle);
            }
        }
    }

    void a(b.k.a.d dVar, View view, Bundle bundle, boolean z) {
        b.k.a.d dVar2 = this.p;
        if (dVar2 != null) {
            b.k.a.i fragmentManager = dVar2.getFragmentManager();
            if (fragmentManager instanceof j) {
                ((j) fragmentManager).a(dVar, view, bundle, true);
            }
        }
        for (C0116j c0116j : this.l) {
            if (!z || c0116j.f2738b) {
                c0116j.f2737a.a(this, dVar, view, bundle);
            }
        }
    }

    public void a(b.k.a.d dVar, boolean z) {
        if (F) {
            Log.v("FragmentManager", "add: " + dVar);
        }
        f(dVar);
        if (dVar.mDetached) {
            return;
        }
        if (this.f2707e.contains(dVar)) {
            throw new IllegalStateException("Fragment already added: " + dVar);
        }
        synchronized (this.f2707e) {
            this.f2707e.add(dVar);
        }
        dVar.mAdded = true;
        dVar.mRemoving = false;
        if (dVar.mView == null) {
            dVar.mHiddenChanged = false;
        }
        if (dVar.mHasMenu && dVar.mMenuVisible) {
            this.r = true;
        }
        if (z) {
            i(dVar);
        }
    }

    public void a(b.k.a.h hVar, b.k.a.f fVar, b.k.a.d dVar) {
        if (this.n != null) {
            throw new IllegalStateException("Already attached");
        }
        this.n = hVar;
        this.o = fVar;
        this.p = dVar;
    }

    public void a(l lVar, boolean z) {
        if (!z) {
            B();
        }
        synchronized (this) {
            if (!this.u && this.n != null) {
                if (this.f2704b == null) {
                    this.f2704b = new ArrayList<>();
                }
                this.f2704b.add(lVar);
                y();
                return;
            }
            if (!z) {
                throw new IllegalStateException("Activity has been destroyed");
            }
        }
    }

    @Override // b.k.a.i
    public void a(String str, int i2) {
        a((l) new m(str, -1, i2), false);
    }

    @Override // b.k.a.i
    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        int size3;
        int size4;
        int size5;
        String str2 = str + "    ";
        SparseArray<b.k.a.d> sparseArray = this.f2708f;
        if (sparseArray != null && (size5 = sparseArray.size()) > 0) {
            printWriter.print(str);
            printWriter.print("Active Fragments in ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(":");
            for (int i2 = 0; i2 < size5; i2++) {
                b.k.a.d dVarValueAt = this.f2708f.valueAt(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(dVarValueAt);
                if (dVarValueAt != null) {
                    dVarValueAt.dump(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }
        int size6 = this.f2707e.size();
        if (size6 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i3 = 0; i3 < size6; i3++) {
                b.k.a.d dVar = this.f2707e.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(dVar.toString());
            }
        }
        ArrayList<b.k.a.d> arrayList = this.f2710h;
        if (arrayList != null && (size4 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i4 = 0; i4 < size4; i4++) {
                b.k.a.d dVar2 = this.f2710h.get(i4);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i4);
                printWriter.print(": ");
                printWriter.println(dVar2.toString());
            }
        }
        ArrayList<b.k.a.a> arrayList2 = this.f2709g;
        if (arrayList2 != null && (size3 = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i5 = 0; i5 < size3; i5++) {
                b.k.a.a aVar = this.f2709g.get(i5);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i5);
                printWriter.print(": ");
                printWriter.println(aVar.toString());
                aVar.a(str2, fileDescriptor, printWriter, strArr);
            }
        }
        synchronized (this) {
            if (this.f2711i != null && (size2 = this.f2711i.size()) > 0) {
                printWriter.print(str);
                printWriter.println("Back Stack Indices:");
                for (int i6 = 0; i6 < size2; i6++) {
                    Object obj = (b.k.a.a) this.f2711i.get(i6);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i6);
                    printWriter.print(": ");
                    printWriter.println(obj);
                }
            }
            if (this.f2712j != null && this.f2712j.size() > 0) {
                printWriter.print(str);
                printWriter.print("mAvailBackStackIndices: ");
                printWriter.println(Arrays.toString(this.f2712j.toArray()));
            }
        }
        ArrayList<l> arrayList3 = this.f2704b;
        if (arrayList3 != null && (size = arrayList3.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Pending Actions:");
            for (int i7 = 0; i7 < size; i7++) {
                Object obj2 = (l) this.f2704b.get(i7);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i7);
                printWriter.print(": ");
                printWriter.println(obj2);
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.n);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.o);
        if (this.p != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.p);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.m);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.s);
        printWriter.print(" mStopped=");
        printWriter.print(this.t);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.u);
        if (this.r) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.r);
        }
        if (this.v != null) {
            printWriter.print(str);
            printWriter.print("  mNoTransactionsBecause=");
            printWriter.println(this.v);
        }
    }

    public void a(boolean z) {
        for (int size = this.f2707e.size() - 1; size >= 0; size--) {
            b.k.a.d dVar = this.f2707e.get(size);
            if (dVar != null) {
                dVar.performMultiWindowModeChanged(z);
            }
        }
    }

    public boolean a(Menu menu, MenuInflater menuInflater) {
        if (this.m < 1) {
            return false;
        }
        ArrayList<b.k.a.d> arrayList = null;
        boolean z = false;
        for (int i2 = 0; i2 < this.f2707e.size(); i2++) {
            b.k.a.d dVar = this.f2707e.get(i2);
            if (dVar != null && dVar.performCreateOptionsMenu(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                arrayList.add(dVar);
                z = true;
            }
        }
        if (this.f2710h != null) {
            for (int i3 = 0; i3 < this.f2710h.size(); i3++) {
                b.k.a.d dVar2 = this.f2710h.get(i3);
                if (arrayList == null || !arrayList.contains(dVar2)) {
                    dVar2.onDestroyOptionsMenu();
                }
            }
        }
        this.f2710h = arrayList;
        return z;
    }

    public boolean a(MenuItem menuItem) {
        if (this.m < 1) {
            return false;
        }
        for (int i2 = 0; i2 < this.f2707e.size(); i2++) {
            b.k.a.d dVar = this.f2707e.get(i2);
            if (dVar != null && dVar.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    boolean a(ArrayList<b.k.a.a> arrayList, ArrayList<Boolean> arrayList2, String str, int i2, int i3) {
        int size;
        ArrayList<b.k.a.a> arrayList3 = this.f2709g;
        if (arrayList3 == null) {
            return false;
        }
        if (str == null && i2 < 0 && (i3 & 1) == 0) {
            int size2 = arrayList3.size() - 1;
            if (size2 < 0) {
                return false;
            }
            arrayList.add(this.f2709g.remove(size2));
            arrayList2.add(true);
        } else {
            if (str != null || i2 >= 0) {
                size = this.f2709g.size() - 1;
                while (size >= 0) {
                    b.k.a.a aVar = this.f2709g.get(size);
                    if ((str != null && str.equals(aVar.g())) || (i2 >= 0 && i2 == aVar.m)) {
                        break;
                    }
                    size--;
                }
                if (size < 0) {
                    return false;
                }
                if ((i3 & 1) != 0) {
                    while (true) {
                        size--;
                        if (size < 0) {
                            break;
                        }
                        b.k.a.a aVar2 = this.f2709g.get(size);
                        if (str == null || !str.equals(aVar2.g())) {
                            if (i2 < 0 || i2 != aVar2.m) {
                                break;
                            }
                        }
                    }
                }
            } else {
                size = -1;
            }
            if (size == this.f2709g.size() - 1) {
                return false;
            }
            for (int size3 = this.f2709g.size() - 1; size3 > size; size3--) {
                arrayList.add(this.f2709g.remove(size3));
                arrayList2.add(true);
            }
        }
        return true;
    }

    @Override // b.k.a.i
    public int b() {
        ArrayList<b.k.a.a> arrayList = this.f2709g;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    public int b(b.k.a.a aVar) {
        synchronized (this) {
            if (this.f2712j != null && this.f2712j.size() > 0) {
                int iIntValue = this.f2712j.remove(this.f2712j.size() - 1).intValue();
                if (F) {
                    Log.v("FragmentManager", "Adding back stack index " + iIntValue + " with " + aVar);
                }
                this.f2711i.set(iIntValue, aVar);
                return iIntValue;
            }
            if (this.f2711i == null) {
                this.f2711i = new ArrayList<>();
            }
            int size = this.f2711i.size();
            if (F) {
                Log.v("FragmentManager", "Setting back stack index " + size + " to " + aVar);
            }
            this.f2711i.add(aVar);
            return size;
        }
    }

    public b.k.a.d b(String str) {
        b.k.a.d dVarFindFragmentByWho;
        SparseArray<b.k.a.d> sparseArray = this.f2708f;
        if (sparseArray == null || str == null) {
            return null;
        }
        for (int size = sparseArray.size() - 1; size >= 0; size--) {
            b.k.a.d dVarValueAt = this.f2708f.valueAt(size);
            if (dVarValueAt != null && (dVarFindFragmentByWho = dVarValueAt.findFragmentByWho(str)) != null) {
                return dVarFindFragmentByWho;
            }
        }
        return null;
    }

    public void b(int i2) {
        synchronized (this) {
            this.f2711i.set(i2, null);
            if (this.f2712j == null) {
                this.f2712j = new ArrayList<>();
            }
            if (F) {
                Log.v("FragmentManager", "Freeing back stack index " + i2);
            }
            this.f2712j.add(Integer.valueOf(i2));
        }
    }

    void b(b.k.a.d dVar) {
        Animator animator;
        if (dVar.mView != null) {
            g gVarA = a(dVar, dVar.getNextTransition(), !dVar.mHidden, dVar.getNextTransitionStyle());
            if (gVarA == null || (animator = gVarA.f2730b) == null) {
                if (gVarA != null) {
                    a(dVar.mView, gVarA);
                    dVar.mView.startAnimation(gVarA.f2729a);
                    gVarA.f2729a.start();
                }
                dVar.mView.setVisibility((!dVar.mHidden || dVar.isHideReplaced()) ? 0 : 8);
                if (dVar.isHideReplaced()) {
                    dVar.setHideReplaced(false);
                }
            } else {
                animator.setTarget(dVar.mView);
                if (!dVar.mHidden) {
                    dVar.mView.setVisibility(0);
                } else if (dVar.isHideReplaced()) {
                    dVar.setHideReplaced(false);
                } else {
                    ViewGroup viewGroup = dVar.mContainer;
                    View view = dVar.mView;
                    viewGroup.startViewTransition(view);
                    gVarA.f2730b.addListener(new d(this, viewGroup, view, dVar));
                }
                a(dVar.mView, gVarA);
                gVarA.f2730b.start();
            }
        }
        if (dVar.mAdded && dVar.mHasMenu && dVar.mMenuVisible) {
            this.r = true;
        }
        dVar.mHiddenChanged = false;
        dVar.onHiddenChanged(dVar.mHidden);
    }

    void b(b.k.a.d dVar, Context context, boolean z) {
        b.k.a.d dVar2 = this.p;
        if (dVar2 != null) {
            b.k.a.i fragmentManager = dVar2.getFragmentManager();
            if (fragmentManager instanceof j) {
                ((j) fragmentManager).b(dVar, context, true);
            }
        }
        for (C0116j c0116j : this.l) {
            if (!z || c0116j.f2738b) {
                c0116j.f2737a.b(this, dVar, context);
            }
        }
    }

    void b(b.k.a.d dVar, Bundle bundle, boolean z) {
        b.k.a.d dVar2 = this.p;
        if (dVar2 != null) {
            b.k.a.i fragmentManager = dVar2.getFragmentManager();
            if (fragmentManager instanceof j) {
                ((j) fragmentManager).b(dVar, bundle, true);
            }
        }
        for (C0116j c0116j : this.l) {
            if (!z || c0116j.f2738b) {
                c0116j.f2737a.b(this, dVar, bundle);
            }
        }
    }

    void b(b.k.a.d dVar, boolean z) {
        b.k.a.d dVar2 = this.p;
        if (dVar2 != null) {
            b.k.a.i fragmentManager = dVar2.getFragmentManager();
            if (fragmentManager instanceof j) {
                ((j) fragmentManager).b(dVar, true);
            }
        }
        for (C0116j c0116j : this.l) {
            if (!z || c0116j.f2738b) {
                c0116j.f2737a.a(this, dVar);
            }
        }
    }

    public void b(l lVar, boolean z) {
        if (z && (this.n == null || this.u)) {
            return;
        }
        c(z);
        if (lVar.a(this.x, this.y)) {
            this.f2705c = true;
            try {
                c(this.x, this.y);
            } finally {
                C();
            }
        }
        p();
        A();
    }

    public void b(boolean z) {
        for (int size = this.f2707e.size() - 1; size >= 0; size--) {
            b.k.a.d dVar = this.f2707e.get(size);
            if (dVar != null) {
                dVar.performPictureInPictureModeChanged(z);
            }
        }
    }

    public boolean b(Menu menu) {
        if (this.m < 1) {
            return false;
        }
        boolean z = false;
        for (int i2 = 0; i2 < this.f2707e.size(); i2++) {
            b.k.a.d dVar = this.f2707e.get(i2);
            if (dVar != null && dVar.performPrepareOptionsMenu(menu)) {
                z = true;
            }
        }
        return z;
    }

    public boolean b(MenuItem menuItem) {
        if (this.m < 1) {
            return false;
        }
        for (int i2 = 0; i2 < this.f2707e.size(); i2++) {
            b.k.a.d dVar = this.f2707e.get(i2);
            if (dVar != null && dVar.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    @Override // b.k.a.i
    public List<b.k.a.d> c() {
        List<b.k.a.d> list;
        if (this.f2707e.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.f2707e) {
            list = (List) this.f2707e.clone();
        }
        return list;
    }

    public void c(b.k.a.d dVar) {
        if (F) {
            Log.v("FragmentManager", "detach: " + dVar);
        }
        if (dVar.mDetached) {
            return;
        }
        dVar.mDetached = true;
        if (dVar.mAdded) {
            if (F) {
                Log.v("FragmentManager", "remove from detach: " + dVar);
            }
            synchronized (this.f2707e) {
                this.f2707e.remove(dVar);
            }
            if (dVar.mHasMenu && dVar.mMenuVisible) {
                this.r = true;
            }
            dVar.mAdded = false;
        }
    }

    void c(b.k.a.d dVar, Bundle bundle, boolean z) {
        b.k.a.d dVar2 = this.p;
        if (dVar2 != null) {
            b.k.a.i fragmentManager = dVar2.getFragmentManager();
            if (fragmentManager instanceof j) {
                ((j) fragmentManager).c(dVar, bundle, true);
            }
        }
        for (C0116j c0116j : this.l) {
            if (!z || c0116j.f2738b) {
                c0116j.f2737a.c(this, dVar, bundle);
            }
        }
    }

    void c(b.k.a.d dVar, boolean z) {
        b.k.a.d dVar2 = this.p;
        if (dVar2 != null) {
            b.k.a.i fragmentManager = dVar2.getFragmentManager();
            if (fragmentManager instanceof j) {
                ((j) fragmentManager).c(dVar, true);
            }
        }
        for (C0116j c0116j : this.l) {
            if (!z || c0116j.f2738b) {
                c0116j.f2737a.b(this, dVar);
            }
        }
    }

    boolean c(int i2) {
        return this.m >= i2;
    }

    void d(b.k.a.d dVar) {
        if (!dVar.mFromLayout || dVar.mPerformedCreateView) {
            return;
        }
        dVar.performCreateView(dVar.performGetLayoutInflater(dVar.mSavedFragmentState), null, dVar.mSavedFragmentState);
        View view = dVar.mView;
        if (view == null) {
            dVar.mInnerView = null;
            return;
        }
        dVar.mInnerView = view;
        view.setSaveFromParentEnabled(false);
        if (dVar.mHidden) {
            dVar.mView.setVisibility(8);
        }
        dVar.onViewCreated(dVar.mView, dVar.mSavedFragmentState);
        a(dVar, dVar.mView, dVar.mSavedFragmentState, false);
    }

    void d(b.k.a.d dVar, Bundle bundle, boolean z) {
        b.k.a.d dVar2 = this.p;
        if (dVar2 != null) {
            b.k.a.i fragmentManager = dVar2.getFragmentManager();
            if (fragmentManager instanceof j) {
                ((j) fragmentManager).d(dVar, bundle, true);
            }
        }
        for (C0116j c0116j : this.l) {
            if (!z || c0116j.f2738b) {
                c0116j.f2737a.d(this, dVar, bundle);
            }
        }
    }

    void d(b.k.a.d dVar, boolean z) {
        b.k.a.d dVar2 = this.p;
        if (dVar2 != null) {
            b.k.a.i fragmentManager = dVar2.getFragmentManager();
            if (fragmentManager instanceof j) {
                ((j) fragmentManager).d(dVar, true);
            }
        }
        for (C0116j c0116j : this.l) {
            if (!z || c0116j.f2738b) {
                c0116j.f2737a.c(this, dVar);
            }
        }
    }

    @Override // b.k.a.i
    public boolean d() {
        return this.s || this.t;
    }

    @Override // b.k.a.i
    public void e() {
        a((l) new m(null, -1, 0), false);
    }

    public void e(b.k.a.d dVar) {
        if (F) {
            Log.v("FragmentManager", "hide: " + dVar);
        }
        if (dVar.mHidden) {
            return;
        }
        dVar.mHidden = true;
        dVar.mHiddenChanged = true ^ dVar.mHiddenChanged;
    }

    void e(b.k.a.d dVar, boolean z) {
        b.k.a.d dVar2 = this.p;
        if (dVar2 != null) {
            b.k.a.i fragmentManager = dVar2.getFragmentManager();
            if (fragmentManager instanceof j) {
                ((j) fragmentManager).e(dVar, true);
            }
        }
        for (C0116j c0116j : this.l) {
            if (!z || c0116j.f2738b) {
                c0116j.f2737a.d(this, dVar);
            }
        }
    }

    void f(b.k.a.d dVar) {
        if (dVar.mIndex >= 0) {
            return;
        }
        int i2 = this.f2706d;
        this.f2706d = i2 + 1;
        dVar.setIndex(i2, this.p);
        if (this.f2708f == null) {
            this.f2708f = new SparseArray<>();
        }
        this.f2708f.put(dVar.mIndex, dVar);
        if (F) {
            Log.v("FragmentManager", "Allocated fragment index " + dVar);
        }
    }

    void f(b.k.a.d dVar, boolean z) {
        b.k.a.d dVar2 = this.p;
        if (dVar2 != null) {
            b.k.a.i fragmentManager = dVar2.getFragmentManager();
            if (fragmentManager instanceof j) {
                ((j) fragmentManager).f(dVar, true);
            }
        }
        for (C0116j c0116j : this.l) {
            if (!z || c0116j.f2738b) {
                c0116j.f2737a.e(this, dVar);
            }
        }
    }

    @Override // b.k.a.i
    public boolean f() {
        B();
        return a((String) null, -1, 0);
    }

    public void g() {
        this.s = false;
        this.t = false;
        d(2);
    }

    void g(b.k.a.d dVar) {
        if (dVar.mIndex < 0) {
            return;
        }
        if (F) {
            Log.v("FragmentManager", "Freeing fragment index " + dVar);
        }
        this.f2708f.put(dVar.mIndex, null);
        dVar.initState();
    }

    void g(b.k.a.d dVar, boolean z) {
        b.k.a.d dVar2 = this.p;
        if (dVar2 != null) {
            b.k.a.i fragmentManager = dVar2.getFragmentManager();
            if (fragmentManager instanceof j) {
                ((j) fragmentManager).g(dVar, true);
            }
        }
        for (C0116j c0116j : this.l) {
            if (!z || c0116j.f2738b) {
                c0116j.f2737a.f(this, dVar);
            }
        }
    }

    public void h() {
        this.s = false;
        this.t = false;
        d(1);
    }

    void h(b.k.a.d dVar) {
        if (dVar == null) {
            return;
        }
        int iMin = this.m;
        if (dVar.mRemoving) {
            iMin = dVar.isInBackStack() ? Math.min(iMin, 1) : Math.min(iMin, 0);
        }
        a(dVar, iMin, dVar.getNextTransition(), dVar.getNextTransitionStyle(), false);
        if (dVar.mView != null) {
            b.k.a.d dVarP = p(dVar);
            if (dVarP != null) {
                View view = dVarP.mView;
                ViewGroup viewGroup = dVar.mContainer;
                int iIndexOfChild = viewGroup.indexOfChild(view);
                int iIndexOfChild2 = viewGroup.indexOfChild(dVar.mView);
                if (iIndexOfChild2 < iIndexOfChild) {
                    viewGroup.removeViewAt(iIndexOfChild2);
                    viewGroup.addView(dVar.mView, iIndexOfChild);
                }
            }
            if (dVar.mIsNewlyAdded && dVar.mContainer != null) {
                float f2 = dVar.mPostponedAlpha;
                if (f2 > 0.0f) {
                    dVar.mView.setAlpha(f2);
                }
                dVar.mPostponedAlpha = 0.0f;
                dVar.mIsNewlyAdded = false;
                g gVarA = a(dVar, dVar.getNextTransition(), true, dVar.getNextTransitionStyle());
                if (gVarA != null) {
                    a(dVar.mView, gVarA);
                    Animation animation = gVarA.f2729a;
                    if (animation != null) {
                        dVar.mView.startAnimation(animation);
                    } else {
                        gVarA.f2730b.setTarget(dVar.mView);
                        gVarA.f2730b.start();
                    }
                }
            }
        }
        if (dVar.mHiddenChanged) {
            b(dVar);
        }
    }

    void h(b.k.a.d dVar, boolean z) {
        b.k.a.d dVar2 = this.p;
        if (dVar2 != null) {
            b.k.a.i fragmentManager = dVar2.getFragmentManager();
            if (fragmentManager instanceof j) {
                ((j) fragmentManager).h(dVar, true);
            }
        }
        for (C0116j c0116j : this.l) {
            if (!z || c0116j.f2738b) {
                c0116j.f2737a.g(this, dVar);
            }
        }
    }

    public void i() {
        this.u = true;
        q();
        d(0);
        this.n = null;
        this.o = null;
        this.p = null;
    }

    void i(b.k.a.d dVar) {
        a(dVar, this.m, 0, 0, false);
    }

    public void j() {
        d(1);
    }

    public void j(b.k.a.d dVar) {
        if (dVar.mDeferStart) {
            if (this.f2705c) {
                this.w = true;
            } else {
                dVar.mDeferStart = false;
                a(dVar, this.m, 0, 0, false);
            }
        }
    }

    public void k() {
        for (int i2 = 0; i2 < this.f2707e.size(); i2++) {
            b.k.a.d dVar = this.f2707e.get(i2);
            if (dVar != null) {
                dVar.performLowMemory();
            }
        }
    }

    public void k(b.k.a.d dVar) {
        if (F) {
            Log.v("FragmentManager", "remove: " + dVar + " nesting=" + dVar.mBackStackNesting);
        }
        boolean z = !dVar.isInBackStack();
        if (!dVar.mDetached || z) {
            synchronized (this.f2707e) {
                this.f2707e.remove(dVar);
            }
            if (dVar.mHasMenu && dVar.mMenuVisible) {
                this.r = true;
            }
            dVar.mAdded = false;
            dVar.mRemoving = true;
        }
    }

    Bundle l(b.k.a.d dVar) {
        Bundle bundle;
        if (this.A == null) {
            this.A = new Bundle();
        }
        dVar.performSaveInstanceState(this.A);
        d(dVar, this.A, false);
        if (this.A.isEmpty()) {
            bundle = null;
        } else {
            bundle = this.A;
            this.A = null;
        }
        if (dVar.mView != null) {
            m(dVar);
        }
        if (dVar.mSavedViewState != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray("android:view_state", dVar.mSavedViewState);
        }
        if (!dVar.mUserVisibleHint) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean("android:user_visible_hint", dVar.mUserVisibleHint);
        }
        return bundle;
    }

    public void l() {
        d(3);
    }

    public void m() {
        this.s = false;
        this.t = false;
        d(4);
    }

    void m(b.k.a.d dVar) {
        if (dVar.mInnerView == null) {
            return;
        }
        SparseArray<Parcelable> sparseArray = this.B;
        if (sparseArray == null) {
            this.B = new SparseArray<>();
        } else {
            sparseArray.clear();
        }
        dVar.mInnerView.saveHierarchyState(this.B);
        if (this.B.size() > 0) {
            dVar.mSavedViewState = this.B;
            this.B = null;
        }
    }

    public void n() {
        this.s = false;
        this.t = false;
        d(3);
    }

    public void n(b.k.a.d dVar) {
        if (dVar == null || (this.f2708f.get(dVar.mIndex) == dVar && (dVar.mHost == null || dVar.getFragmentManager() == this))) {
            this.q = dVar;
            return;
        }
        throw new IllegalArgumentException("Fragment " + dVar + " is not an active fragment of FragmentManager " + this);
    }

    public void o() {
        this.t = true;
        d(2);
    }

    public void o(b.k.a.d dVar) {
        if (F) {
            Log.v("FragmentManager", "show: " + dVar);
        }
        if (dVar.mHidden) {
            dVar.mHidden = false;
            dVar.mHiddenChanged = !dVar.mHiddenChanged;
        }
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        b.k.a.d dVar;
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k.f2739a);
        if (attributeValue == null) {
            attributeValue = typedArrayObtainStyledAttributes.getString(0);
        }
        String str2 = attributeValue;
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(1, -1);
        String string = typedArrayObtainStyledAttributes.getString(2);
        typedArrayObtainStyledAttributes.recycle();
        if (!b.k.a.d.isSupportFragmentClass(this.n.c(), str2)) {
            return null;
        }
        int id = view != null ? view.getId() : 0;
        if (id == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + str2);
        }
        b.k.a.d dVarA = resourceId != -1 ? a(resourceId) : null;
        if (dVarA == null && string != null) {
            dVarA = a(string);
        }
        if (dVarA == null && id != -1) {
            dVarA = a(id);
        }
        if (F) {
            Log.v("FragmentManager", "onCreateView: id=0x" + Integer.toHexString(resourceId) + " fname=" + str2 + " existing=" + dVarA);
        }
        if (dVarA == null) {
            b.k.a.d dVarA2 = this.o.a(context, str2, null);
            dVarA2.mFromLayout = true;
            dVarA2.mFragmentId = resourceId != 0 ? resourceId : id;
            dVarA2.mContainerId = id;
            dVarA2.mTag = string;
            dVarA2.mInLayout = true;
            dVarA2.mFragmentManager = this;
            b.k.a.h hVar = this.n;
            dVarA2.mHost = hVar;
            dVarA2.onInflate(hVar.c(), attributeSet, dVarA2.mSavedFragmentState);
            a(dVarA2, true);
            dVar = dVarA2;
        } else {
            if (dVarA.mInLayout) {
                throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + str2);
            }
            dVarA.mInLayout = true;
            b.k.a.h hVar2 = this.n;
            dVarA.mHost = hVar2;
            if (!dVarA.mRetaining) {
                dVarA.onInflate(hVar2.c(), attributeSet, dVarA.mSavedFragmentState);
            }
            dVar = dVarA;
        }
        if (this.m >= 1 || !dVar.mFromLayout) {
            i(dVar);
        } else {
            a(dVar, 1, 0, 0, false);
        }
        View view2 = dVar.mView;
        if (view2 != null) {
            if (resourceId != 0) {
                view2.setId(resourceId);
            }
            if (dVar.mView.getTag() == null) {
                dVar.mView.setTag(string);
            }
            return dVar.mView;
        }
        throw new IllegalStateException("Fragment " + str2 + " did not create a view.");
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    void p() {
        if (this.w) {
            this.w = false;
            z();
        }
    }

    public boolean q() {
        c(true);
        boolean z = false;
        while (b(this.x, this.y)) {
            this.f2705c = true;
            try {
                c(this.x, this.y);
                C();
                z = true;
            } catch (Throwable th) {
                C();
                throw th;
            }
        }
        p();
        A();
        return z;
    }

    LayoutInflater.Factory2 r() {
        return this;
    }

    public b.k.a.d s() {
        return this.q;
    }

    public void t() {
        this.D = null;
        this.s = false;
        this.t = false;
        int size = this.f2707e.size();
        for (int i2 = 0; i2 < size; i2++) {
            b.k.a.d dVar = this.f2707e.get(i2);
            if (dVar != null) {
                dVar.noteStateNotSaved();
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Object obj = this.p;
        if (obj == null) {
            obj = this.n;
        }
        b.h.n.a.a(obj, sb);
        sb.append("}}");
        return sb.toString();
    }

    void u() {
        if (this.f2713k != null) {
            for (int i2 = 0; i2 < this.f2713k.size(); i2++) {
                this.f2713k.get(i2).a();
            }
        }
    }

    b.k.a.k v() {
        a(this.D);
        return this.D;
    }

    Parcelable w() {
        int[] iArr;
        int size;
        E();
        D();
        q();
        this.s = true;
        b.k.a.b[] bVarArr = null;
        this.D = null;
        SparseArray<b.k.a.d> sparseArray = this.f2708f;
        if (sparseArray == null || sparseArray.size() <= 0) {
            return null;
        }
        int size2 = this.f2708f.size();
        b.k.a.n[] nVarArr = new b.k.a.n[size2];
        boolean z = false;
        for (int i2 = 0; i2 < size2; i2++) {
            b.k.a.d dVarValueAt = this.f2708f.valueAt(i2);
            if (dVarValueAt != null) {
                if (dVarValueAt.mIndex < 0) {
                    a(new IllegalStateException("Failure saving state: active " + dVarValueAt + " has cleared index: " + dVarValueAt.mIndex));
                    throw null;
                }
                b.k.a.n nVar = new b.k.a.n(dVarValueAt);
                nVarArr[i2] = nVar;
                if (dVarValueAt.mState <= 0 || nVar.l != null) {
                    nVar.l = dVarValueAt.mSavedFragmentState;
                } else {
                    nVar.l = l(dVarValueAt);
                    b.k.a.d dVar = dVarValueAt.mTarget;
                    if (dVar != null) {
                        if (dVar.mIndex < 0) {
                            a(new IllegalStateException("Failure saving state: " + dVarValueAt + " has target not in fragment manager: " + dVarValueAt.mTarget));
                            throw null;
                        }
                        if (nVar.l == null) {
                            nVar.l = new Bundle();
                        }
                        a(nVar.l, "android:target_state", dVarValueAt.mTarget);
                        int i3 = dVarValueAt.mTargetRequestCode;
                        if (i3 != 0) {
                            nVar.l.putInt("android:target_req_state", i3);
                        }
                    }
                }
                if (F) {
                    Log.v("FragmentManager", "Saved state of " + dVarValueAt + ": " + nVar.l);
                }
                z = true;
            }
        }
        if (!z) {
            if (F) {
                Log.v("FragmentManager", "saveAllState: no fragments!");
            }
            return null;
        }
        int size3 = this.f2707e.size();
        if (size3 > 0) {
            iArr = new int[size3];
            for (int i4 = 0; i4 < size3; i4++) {
                iArr[i4] = this.f2707e.get(i4).mIndex;
                if (iArr[i4] < 0) {
                    a(new IllegalStateException("Failure saving state: active " + this.f2707e.get(i4) + " has cleared index: " + iArr[i4]));
                    throw null;
                }
                if (F) {
                    Log.v("FragmentManager", "saveAllState: adding fragment #" + i4 + ": " + this.f2707e.get(i4));
                }
            }
        } else {
            iArr = null;
        }
        ArrayList<b.k.a.a> arrayList = this.f2709g;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            bVarArr = new b.k.a.b[size];
            for (int i5 = 0; i5 < size; i5++) {
                bVarArr[i5] = new b.k.a.b(this.f2709g.get(i5));
                if (F) {
                    Log.v("FragmentManager", "saveAllState: adding back stack #" + i5 + ": " + this.f2709g.get(i5));
                }
            }
        }
        b.k.a.l lVar = new b.k.a.l();
        lVar.f2750b = nVarArr;
        lVar.f2751c = iArr;
        lVar.f2752d = bVarArr;
        b.k.a.d dVar2 = this.q;
        if (dVar2 != null) {
            lVar.f2753e = dVar2.mIndex;
        }
        lVar.f2754f = this.f2706d;
        x();
        return lVar;
    }

    void x() {
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        b.k.a.k kVar;
        if (this.f2708f != null) {
            arrayList = null;
            arrayList2 = null;
            arrayList3 = null;
            for (int i2 = 0; i2 < this.f2708f.size(); i2++) {
                b.k.a.d dVarValueAt = this.f2708f.valueAt(i2);
                if (dVarValueAt != null) {
                    if (dVarValueAt.mRetainInstance) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(dVarValueAt);
                        b.k.a.d dVar = dVarValueAt.mTarget;
                        dVarValueAt.mTargetIndex = dVar != null ? dVar.mIndex : -1;
                        if (F) {
                            Log.v("FragmentManager", "retainNonConfig: keeping retained " + dVarValueAt);
                        }
                    }
                    j jVar = dVarValueAt.mChildFragmentManager;
                    if (jVar != null) {
                        jVar.x();
                        kVar = dVarValueAt.mChildFragmentManager.D;
                    } else {
                        kVar = dVarValueAt.mChildNonConfig;
                    }
                    if (arrayList2 == null && kVar != null) {
                        arrayList2 = new ArrayList(this.f2708f.size());
                        for (int i3 = 0; i3 < i2; i3++) {
                            arrayList2.add(null);
                        }
                    }
                    if (arrayList2 != null) {
                        arrayList2.add(kVar);
                    }
                    if (arrayList3 == null && dVarValueAt.mViewModelStore != null) {
                        arrayList3 = new ArrayList(this.f2708f.size());
                        for (int i4 = 0; i4 < i2; i4++) {
                            arrayList3.add(null);
                        }
                    }
                    if (arrayList3 != null) {
                        arrayList3.add(dVarValueAt.mViewModelStore);
                    }
                }
            }
        } else {
            arrayList = null;
            arrayList2 = null;
            arrayList3 = null;
        }
        if (arrayList == null && arrayList2 == null && arrayList3 == null) {
            this.D = null;
        } else {
            this.D = new b.k.a.k(arrayList, arrayList2, arrayList3);
        }
    }

    void y() {
        synchronized (this) {
            boolean z = false;
            boolean z2 = (this.C == null || this.C.isEmpty()) ? false : true;
            if (this.f2704b != null && this.f2704b.size() == 1) {
                z = true;
            }
            if (z2 || z) {
                this.n.e().removeCallbacks(this.E);
                this.n.e().post(this.E);
            }
        }
    }

    void z() {
        if (this.f2708f == null) {
            return;
        }
        for (int i2 = 0; i2 < this.f2708f.size(); i2++) {
            b.k.a.d dVarValueAt = this.f2708f.valueAt(i2);
            if (dVarValueAt != null) {
                j(dVarValueAt);
            }
        }
    }
}
