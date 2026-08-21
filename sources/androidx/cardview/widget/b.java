package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class b implements e {
    b() {
    }

    private f j(d dVar) {
        return (f) dVar.c();
    }

    @Override // androidx.cardview.widget.e
    public float a(d dVar) {
        return dVar.d().getElevation();
    }

    @Override // androidx.cardview.widget.e
    public void a() {
    }

    @Override // androidx.cardview.widget.e
    public void a(d dVar, float f2) {
        j(dVar).a(f2);
    }

    @Override // androidx.cardview.widget.e
    public void a(d dVar, Context context, ColorStateList colorStateList, float f2, float f3, float f4) {
        dVar.a(new f(colorStateList, f2));
        View viewD = dVar.d();
        viewD.setClipToOutline(true);
        viewD.setElevation(f3);
        c(dVar, f4);
    }

    @Override // androidx.cardview.widget.e
    public void a(d dVar, ColorStateList colorStateList) {
        j(dVar).a(colorStateList);
    }

    @Override // androidx.cardview.widget.e
    public float b(d dVar) {
        return j(dVar).c();
    }

    @Override // androidx.cardview.widget.e
    public void b(d dVar, float f2) {
        dVar.d().setElevation(f2);
    }

    @Override // androidx.cardview.widget.e
    public void c(d dVar) {
        c(dVar, d(dVar));
    }

    @Override // androidx.cardview.widget.e
    public void c(d dVar, float f2) {
        j(dVar).a(f2, dVar.b(), dVar.a());
        f(dVar);
    }

    @Override // androidx.cardview.widget.e
    public float d(d dVar) {
        return j(dVar).b();
    }

    @Override // androidx.cardview.widget.e
    public ColorStateList e(d dVar) {
        return j(dVar).a();
    }

    @Override // androidx.cardview.widget.e
    public void f(d dVar) {
        if (!dVar.b()) {
            dVar.setShadowPadding(0, 0, 0, 0);
            return;
        }
        float fD = d(dVar);
        float fB = b(dVar);
        int iCeil = (int) Math.ceil(g.a(fD, fB, dVar.a()));
        int iCeil2 = (int) Math.ceil(g.b(fD, fB, dVar.a()));
        dVar.setShadowPadding(iCeil, iCeil2, iCeil, iCeil2);
    }

    @Override // androidx.cardview.widget.e
    public float g(d dVar) {
        return b(dVar) * 2.0f;
    }

    @Override // androidx.cardview.widget.e
    public float h(d dVar) {
        return b(dVar) * 2.0f;
    }

    @Override // androidx.cardview.widget.e
    public void i(d dVar) {
        c(dVar, d(dVar));
    }
}
