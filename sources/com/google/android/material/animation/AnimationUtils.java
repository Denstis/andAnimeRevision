package com.google.android.material.animation;

import android.animation.TimeInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import b.l.a.a.a;
import b.l.a.a.b;
import b.l.a.a.c;

/* JADX INFO: loaded from: classes.dex */
public class AnimationUtils {
    public static final TimeInterpolator LINEAR_INTERPOLATOR = new LinearInterpolator();
    public static final TimeInterpolator FAST_OUT_SLOW_IN_INTERPOLATOR = new b();
    public static final TimeInterpolator FAST_OUT_LINEAR_IN_INTERPOLATOR = new a();
    public static final TimeInterpolator LINEAR_OUT_SLOW_IN_INTERPOLATOR = new c();
    public static final TimeInterpolator DECELERATE_INTERPOLATOR = new DecelerateInterpolator();

    public static float lerp(float f2, float f3, float f4) {
        return f2 + (f4 * (f3 - f2));
    }

    public static int lerp(int i2, int i3, float f2) {
        return i2 + Math.round(f2 * (i3 - i2));
    }
}
