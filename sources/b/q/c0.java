package b.q;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOverlay;

/* JADX INFO: loaded from: classes.dex */
class c0 implements d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ViewOverlay f2893a;

    c0(View view) {
        this.f2893a = view.getOverlay();
    }

    @Override // b.q.d0
    public void a(Drawable drawable) {
        this.f2893a.add(drawable);
    }

    @Override // b.q.d0
    public void b(Drawable drawable) {
        this.f2893a.remove(drawable);
    }
}
