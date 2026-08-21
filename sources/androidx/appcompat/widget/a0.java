package androidx.appcompat.widget;

import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ScaleDrawable;
import android.os.Build;
import android.util.Log;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Rect f489a = new Rect();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Class<?> f490b;

    static {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                f490b = Class.forName("android.graphics.Insets");
            } catch (ClassNotFoundException unused) {
            }
        }
    }

    public static PorterDuff.Mode a(int i2, PorterDuff.Mode mode) {
        if (i2 == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i2 == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i2 == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i2) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean a(Drawable drawable) {
        Drawable drawable2;
        if (Build.VERSION.SDK_INT < 15 && (drawable instanceof InsetDrawable)) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 15 && (drawable instanceof GradientDrawable)) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 17 && (drawable instanceof LayerDrawable)) {
            return false;
        }
        if (!(drawable instanceof DrawableContainer)) {
            if (drawable instanceof androidx.core.graphics.drawable.c) {
                drawable2 = ((androidx.core.graphics.drawable.c) drawable).a();
            } else if (drawable instanceof b.a.l.a.c) {
                drawable2 = ((b.a.l.a.c) drawable).getWrappedDrawable();
            } else {
                if (!(drawable instanceof ScaleDrawable)) {
                    return true;
                }
                drawable2 = ((ScaleDrawable) drawable).getDrawable();
            }
            return a(drawable2);
        }
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (!(constantState instanceof DrawableContainer.DrawableContainerState)) {
            return true;
        }
        for (Drawable drawable3 : ((DrawableContainer.DrawableContainerState) constantState).getChildren()) {
            if (!a(drawable3)) {
                return false;
            }
        }
        return true;
    }

    static void b(Drawable drawable) {
        if (Build.VERSION.SDK_INT == 21 && "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName())) {
            c(drawable);
        }
    }

    private static void c(Drawable drawable) {
        int[] state = drawable.getState();
        if (state == null || state.length == 0) {
            drawable.setState(l0.f605e);
        } else {
            drawable.setState(l0.f606f);
        }
        drawable.setState(state);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static Rect d(Drawable drawable) {
        if (f490b != null) {
            try {
                Drawable drawableH = androidx.core.graphics.drawable.a.h(drawable);
                Object objInvoke = drawableH.getClass().getMethod("getOpticalInsets", new Class[0]).invoke(drawableH, new Object[0]);
                if (objInvoke != null) {
                    Rect rect = new Rect();
                    for (Field field : f490b.getFields()) {
                        String name = field.getName();
                        byte b2 = -1;
                        switch (name.hashCode()) {
                            case -1383228885:
                                if (name.equals("bottom")) {
                                    b2 = 3;
                                }
                                break;
                            case 115029:
                                if (name.equals("top")) {
                                    b2 = 1;
                                }
                                break;
                            case 3317767:
                                if (name.equals(TtmlNode.LEFT)) {
                                    b2 = 0;
                                }
                                break;
                            case 108511772:
                                if (name.equals(TtmlNode.RIGHT)) {
                                    b2 = 2;
                                }
                                break;
                        }
                        if (b2 == 0) {
                            rect.left = field.getInt(objInvoke);
                        } else if (b2 == 1) {
                            rect.top = field.getInt(objInvoke);
                        } else if (b2 == 2) {
                            rect.right = field.getInt(objInvoke);
                        } else if (b2 == 3) {
                            rect.bottom = field.getInt(objInvoke);
                        }
                    }
                    return rect;
                }
            } catch (Exception unused) {
                Log.e("DrawableUtils", "Couldn't obtain the optical insets. Ignoring.");
            }
        }
        return f489a;
    }
}
