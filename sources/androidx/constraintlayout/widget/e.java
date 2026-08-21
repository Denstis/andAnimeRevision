package androidx.constraintlayout.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;

/* JADX INFO: loaded from: classes.dex */
public class e extends View {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f797b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f798c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f799d;

    public void a(ConstraintLayout constraintLayout) {
        if (this.f798c == null) {
            return;
        }
        ConstraintLayout.a aVar = (ConstraintLayout.a) getLayoutParams();
        ConstraintLayout.a aVar2 = (ConstraintLayout.a) this.f798c.getLayoutParams();
        aVar2.k0.n(0);
        aVar.k0.o(aVar2.k0.s());
        aVar.k0.g(aVar2.k0.i());
        aVar2.k0.n(8);
    }

    public void b(ConstraintLayout constraintLayout) {
        if (this.f797b == -1 && !isInEditMode()) {
            setVisibility(this.f799d);
        }
        this.f798c = constraintLayout.findViewById(this.f797b);
        View view = this.f798c;
        if (view != null) {
            ((ConstraintLayout.a) view.getLayoutParams()).Z = true;
            this.f798c.setVisibility(0);
            setVisibility(0);
        }
    }

    public View getContent() {
        return this.f798c;
    }

    public int getEmptyVisibility() {
        return this.f799d;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (isInEditMode()) {
            canvas.drawRGB(223, 223, 223);
            Paint paint = new Paint();
            paint.setARGB(255, 210, 210, 210);
            paint.setTextAlign(Paint.Align.CENTER);
            paint.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
            Rect rect = new Rect();
            canvas.getClipBounds(rect);
            paint.setTextSize(rect.height());
            int iHeight = rect.height();
            int iWidth = rect.width();
            paint.setTextAlign(Paint.Align.LEFT);
            paint.getTextBounds("?", 0, 1, rect);
            canvas.drawText("?", ((iWidth / 2.0f) - (rect.width() / 2.0f)) - rect.left, ((iHeight / 2.0f) + (rect.height() / 2.0f)) - rect.bottom, paint);
        }
    }

    public void setContentId(int i2) {
        View viewFindViewById;
        if (this.f797b == i2) {
            return;
        }
        View view = this.f798c;
        if (view != null) {
            view.setVisibility(0);
            ((ConstraintLayout.a) this.f798c.getLayoutParams()).Z = false;
            this.f798c = null;
        }
        this.f797b = i2;
        if (i2 == -1 || (viewFindViewById = ((View) getParent()).findViewById(i2)) == null) {
            return;
        }
        viewFindViewById.setVisibility(8);
    }

    public void setEmptyVisibility(int i2) {
        this.f799d = i2;
    }
}
