package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.cardview.widget.g;

/* JADX INFO: loaded from: classes.dex */
class c implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final RectF f727a = new RectF();

    class a implements g.a {
        a() {
        }

        @Override // androidx.cardview.widget.g.a
        public void a(Canvas canvas, RectF rectF, float f2, Paint paint) {
            float f3 = 2.0f * f2;
            float fWidth = (rectF.width() - f3) - 1.0f;
            float fHeight = (rectF.height() - f3) - 1.0f;
            if (f2 >= 1.0f) {
                float f4 = f2 + 0.5f;
                float f5 = -f4;
                c.this.f727a.set(f5, f5, f4, f4);
                int iSave = canvas.save();
                canvas.translate(rectF.left + f4, rectF.top + f4);
                canvas.drawArc(c.this.f727a, 180.0f, 90.0f, true, paint);
                canvas.translate(fWidth, 0.0f);
                canvas.rotate(90.0f);
                canvas.drawArc(c.this.f727a, 180.0f, 90.0f, true, paint);
                canvas.translate(fHeight, 0.0f);
                canvas.rotate(90.0f);
                canvas.drawArc(c.this.f727a, 180.0f, 90.0f, true, paint);
                canvas.translate(fWidth, 0.0f);
                canvas.rotate(90.0f);
                canvas.drawArc(c.this.f727a, 180.0f, 90.0f, true, paint);
                canvas.restoreToCount(iSave);
                float f6 = (rectF.left + f4) - 1.0f;
                float f7 = rectF.top;
                canvas.drawRect(f6, f7, (rectF.right - f4) + 1.0f, f7 + f4, paint);
                float f8 = (rectF.left + f4) - 1.0f;
                float f9 = rectF.bottom;
                canvas.drawRect(f8, f9 - f4, (rectF.right - f4) + 1.0f, f9, paint);
            }
            canvas.drawRect(rectF.left, rectF.top + f2, rectF.right, rectF.bottom - f2, paint);
        }
    }

    c() {
    }

    private g a(Context context, ColorStateList colorStateList, float f2, float f3, float f4) {
        return new g(context.getResources(), colorStateList, f2, f3, f4);
    }

    private g j(d dVar) {
        return (g) dVar.c();
    }

    @Override // androidx.cardview.widget.e
    public float a(d dVar) {
        return j(dVar).f();
    }

    @Override // androidx.cardview.widget.e
    public void a() {
        g.r = new a();
    }

    @Override // androidx.cardview.widget.e
    public void a(d dVar, float f2) {
        j(dVar).a(f2);
        f(dVar);
    }

    @Override // androidx.cardview.widget.e
    public void a(d dVar, Context context, ColorStateList colorStateList, float f2, float f3, float f4) {
        g gVarA = a(context, colorStateList, f2, f3, f4);
        gVarA.a(dVar.a());
        dVar.a(gVarA);
        f(dVar);
    }

    @Override // androidx.cardview.widget.e
    public void a(d dVar, ColorStateList colorStateList) {
        j(dVar).a(colorStateList);
    }

    @Override // androidx.cardview.widget.e
    public float b(d dVar) {
        return j(dVar).b();
    }

    @Override // androidx.cardview.widget.e
    public void b(d dVar, float f2) {
        j(dVar).c(f2);
    }

    @Override // androidx.cardview.widget.e
    public void c(d dVar) {
    }

    @Override // androidx.cardview.widget.e
    public void c(d dVar, float f2) {
        j(dVar).b(f2);
        f(dVar);
    }

    @Override // androidx.cardview.widget.e
    public float d(d dVar) {
        return j(dVar).c();
    }

    @Override // androidx.cardview.widget.e
    public ColorStateList e(d dVar) {
        return j(dVar).a();
    }

    @Override // androidx.cardview.widget.e
    public void f(d dVar) {
        Rect rect = new Rect();
        j(dVar).a(rect);
        dVar.a((int) Math.ceil(h(dVar)), (int) Math.ceil(g(dVar)));
        dVar.setShadowPadding(rect.left, rect.top, rect.right, rect.bottom);
    }

    @Override // androidx.cardview.widget.e
    public float g(d dVar) {
        return j(dVar).d();
    }

    @Override // androidx.cardview.widget.e
    public float h(d dVar) {
        return j(dVar).e();
    }

    @Override // androidx.cardview.widget.e
    public void i(d dVar) {
        j(dVar).a(dVar.a());
        f(dVar);
    }
}
