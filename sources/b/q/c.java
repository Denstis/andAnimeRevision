package b.q;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class c extends n {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String[] f2861e = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Property<Drawable, PointF> f2862f = new b(PointF.class, "boundsOrigin");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Property<k, PointF> f2863g = new C0123c(PointF.class, "topLeft");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Property<k, PointF> f2864h = new d(PointF.class, "bottomRight");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Property<View, PointF> f2865i = new e(PointF.class, "bottomRight");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Property<View, PointF> f2866j = new f(PointF.class, "topLeft");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Property<View, PointF> f2867k = new g(PointF.class, "position");
    private static b.q.k l = new b.q.k();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int[] f2868b = new int[2];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f2869c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f2870d = false;

    class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewGroup f2871a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ BitmapDrawable f2872b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f2873c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ float f2874d;

        a(c cVar, ViewGroup viewGroup, BitmapDrawable bitmapDrawable, View view, float f2) {
            this.f2871a = viewGroup;
            this.f2872b = bitmapDrawable;
            this.f2873c = view;
            this.f2874d = f2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            e0.b(this.f2871a).b(this.f2872b);
            e0.a(this.f2873c, this.f2874d);
        }
    }

    static class b extends Property<Drawable, PointF> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Rect f2875a;

        b(Class cls, String str) {
            super(cls, str);
            this.f2875a = new Rect();
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(Drawable drawable) {
            drawable.copyBounds(this.f2875a);
            Rect rect = this.f2875a;
            return new PointF(rect.left, rect.top);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(Drawable drawable, PointF pointF) {
            drawable.copyBounds(this.f2875a);
            this.f2875a.offsetTo(Math.round(pointF.x), Math.round(pointF.y));
            drawable.setBounds(this.f2875a);
        }
    }

    /* JADX INFO: renamed from: b.q.c$c, reason: collision with other inner class name */
    static class C0123c extends Property<k, PointF> {
        C0123c(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(k kVar) {
            return null;
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(k kVar, PointF pointF) {
            kVar.b(pointF);
        }
    }

    static class d extends Property<k, PointF> {
        d(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(k kVar) {
            return null;
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(k kVar, PointF pointF) {
            kVar.a(pointF);
        }
    }

    static class e extends Property<View, PointF> {
        e(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(View view, PointF pointF) {
            e0.a(view, view.getLeft(), view.getTop(), Math.round(pointF.x), Math.round(pointF.y));
        }
    }

    static class f extends Property<View, PointF> {
        f(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(View view, PointF pointF) {
            e0.a(view, Math.round(pointF.x), Math.round(pointF.y), view.getRight(), view.getBottom());
        }
    }

    static class g extends Property<View, PointF> {
        g(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(View view, PointF pointF) {
            int iRound = Math.round(pointF.x);
            int iRound2 = Math.round(pointF.y);
            e0.a(view, iRound, iRound2, view.getWidth() + iRound, view.getHeight() + iRound2);
        }
    }

    class h extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ k f2876a;
        private k mViewBounds;

        h(c cVar, k kVar) {
            this.f2876a = kVar;
            this.mViewBounds = this.f2876a;
        }
    }

    class i extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f2877a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f2878b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Rect f2879c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f2880d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f2881e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f2882f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ int f2883g;

        i(c cVar, View view, Rect rect, int i2, int i3, int i4, int i5) {
            this.f2878b = view;
            this.f2879c = rect;
            this.f2880d = i2;
            this.f2881e = i3;
            this.f2882f = i4;
            this.f2883g = i5;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f2877a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f2877a) {
                return;
            }
            b.h.o.s.a(this.f2878b, this.f2879c);
            e0.a(this.f2878b, this.f2880d, this.f2881e, this.f2882f, this.f2883g);
        }
    }

    class j extends o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f2884a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ViewGroup f2885b;

        j(c cVar, ViewGroup viewGroup) {
            this.f2885b = viewGroup;
        }

        @Override // b.q.o, b.q.n.g
        public void b(n nVar) {
            y.a(this.f2885b, false);
        }

        @Override // b.q.n.g
        public void c(n nVar) {
            if (!this.f2884a) {
                y.a(this.f2885b, false);
            }
            nVar.removeListener(this);
        }

        @Override // b.q.o, b.q.n.g
        public void d(n nVar) {
            y.a(this.f2885b, false);
            this.f2884a = true;
        }

        @Override // b.q.o, b.q.n.g
        public void e(n nVar) {
            y.a(this.f2885b, true);
        }
    }

    private static class k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f2886a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f2887b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f2888c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f2889d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private View f2890e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f2891f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f2892g;

        k(View view) {
            this.f2890e = view;
        }

        private void a() {
            e0.a(this.f2890e, this.f2886a, this.f2887b, this.f2888c, this.f2889d);
            this.f2891f = 0;
            this.f2892g = 0;
        }

        void a(PointF pointF) {
            this.f2888c = Math.round(pointF.x);
            this.f2889d = Math.round(pointF.y);
            this.f2892g++;
            if (this.f2891f == this.f2892g) {
                a();
            }
        }

        void b(PointF pointF) {
            this.f2886a = Math.round(pointF.x);
            this.f2887b = Math.round(pointF.y);
            this.f2891f++;
            if (this.f2891f == this.f2892g) {
                a();
            }
        }
    }

    private boolean a(View view, View view2) {
        if (!this.f2870d) {
            return true;
        }
        t matchedTransitionValues = getMatchedTransitionValues(view, true);
        if (matchedTransitionValues == null) {
            if (view == view2) {
                return true;
            }
        } else if (view2 == matchedTransitionValues.f2976b) {
            return true;
        }
        return false;
    }

    private void captureValues(t tVar) {
        View view = tVar.f2976b;
        if (!b.h.o.s.z(view) && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        tVar.f2975a.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        tVar.f2975a.put("android:changeBounds:parent", tVar.f2976b.getParent());
        if (this.f2870d) {
            tVar.f2976b.getLocationInWindow(this.f2868b);
            tVar.f2975a.put("android:changeBounds:windowX", Integer.valueOf(this.f2868b[0]));
            tVar.f2975a.put("android:changeBounds:windowY", Integer.valueOf(this.f2868b[1]));
        }
        if (this.f2869c) {
            tVar.f2975a.put("android:changeBounds:clip", b.h.o.s.e(view));
        }
    }

    @Override // b.q.n
    public void captureEndValues(t tVar) {
        captureValues(tVar);
    }

    @Override // b.q.n
    public void captureStartValues(t tVar) {
        captureValues(tVar);
    }

    @Override // b.q.n
    public Animator createAnimator(ViewGroup viewGroup, t tVar, t tVar2) {
        int i2;
        View view;
        int i3;
        Rect rect;
        ObjectAnimator objectAnimatorOfObject;
        Animator animatorA;
        Path pathA;
        Property<View, PointF> property;
        if (tVar == null || tVar2 == null) {
            return null;
        }
        Map<String, Object> map = tVar.f2975a;
        Map<String, Object> map2 = tVar2.f2975a;
        ViewGroup viewGroup2 = (ViewGroup) map.get("android:changeBounds:parent");
        ViewGroup viewGroup3 = (ViewGroup) map2.get("android:changeBounds:parent");
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        View view2 = tVar2.f2976b;
        if (!a(viewGroup2, viewGroup3)) {
            int iIntValue = ((Integer) tVar.f2975a.get("android:changeBounds:windowX")).intValue();
            int iIntValue2 = ((Integer) tVar.f2975a.get("android:changeBounds:windowY")).intValue();
            int iIntValue3 = ((Integer) tVar2.f2975a.get("android:changeBounds:windowX")).intValue();
            int iIntValue4 = ((Integer) tVar2.f2975a.get("android:changeBounds:windowY")).intValue();
            if (iIntValue == iIntValue3 && iIntValue2 == iIntValue4) {
                return null;
            }
            viewGroup.getLocationInWindow(this.f2868b);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view2.getWidth(), view2.getHeight(), Bitmap.Config.ARGB_8888);
            view2.draw(new Canvas(bitmapCreateBitmap));
            BitmapDrawable bitmapDrawable = new BitmapDrawable(bitmapCreateBitmap);
            float fC = e0.c(view2);
            e0.a(view2, 0.0f);
            e0.b(viewGroup).a(bitmapDrawable);
            b.q.g pathMotion = getPathMotion();
            int[] iArr = this.f2868b;
            ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(bitmapDrawable, b.q.i.a(f2862f, pathMotion.a(iIntValue - iArr[0], iIntValue2 - iArr[1], iIntValue3 - iArr[0], iIntValue4 - iArr[1])));
            objectAnimatorOfPropertyValuesHolder.addListener(new a(this, viewGroup, bitmapDrawable, view2, fC));
            return objectAnimatorOfPropertyValuesHolder;
        }
        Rect rect2 = (Rect) tVar.f2975a.get("android:changeBounds:bounds");
        Rect rect3 = (Rect) tVar2.f2975a.get("android:changeBounds:bounds");
        int i4 = rect2.left;
        int i5 = rect3.left;
        int i6 = rect2.top;
        int i7 = rect3.top;
        int i8 = rect2.right;
        int i9 = rect3.right;
        int i10 = rect2.bottom;
        int i11 = rect3.bottom;
        int i12 = i8 - i4;
        int i13 = i10 - i6;
        int i14 = i9 - i5;
        int i15 = i11 - i7;
        Rect rect4 = (Rect) tVar.f2975a.get("android:changeBounds:clip");
        Rect rect5 = (Rect) tVar2.f2975a.get("android:changeBounds:clip");
        if ((i12 == 0 || i13 == 0) && (i14 == 0 || i15 == 0)) {
            i2 = 0;
        } else {
            i2 = (i4 == i5 && i6 == i7) ? 0 : 1;
            if (i8 != i9 || i10 != i11) {
                i2++;
            }
        }
        if ((rect4 != null && !rect4.equals(rect5)) || (rect4 == null && rect5 != null)) {
            i2++;
        }
        if (i2 <= 0) {
            return null;
        }
        if (this.f2869c) {
            view = view2;
            e0.a(view, i4, i6, Math.max(i12, i14) + i4, Math.max(i13, i15) + i6);
            ObjectAnimator objectAnimatorA = (i4 == i5 && i6 == i7) ? null : b.q.f.a(view, f2867k, getPathMotion().a(i4, i6, i5, i7));
            if (rect4 == null) {
                i3 = 0;
                rect = new Rect(0, 0, i12, i13);
            } else {
                i3 = 0;
                rect = rect4;
            }
            Rect rect6 = rect5 == null ? new Rect(i3, i3, i14, i15) : rect5;
            if (rect.equals(rect6)) {
                objectAnimatorOfObject = null;
            } else {
                b.h.o.s.a(view, rect);
                b.q.k kVar = l;
                Object[] objArr = new Object[2];
                objArr[i3] = rect;
                objArr[1] = rect6;
                objectAnimatorOfObject = ObjectAnimator.ofObject(view, "clipBounds", kVar, objArr);
                objectAnimatorOfObject.addListener(new i(this, view, rect5, i5, i7, i9, i11));
            }
            animatorA = s.a(objectAnimatorA, objectAnimatorOfObject);
        } else {
            view = view2;
            e0.a(view, i4, i6, i8, i10);
            if (i2 == 2) {
                if (i12 == i14 && i13 == i15) {
                    pathA = getPathMotion().a(i4, i6, i5, i7);
                    property = f2867k;
                } else {
                    k kVar2 = new k(view);
                    ObjectAnimator objectAnimatorA2 = b.q.f.a(kVar2, f2863g, getPathMotion().a(i4, i6, i5, i7));
                    ObjectAnimator objectAnimatorA3 = b.q.f.a(kVar2, f2864h, getPathMotion().a(i8, i10, i9, i11));
                    AnimatorSet animatorSet = new AnimatorSet();
                    animatorSet.playTogether(objectAnimatorA2, objectAnimatorA3);
                    animatorSet.addListener(new h(this, kVar2));
                    animatorA = animatorSet;
                }
            } else if (i4 == i5 && i6 == i7) {
                pathA = getPathMotion().a(i8, i10, i9, i11);
                property = f2865i;
            } else {
                pathA = getPathMotion().a(i4, i6, i5, i7);
                property = f2866j;
            }
            animatorA = b.q.f.a(view, property, pathA);
        }
        if (view.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup4 = (ViewGroup) view.getParent();
            y.a(viewGroup4, true);
            addListener(new j(this, viewGroup4));
        }
        return animatorA;
    }

    @Override // b.q.n
    public String[] getTransitionProperties() {
        return f2861e;
    }
}
