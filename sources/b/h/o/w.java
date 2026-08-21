package b.h.o;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.os.Build;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakReference<View> f2604a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Runnable f2605b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Runnable f2606c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f2607d = -1;

    class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ x f2608a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f2609b;

        a(w wVar, x xVar, View view) {
            this.f2608a = xVar;
            this.f2609b = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f2608a.a(this.f2609b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f2608a.b(this.f2609b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f2608a.c(this.f2609b);
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ z f2610a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f2611b;

        b(w wVar, z zVar, View view) {
            this.f2610a = zVar;
            this.f2611b = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f2610a.a(this.f2611b);
        }
    }

    static class c implements x {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        w f2612a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f2613b;

        c(w wVar) {
            this.f2612a = wVar;
        }

        @Override // b.h.o.x
        public void a(View view) {
            Object tag = view.getTag(2113929216);
            x xVar = tag instanceof x ? (x) tag : null;
            if (xVar != null) {
                xVar.a(view);
            }
        }

        @Override // b.h.o.x
        public void b(View view) {
            int i2 = this.f2612a.f2607d;
            if (i2 > -1) {
                view.setLayerType(i2, null);
                this.f2612a.f2607d = -1;
            }
            if (Build.VERSION.SDK_INT >= 16 || !this.f2613b) {
                w wVar = this.f2612a;
                Runnable runnable = wVar.f2606c;
                if (runnable != null) {
                    wVar.f2606c = null;
                    runnable.run();
                }
                Object tag = view.getTag(2113929216);
                x xVar = tag instanceof x ? (x) tag : null;
                if (xVar != null) {
                    xVar.b(view);
                }
                this.f2613b = true;
            }
        }

        @Override // b.h.o.x
        public void c(View view) {
            this.f2613b = false;
            if (this.f2612a.f2607d > -1) {
                view.setLayerType(2, null);
            }
            w wVar = this.f2612a;
            Runnable runnable = wVar.f2605b;
            if (runnable != null) {
                wVar.f2605b = null;
                runnable.run();
            }
            Object tag = view.getTag(2113929216);
            x xVar = tag instanceof x ? (x) tag : null;
            if (xVar != null) {
                xVar.c(view);
            }
        }
    }

    w(View view) {
        this.f2604a = new WeakReference<>(view);
    }

    private void a(View view, x xVar) {
        if (xVar != null) {
            view.animate().setListener(new a(this, xVar, view));
        } else {
            view.animate().setListener(null);
        }
    }

    public w a(float f2) {
        View view = this.f2604a.get();
        if (view != null) {
            view.animate().alpha(f2);
        }
        return this;
    }

    public w a(long j2) {
        View view = this.f2604a.get();
        if (view != null) {
            view.animate().setDuration(j2);
        }
        return this;
    }

    public w a(Interpolator interpolator) {
        View view = this.f2604a.get();
        if (view != null) {
            view.animate().setInterpolator(interpolator);
        }
        return this;
    }

    public w a(x xVar) {
        View view = this.f2604a.get();
        if (view != null) {
            if (Build.VERSION.SDK_INT < 16) {
                view.setTag(2113929216, xVar);
                xVar = new c(this);
            }
            a(view, xVar);
        }
        return this;
    }

    public w a(z zVar) {
        View view = this.f2604a.get();
        if (view != null && Build.VERSION.SDK_INT >= 19) {
            view.animate().setUpdateListener(zVar != null ? new b(this, zVar, view) : null);
        }
        return this;
    }

    public void a() {
        View view = this.f2604a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public long b() {
        View view = this.f2604a.get();
        if (view != null) {
            return view.animate().getDuration();
        }
        return 0L;
    }

    public w b(float f2) {
        View view = this.f2604a.get();
        if (view != null) {
            view.animate().translationY(f2);
        }
        return this;
    }

    public w b(long j2) {
        View view = this.f2604a.get();
        if (view != null) {
            view.animate().setStartDelay(j2);
        }
        return this;
    }

    public void c() {
        View view = this.f2604a.get();
        if (view != null) {
            view.animate().start();
        }
    }
}
