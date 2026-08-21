package b.q;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public class d extends j0 {

    class a extends o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f2894a;

        a(d dVar, View view) {
            this.f2894a = view;
        }

        @Override // b.q.n.g
        public void c(n nVar) {
            e0.a(this.f2894a, 1.0f);
            e0.a(this.f2894a);
            nVar.removeListener(this);
        }
    }

    private static class b extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final View f2895a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f2896b = false;

        b(View view) {
            this.f2895a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            e0.a(this.f2895a, 1.0f);
            if (this.f2896b) {
                this.f2895a.setLayerType(0, null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (b.h.o.s.w(this.f2895a) && this.f2895a.getLayerType() == 0) {
                this.f2896b = true;
                this.f2895a.setLayerType(2, null);
            }
        }
    }

    public d(int i2) {
        a(i2);
    }

    private static float a(t tVar, float f2) {
        Float f3;
        return (tVar == null || (f3 = (Float) tVar.f2975a.get("android:fade:transitionAlpha")) == null) ? f2 : f3.floatValue();
    }

    private Animator a(View view, float f2, float f3) {
        if (f2 == f3) {
            return null;
        }
        e0.a(view, f2);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, e0.f2911d, f3);
        objectAnimatorOfFloat.addListener(new b(view));
        addListener(new a(this, view));
        return objectAnimatorOfFloat;
    }

    @Override // b.q.j0
    public Animator a(ViewGroup viewGroup, View view, t tVar, t tVar2) {
        float fA = a(tVar, 0.0f);
        return a(view, fA != 1.0f ? fA : 0.0f, 1.0f);
    }

    @Override // b.q.j0
    public Animator b(ViewGroup viewGroup, View view, t tVar, t tVar2) {
        e0.e(view);
        return a(view, a(tVar, 1.0f), 0.0f);
    }

    @Override // b.q.j0, b.q.n
    public void captureStartValues(t tVar) {
        super.captureStartValues(tVar);
        tVar.f2975a.put("android:fade:transitionAlpha", Float.valueOf(e0.c(tVar.f2976b)));
    }
}
