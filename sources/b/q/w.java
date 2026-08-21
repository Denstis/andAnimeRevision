package b.q;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;

/* JADX INFO: loaded from: classes.dex */
class w implements x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ViewGroupOverlay f2982a;

    w(ViewGroup viewGroup) {
        this.f2982a = viewGroup.getOverlay();
    }

    @Override // b.q.d0
    public void a(Drawable drawable) {
        this.f2982a.add(drawable);
    }

    @Override // b.q.x
    public void a(View view) {
        this.f2982a.add(view);
    }

    @Override // b.q.d0
    public void b(Drawable drawable) {
        this.f2982a.remove(drawable);
    }

    @Override // b.q.x
    public void b(View view) {
        this.f2982a.remove(view);
    }
}
