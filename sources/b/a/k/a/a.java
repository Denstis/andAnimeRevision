package b.a.k.a;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import androidx.appcompat.widget.j;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ThreadLocal<TypedValue> f2140a = new ThreadLocal<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final WeakHashMap<Context, SparseArray<C0092a>> f2141b = new WeakHashMap<>(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f2142c = new Object();

    /* JADX INFO: renamed from: b.a.k.a.a$a, reason: collision with other inner class name */
    private static class C0092a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ColorStateList f2143a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Configuration f2144b;

        C0092a(ColorStateList colorStateList, Configuration configuration) {
            this.f2143a = colorStateList;
            this.f2144b = configuration;
        }
    }

    private static ColorStateList a(Context context, int i2) {
        C0092a c0092a;
        synchronized (f2142c) {
            SparseArray<C0092a> sparseArray = f2141b.get(context);
            if (sparseArray != null && sparseArray.size() > 0 && (c0092a = sparseArray.get(i2)) != null) {
                if (c0092a.f2144b.equals(context.getResources().getConfiguration())) {
                    return c0092a.f2143a;
                }
                sparseArray.remove(i2);
            }
            return null;
        }
    }

    private static TypedValue a() {
        TypedValue typedValue = f2140a.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        f2140a.set(typedValue2);
        return typedValue2;
    }

    private static void a(Context context, int i2, ColorStateList colorStateList) {
        synchronized (f2142c) {
            SparseArray<C0092a> sparseArray = f2141b.get(context);
            if (sparseArray == null) {
                sparseArray = new SparseArray<>();
                f2141b.put(context, sparseArray);
            }
            sparseArray.append(i2, new C0092a(colorStateList, context.getResources().getConfiguration()));
        }
    }

    public static ColorStateList b(Context context, int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            return context.getColorStateList(i2);
        }
        ColorStateList colorStateListA = a(context, i2);
        if (colorStateListA != null) {
            return colorStateListA;
        }
        ColorStateList colorStateListD = d(context, i2);
        if (colorStateListD == null) {
            return androidx.core.content.a.b(context, i2);
        }
        a(context, i2, colorStateListD);
        return colorStateListD;
    }

    public static Drawable c(Context context, int i2) {
        return j.a().a(context, i2);
    }

    private static ColorStateList d(Context context, int i2) {
        if (e(context, i2)) {
            return null;
        }
        Resources resources = context.getResources();
        try {
            return androidx.core.content.c.a.a(resources, resources.getXml(i2), context.getTheme());
        } catch (Exception e2) {
            Log.e("AppCompatResources", "Failed to inflate ColorStateList, leaving it to the framework", e2);
            return null;
        }
    }

    private static boolean e(Context context, int i2) {
        Resources resources = context.getResources();
        TypedValue typedValueA = a();
        resources.getValue(i2, typedValueA, true);
        int i3 = typedValueA.type;
        return i3 >= 28 && i3 <= 31;
    }
}
