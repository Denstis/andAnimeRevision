package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.SeekBar;

/* JADX INFO: loaded from: classes.dex */
public class s extends SeekBar {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final t f651b;

    public s(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, b.a.a.seekBarStyle);
    }

    public s(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f651b = new t(this);
        this.f651b.a(attributeSet, i2);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        this.f651b.b();
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        this.f651b.c();
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f651b.a(canvas);
    }
}
