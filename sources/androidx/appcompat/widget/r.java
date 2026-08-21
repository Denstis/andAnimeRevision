package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RatingBar;

/* JADX INFO: loaded from: classes.dex */
public class r extends RatingBar {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final p f634b;

    public r(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, b.a.a.ratingBarStyle);
    }

    public r(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f634b = new p(this);
        this.f634b.a(attributeSet, i2);
    }

    @Override // android.widget.RatingBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected synchronized void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        Bitmap bitmapA = this.f634b.a();
        if (bitmapA != null) {
            setMeasuredDimension(View.resolveSizeAndState(bitmapA.getWidth() * getNumStars(), i2, 0), getMeasuredHeight());
        }
    }
}
