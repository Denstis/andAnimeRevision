package b.k.a;

import android.view.View;
import android.view.ViewTreeObserver;

/* JADX INFO: loaded from: classes.dex */
class s implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final View f2823b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ViewTreeObserver f2824c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Runnable f2825d;

    private s(View view, Runnable runnable) {
        this.f2823b = view;
        this.f2824c = view.getViewTreeObserver();
        this.f2825d = runnable;
    }

    public static s a(View view, Runnable runnable) {
        s sVar = new s(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(sVar);
        view.addOnAttachStateChangeListener(sVar);
        return sVar;
    }

    public void a() {
        (this.f2824c.isAlive() ? this.f2824c : this.f2823b.getViewTreeObserver()).removeOnPreDrawListener(this);
        this.f2823b.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        a();
        this.f2825d.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        this.f2824c = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        a();
    }
}
