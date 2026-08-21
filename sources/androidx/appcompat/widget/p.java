package androidx.appcompat.widget;

import android.R;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Shader;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.graphics.drawable.shapes.Shape;
import android.util.AttributeSet;
import android.widget.ProgressBar;

/* JADX INFO: loaded from: classes.dex */
class p {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f625c = {R.attr.indeterminateDrawable, R.attr.progressDrawable};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ProgressBar f626a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Bitmap f627b;

    p(ProgressBar progressBar) {
        this.f626a = progressBar;
    }

    private Drawable a(Drawable drawable) {
        if (!(drawable instanceof AnimationDrawable)) {
            return drawable;
        }
        AnimationDrawable animationDrawable = (AnimationDrawable) drawable;
        int numberOfFrames = animationDrawable.getNumberOfFrames();
        AnimationDrawable animationDrawable2 = new AnimationDrawable();
        animationDrawable2.setOneShot(animationDrawable.isOneShot());
        for (int i2 = 0; i2 < numberOfFrames; i2++) {
            Drawable drawableA = a(animationDrawable.getFrame(i2), true);
            drawableA.setLevel(10000);
            animationDrawable2.addFrame(drawableA, animationDrawable.getDuration(i2));
        }
        animationDrawable2.setLevel(10000);
        return animationDrawable2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Drawable a(Drawable drawable, boolean z) {
        if (drawable instanceof androidx.core.graphics.drawable.c) {
            androidx.core.graphics.drawable.c cVar = (androidx.core.graphics.drawable.c) drawable;
            Drawable drawableA = cVar.a();
            if (drawableA == null) {
                return drawable;
            }
            cVar.a(a(drawableA, z));
            return drawable;
        }
        if (!(drawable instanceof LayerDrawable)) {
            if (!(drawable instanceof BitmapDrawable)) {
                return drawable;
            }
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            Bitmap bitmap = bitmapDrawable.getBitmap();
            if (this.f627b == null) {
                this.f627b = bitmap;
            }
            ShapeDrawable shapeDrawable = new ShapeDrawable(b());
            shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
            shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
            return z ? new ClipDrawable(shapeDrawable, 3, 1) : shapeDrawable;
        }
        LayerDrawable layerDrawable = (LayerDrawable) drawable;
        int numberOfLayers = layerDrawable.getNumberOfLayers();
        Drawable[] drawableArr = new Drawable[numberOfLayers];
        for (int i2 = 0; i2 < numberOfLayers; i2++) {
            int id = layerDrawable.getId(i2);
            drawableArr[i2] = a(layerDrawable.getDrawable(i2), id == 16908301 || id == 16908303);
        }
        LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
        for (int i3 = 0; i3 < numberOfLayers; i3++) {
            layerDrawable2.setId(i3, layerDrawable.getId(i3));
        }
        return layerDrawable2;
    }

    private Shape b() {
        return new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null);
    }

    Bitmap a() {
        return this.f627b;
    }

    void a(AttributeSet attributeSet, int i2) {
        q0 q0VarA = q0.a(this.f626a.getContext(), attributeSet, f625c, i2, 0);
        Drawable drawableC = q0VarA.c(0);
        if (drawableC != null) {
            this.f626a.setIndeterminateDrawable(a(drawableC));
        }
        Drawable drawableC2 = q0VarA.c(1);
        if (drawableC2 != null) {
            this.f626a.setProgressDrawable(a(drawableC2, false));
        }
        q0VarA.a();
    }
}
