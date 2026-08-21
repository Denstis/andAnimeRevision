package com.google.android.material.canvas;

import android.graphics.Canvas;
import android.graphics.RectF;
import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public class CanvasCompat {
    private CanvasCompat() {
    }

    public static int saveLayerAlpha(Canvas canvas, float f2, float f3, float f4, float f5, int i2) {
        return Build.VERSION.SDK_INT > 21 ? canvas.saveLayerAlpha(f2, f3, f4, f5, i2) : canvas.saveLayerAlpha(f2, f3, f4, f5, i2, 31);
    }

    public static int saveLayerAlpha(Canvas canvas, RectF rectF, int i2) {
        return Build.VERSION.SDK_INT > 21 ? canvas.saveLayerAlpha(rectF, i2) : canvas.saveLayerAlpha(rectF, i2, 31);
    }
}
