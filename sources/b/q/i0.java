package b.q;

import android.graphics.Matrix;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class i0 {
    i0() {
    }

    public void a(View view) {
        if (view.getVisibility() == 0) {
            view.setTag(j.save_non_transition_alpha, null);
        }
    }

    public void a(View view, float f2) {
        Float f3 = (Float) view.getTag(j.save_non_transition_alpha);
        if (f3 != null) {
            view.setAlpha(f3.floatValue() * f2);
        } else {
            view.setAlpha(f2);
        }
    }

    public void a(View view, int i2, int i3, int i4, int i5) {
        view.setLeft(i2);
        view.setTop(i3);
        view.setRight(i4);
        view.setBottom(i5);
    }

    public void a(View view, Matrix matrix) {
        Object parent = view.getParent();
        if (parent instanceof View) {
            a((View) parent, matrix);
            matrix.preTranslate(-r0.getScrollX(), -r0.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        Matrix matrix2 = view.getMatrix();
        if (matrix2.isIdentity()) {
            return;
        }
        matrix.preConcat(matrix2);
    }

    public float b(View view) {
        Float f2 = (Float) view.getTag(j.save_non_transition_alpha);
        float alpha = view.getAlpha();
        return f2 != null ? alpha / f2.floatValue() : alpha;
    }

    public void b(View view, Matrix matrix) {
        Object parent = view.getParent();
        if (parent instanceof View) {
            b((View) parent, matrix);
            matrix.postTranslate(r0.getScrollX(), r0.getScrollY());
        }
        matrix.postTranslate(view.getLeft(), view.getTop());
        Matrix matrix2 = view.getMatrix();
        if (matrix2.isIdentity()) {
            return;
        }
        Matrix matrix3 = new Matrix();
        if (matrix2.invert(matrix3)) {
            matrix.postConcat(matrix3);
        }
    }

    public void c(View view) {
        if (view.getTag(j.save_non_transition_alpha) == null) {
            view.setTag(j.save_non_transition_alpha, Float.valueOf(view.getAlpha()));
        }
    }
}
