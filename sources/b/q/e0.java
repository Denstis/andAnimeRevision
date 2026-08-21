package b.q;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.util.Property;
import android.view.View;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
class e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final i0 f2908a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Field f2909b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f2910c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final Property<View, Float> f2911d;

    static class a extends Property<View, Float> {
        a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(View view) {
            return Float.valueOf(e0.c(view));
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(View view, Float f2) {
            e0.a(view, f2.floatValue());
        }
    }

    static class b extends Property<View, Rect> {
        b(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Rect get(View view) {
            return b.h.o.s.e(view);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(View view, Rect rect) {
            b.h.o.s.a(view, rect);
        }
    }

    static {
        int i2 = Build.VERSION.SDK_INT;
        f2908a = i2 >= 22 ? new h0() : i2 >= 21 ? new g0() : i2 >= 19 ? new f0() : new i0();
        f2911d = new a(Float.class, "translationAlpha");
        new b(Rect.class, "clipBounds");
    }

    private static void a() {
        if (f2910c) {
            return;
        }
        try {
            f2909b = View.class.getDeclaredField("mViewFlags");
            f2909b.setAccessible(true);
        } catch (NoSuchFieldException unused) {
            Log.i("ViewUtils", "fetchViewFlagsField: ");
        }
        f2910c = true;
    }

    static void a(View view) {
        f2908a.a(view);
    }

    static void a(View view, float f2) {
        f2908a.a(view, f2);
    }

    static void a(View view, int i2) {
        a();
        Field field = f2909b;
        if (field != null) {
            try {
                f2909b.setInt(view, i2 | (field.getInt(view) & (-13)));
            } catch (IllegalAccessException unused) {
            }
        }
    }

    static void a(View view, int i2, int i3, int i4, int i5) {
        f2908a.a(view, i2, i3, i4, i5);
    }

    static void a(View view, Matrix matrix) {
        f2908a.a(view, matrix);
    }

    static d0 b(View view) {
        return Build.VERSION.SDK_INT >= 18 ? new c0(view) : b0.c(view);
    }

    static void b(View view, Matrix matrix) {
        f2908a.b(view, matrix);
    }

    static float c(View view) {
        return f2908a.b(view);
    }

    static m0 d(View view) {
        return Build.VERSION.SDK_INT >= 18 ? new l0(view) : new k0(view.getWindowToken());
    }

    static void e(View view) {
        f2908a.c(view);
    }
}
