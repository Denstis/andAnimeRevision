package c.a.a.r.j;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import c.a.a.r.k.b;

/* JADX INFO: loaded from: classes.dex */
public abstract class d<Z> extends i<ImageView, Z> implements b.a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Animatable f3292i;

    public d(ImageView imageView) {
        super(imageView);
    }

    private void b(Z z) {
        if (!(z instanceof Animatable)) {
            this.f3292i = null;
        } else {
            this.f3292i = (Animatable) z;
            this.f3292i.start();
        }
    }

    private void c(Z z) {
        a(z);
        b(z);
    }

    @Override // c.a.a.r.j.a, c.a.a.r.j.h
    public void a(Drawable drawable) {
        super.a(drawable);
        c((Object) null);
        d(drawable);
    }

    protected abstract void a(Z z);

    @Override // c.a.a.r.j.h
    public void a(Z z, c.a.a.r.k.b<? super Z> bVar) {
        if (bVar == null || !bVar.a(z, this)) {
            c(z);
        } else {
            b(z);
        }
    }

    @Override // c.a.a.r.j.i, c.a.a.r.j.a, c.a.a.r.j.h
    public void b(Drawable drawable) {
        super.b(drawable);
        c((Object) null);
        d(drawable);
    }

    @Override // c.a.a.r.j.i, c.a.a.r.j.a, c.a.a.r.j.h
    public void c(Drawable drawable) {
        super.c(drawable);
        Animatable animatable = this.f3292i;
        if (animatable != null) {
            animatable.stop();
        }
        c((Object) null);
        d(drawable);
    }

    public void d(Drawable drawable) {
        ((ImageView) this.f3296c).setImageDrawable(drawable);
    }

    @Override // c.a.a.r.j.a, c.a.a.o.i
    public void onStart() {
        Animatable animatable = this.f3292i;
        if (animatable != null) {
            animatable.start();
        }
    }

    @Override // c.a.a.r.j.a, c.a.a.o.i
    public void onStop() {
        Animatable animatable = this.f3292i;
        if (animatable != null) {
            animatable.stop();
        }
    }
}
