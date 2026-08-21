package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;

/* JADX INFO: loaded from: classes.dex */
class t extends p {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final SeekBar f652d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Drawable f653e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ColorStateList f654f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private PorterDuff.Mode f655g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f656h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f657i;

    t(SeekBar seekBar) {
        super(seekBar);
        this.f654f = null;
        this.f655g = null;
        this.f656h = false;
        this.f657i = false;
        this.f652d = seekBar;
    }

    private void d() {
        if (this.f653e != null) {
            if (this.f656h || this.f657i) {
                this.f653e = androidx.core.graphics.drawable.a.i(this.f653e.mutate());
                if (this.f656h) {
                    androidx.core.graphics.drawable.a.a(this.f653e, this.f654f);
                }
                if (this.f657i) {
                    androidx.core.graphics.drawable.a.a(this.f653e, this.f655g);
                }
                if (this.f653e.isStateful()) {
                    this.f653e.setState(this.f652d.getDrawableState());
                }
            }
        }
    }

    void a(Canvas canvas) {
        if (this.f653e != null) {
            int max = this.f652d.getMax();
            if (max > 1) {
                int intrinsicWidth = this.f653e.getIntrinsicWidth();
                int intrinsicHeight = this.f653e.getIntrinsicHeight();
                int i2 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i3 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.f653e.setBounds(-i2, -i3, i2, i3);
                float width = ((this.f652d.getWidth() - this.f652d.getPaddingLeft()) - this.f652d.getPaddingRight()) / max;
                int iSave = canvas.save();
                canvas.translate(this.f652d.getPaddingLeft(), this.f652d.getHeight() / 2);
                for (int i4 = 0; i4 <= max; i4++) {
                    this.f653e.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(iSave);
            }
        }
    }

    void a(Drawable drawable) {
        Drawable drawable2 = this.f653e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f653e = drawable;
        if (drawable != null) {
            drawable.setCallback(this.f652d);
            androidx.core.graphics.drawable.a.a(drawable, b.h.o.s.k(this.f652d));
            if (drawable.isStateful()) {
                drawable.setState(this.f652d.getDrawableState());
            }
            d();
        }
        this.f652d.invalidate();
    }

    @Override // androidx.appcompat.widget.p
    void a(AttributeSet attributeSet, int i2) {
        super.a(attributeSet, i2);
        q0 q0VarA = q0.a(this.f652d.getContext(), attributeSet, b.a.j.AppCompatSeekBar, i2, 0);
        Drawable drawableC = q0VarA.c(b.a.j.AppCompatSeekBar_android_thumb);
        if (drawableC != null) {
            this.f652d.setThumb(drawableC);
        }
        a(q0VarA.b(b.a.j.AppCompatSeekBar_tickMark));
        if (q0VarA.g(b.a.j.AppCompatSeekBar_tickMarkTintMode)) {
            this.f655g = a0.a(q0VarA.d(b.a.j.AppCompatSeekBar_tickMarkTintMode, -1), this.f655g);
            this.f657i = true;
        }
        if (q0VarA.g(b.a.j.AppCompatSeekBar_tickMarkTint)) {
            this.f654f = q0VarA.a(b.a.j.AppCompatSeekBar_tickMarkTint);
            this.f656h = true;
        }
        q0VarA.a();
        d();
    }

    void b() {
        Drawable drawable = this.f653e;
        if (drawable != null && drawable.isStateful() && drawable.setState(this.f652d.getDrawableState())) {
            this.f652d.invalidateDrawable(drawable);
        }
    }

    void c() {
        Drawable drawable = this.f653e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }
}
