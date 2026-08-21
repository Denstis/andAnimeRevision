package b.q;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import b.q.a;
import b.q.n;

/* JADX INFO: loaded from: classes.dex */
public abstract class j0 extends n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String[] f2928c = {"android:visibility:visibility", "android:visibility:parent"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f2929b = 3;

    class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ x f2930a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f2931b;

        a(j0 j0Var, x xVar, View view) {
            this.f2930a = xVar;
            this.f2931b = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f2930a.b(this.f2931b);
        }
    }

    private static class b extends AnimatorListenerAdapter implements n.g, a.InterfaceC0122a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final View f2932a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f2933b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final ViewGroup f2934c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f2935d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f2936e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f2937f = false;

        b(View view, int i2, boolean z) {
            this.f2932a = view;
            this.f2933b = i2;
            this.f2934c = (ViewGroup) view.getParent();
            this.f2935d = z;
            a(true);
        }

        private void a() {
            if (!this.f2937f) {
                e0.a(this.f2932a, this.f2933b);
                ViewGroup viewGroup = this.f2934c;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            a(false);
        }

        private void a(boolean z) {
            ViewGroup viewGroup;
            if (!this.f2935d || this.f2936e == z || (viewGroup = this.f2934c) == null) {
                return;
            }
            this.f2936e = z;
            y.a(viewGroup, z);
        }

        @Override // b.q.n.g
        public void a(n nVar) {
        }

        @Override // b.q.n.g
        public void b(n nVar) {
            a(false);
        }

        @Override // b.q.n.g
        public void c(n nVar) {
            a();
            nVar.removeListener(this);
        }

        @Override // b.q.n.g
        public void d(n nVar) {
        }

        @Override // b.q.n.g
        public void e(n nVar) {
            a(true);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f2937f = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, b.q.a.InterfaceC0122a
        public void onAnimationPause(Animator animator) {
            if (this.f2937f) {
                return;
            }
            e0.a(this.f2932a, this.f2933b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, b.q.a.InterfaceC0122a
        public void onAnimationResume(Animator animator) {
            if (this.f2937f) {
                return;
            }
            e0.a(this.f2932a, 0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f2938a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f2939b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f2940c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f2941d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        ViewGroup f2942e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        ViewGroup f2943f;

        c() {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0079, code lost:
    
        if (r9 == 0) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0083, code lost:
    
        if (r0.f2942e == null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0095, code lost:
    
        if (r0.f2940c == 0) goto L41;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private b.q.j0.c a(b.q.t r8, b.q.t r9) {
        /*
            r7 = this;
            b.q.j0$c r0 = new b.q.j0$c
            r0.<init>()
            r1 = 0
            r0.f2938a = r1
            r0.f2939b = r1
            java.lang.String r2 = "android:visibility:parent"
            r3 = 0
            r4 = -1
            java.lang.String r5 = "android:visibility:visibility"
            if (r8 == 0) goto L33
            java.util.Map<java.lang.String, java.lang.Object> r6 = r8.f2975a
            boolean r6 = r6.containsKey(r5)
            if (r6 == 0) goto L33
            java.util.Map<java.lang.String, java.lang.Object> r6 = r8.f2975a
            java.lang.Object r6 = r6.get(r5)
            java.lang.Integer r6 = (java.lang.Integer) r6
            int r6 = r6.intValue()
            r0.f2940c = r6
            java.util.Map<java.lang.String, java.lang.Object> r6 = r8.f2975a
            java.lang.Object r6 = r6.get(r2)
            android.view.ViewGroup r6 = (android.view.ViewGroup) r6
            r0.f2942e = r6
            goto L37
        L33:
            r0.f2940c = r4
            r0.f2942e = r3
        L37:
            if (r9 == 0) goto L5a
            java.util.Map<java.lang.String, java.lang.Object> r6 = r9.f2975a
            boolean r6 = r6.containsKey(r5)
            if (r6 == 0) goto L5a
            java.util.Map<java.lang.String, java.lang.Object> r3 = r9.f2975a
            java.lang.Object r3 = r3.get(r5)
            java.lang.Integer r3 = (java.lang.Integer) r3
            int r3 = r3.intValue()
            r0.f2941d = r3
            java.util.Map<java.lang.String, java.lang.Object> r3 = r9.f2975a
            java.lang.Object r2 = r3.get(r2)
            android.view.ViewGroup r2 = (android.view.ViewGroup) r2
            r0.f2943f = r2
            goto L5e
        L5a:
            r0.f2941d = r4
            r0.f2943f = r3
        L5e:
            r2 = 1
            if (r8 == 0) goto L86
            if (r9 == 0) goto L86
            int r8 = r0.f2940c
            int r9 = r0.f2941d
            if (r8 != r9) goto L70
            android.view.ViewGroup r8 = r0.f2942e
            android.view.ViewGroup r9 = r0.f2943f
            if (r8 != r9) goto L70
            return r0
        L70:
            int r8 = r0.f2940c
            int r9 = r0.f2941d
            if (r8 == r9) goto L7c
            if (r8 != 0) goto L79
            goto L97
        L79:
            if (r9 != 0) goto L9a
            goto L8c
        L7c:
            android.view.ViewGroup r8 = r0.f2943f
            if (r8 != 0) goto L81
            goto L97
        L81:
            android.view.ViewGroup r8 = r0.f2942e
            if (r8 != 0) goto L9a
            goto L8c
        L86:
            if (r8 != 0) goto L91
            int r8 = r0.f2941d
            if (r8 != 0) goto L91
        L8c:
            r0.f2939b = r2
        L8e:
            r0.f2938a = r2
            goto L9a
        L91:
            if (r9 != 0) goto L9a
            int r8 = r0.f2940c
            if (r8 != 0) goto L9a
        L97:
            r0.f2939b = r1
            goto L8e
        L9a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: b.q.j0.a(b.q.t, b.q.t):b.q.j0$c");
    }

    private void captureValues(t tVar) {
        tVar.f2975a.put("android:visibility:visibility", Integer.valueOf(tVar.f2976b.getVisibility()));
        tVar.f2975a.put("android:visibility:parent", tVar.f2976b.getParent());
        int[] iArr = new int[2];
        tVar.f2976b.getLocationOnScreen(iArr);
        tVar.f2975a.put("android:visibility:screenLocation", iArr);
    }

    public abstract Animator a(ViewGroup viewGroup, View view, t tVar, t tVar2);

    public Animator a(ViewGroup viewGroup, t tVar, int i2, t tVar2, int i3) {
        if ((this.f2929b & 1) != 1 || tVar2 == null) {
            return null;
        }
        if (tVar == null) {
            View view = (View) tVar2.f2976b.getParent();
            if (a(getMatchedTransitionValues(view, false), getTransitionValues(view, false)).f2938a) {
                return null;
            }
        }
        return a(viewGroup, tVar2.f2976b, tVar, tVar2);
    }

    public void a(int i2) {
        if ((i2 & (-4)) != 0) {
            throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
        }
        this.f2929b = i2;
    }

    public abstract Animator b(ViewGroup viewGroup, View view, t tVar, t tVar2);

    public Animator b(ViewGroup viewGroup, t tVar, int i2, t tVar2, int i3) {
        View view;
        int id;
        if ((this.f2929b & 2) != 2) {
            return null;
        }
        View viewA = tVar != null ? tVar.f2976b : null;
        View view2 = tVar2 != null ? tVar2.f2976b : null;
        if (view2 == null || view2.getParent() == null) {
            if (view2 != null) {
                viewA = view2;
            } else {
                if (viewA != null) {
                    if (viewA.getParent() != null) {
                        if (viewA.getParent() instanceof View) {
                            view = (View) viewA.getParent();
                            if (!a(getTransitionValues(view, true), getMatchedTransitionValues(view, true)).f2938a) {
                                viewA = s.a(viewGroup, viewA, view);
                            } else if (view.getParent() != null || (id = view.getId()) == -1 || viewGroup.findViewById(id) == null || !this.mCanRemoveViews) {
                                viewA = null;
                            }
                        }
                    }
                }
                viewA = null;
                view2 = null;
            }
            view2 = null;
        } else if (i3 == 4 || viewA == view2) {
            viewA = null;
        } else {
            if (!this.mCanRemoveViews) {
                view = (View) viewA.getParent();
                viewA = s.a(viewGroup, viewA, view);
            }
            view2 = null;
        }
        if (viewA == null || tVar == null) {
            if (view2 == null) {
                return null;
            }
            int visibility = view2.getVisibility();
            e0.a(view2, 0);
            Animator animatorB = b(viewGroup, view2, tVar, tVar2);
            if (animatorB != null) {
                b bVar = new b(view2, i3, true);
                animatorB.addListener(bVar);
                b.q.a.a(animatorB, bVar);
                addListener(bVar);
            } else {
                e0.a(view2, visibility);
            }
            return animatorB;
        }
        int[] iArr = (int[]) tVar.f2975a.get("android:visibility:screenLocation");
        int i4 = iArr[0];
        int i5 = iArr[1];
        int[] iArr2 = new int[2];
        viewGroup.getLocationOnScreen(iArr2);
        viewA.offsetLeftAndRight((i4 - iArr2[0]) - viewA.getLeft());
        viewA.offsetTopAndBottom((i5 - iArr2[1]) - viewA.getTop());
        x xVarA = y.a(viewGroup);
        xVarA.a(viewA);
        Animator animatorB2 = b(viewGroup, viewA, tVar, tVar2);
        if (animatorB2 == null) {
            xVarA.b(viewA);
        } else {
            animatorB2.addListener(new a(this, xVarA, viewA));
        }
        return animatorB2;
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
        c cVarA = a(tVar, tVar2);
        if (!cVarA.f2938a) {
            return null;
        }
        if (cVarA.f2942e == null && cVarA.f2943f == null) {
            return null;
        }
        return cVarA.f2939b ? a(viewGroup, tVar, cVarA.f2940c, tVar2, cVarA.f2941d) : b(viewGroup, tVar, cVarA.f2940c, tVar2, cVarA.f2941d);
    }

    @Override // b.q.n
    public String[] getTransitionProperties() {
        return f2928c;
    }

    @Override // b.q.n
    public boolean isTransitionRequired(t tVar, t tVar2) {
        if (tVar == null && tVar2 == null) {
            return false;
        }
        if (tVar != null && tVar2 != null && tVar2.f2975a.containsKey("android:visibility:visibility") != tVar.f2975a.containsKey("android:visibility:visibility")) {
            return false;
        }
        c cVarA = a(tVar, tVar2);
        if (cVarA.f2938a) {
            return cVarA.f2940c == 0 || cVarA.f2941d == 0;
        }
        return false;
    }
}
