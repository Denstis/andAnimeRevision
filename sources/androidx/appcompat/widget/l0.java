package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.TypedValue;

/* JADX INFO: loaded from: classes.dex */
class l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ThreadLocal<TypedValue> f601a = new ThreadLocal<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final int[] f602b = {-16842910};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final int[] f603c = {R.attr.state_focused};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final int[] f604d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final int[] f605e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final int[] f606f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int[] f607g;

    static {
        new int[1][0] = 16843518;
        f604d = new int[]{R.attr.state_pressed};
        f605e = new int[]{R.attr.state_checked};
        new int[1][0] = 16842913;
        f606f = new int[0];
        f607g = new int[1];
    }

    public static int a(Context context, int i2) {
        ColorStateList colorStateListC = c(context, i2);
        if (colorStateListC != null && colorStateListC.isStateful()) {
            return colorStateListC.getColorForState(f602b, colorStateListC.getDefaultColor());
        }
        TypedValue typedValueA = a();
        context.getTheme().resolveAttribute(R.attr.disabledAlpha, typedValueA, true);
        return a(context, i2, typedValueA.getFloat());
    }

    static int a(Context context, int i2, float f2) {
        return b.h.h.a.c(b(context, i2), Math.round(Color.alpha(r0) * f2));
    }

    private static TypedValue a() {
        TypedValue typedValue = f601a.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        f601a.set(typedValue2);
        return typedValue2;
    }

    public static int b(Context context, int i2) {
        int[] iArr = f607g;
        iArr[0] = i2;
        q0 q0VarA = q0.a(context, (AttributeSet) null, iArr);
        try {
            return q0VarA.a(0, 0);
        } finally {
            q0VarA.a();
        }
    }

    public static ColorStateList c(Context context, int i2) {
        int[] iArr = f607g;
        iArr[0] = i2;
        q0 q0VarA = q0.a(context, (AttributeSet) null, iArr);
        try {
            return q0VarA.a(0);
        } finally {
            q0VarA.a();
        }
    }
}
