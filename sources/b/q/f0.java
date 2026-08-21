package b.q;

import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
class f0 extends i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Method f2912a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f2913b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Method f2914c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f2915d;

    f0() {
    }

    private void a() {
        if (f2915d) {
            return;
        }
        try {
            f2914c = View.class.getDeclaredMethod("getTransitionAlpha", new Class[0]);
            f2914c.setAccessible(true);
        } catch (NoSuchMethodException e2) {
            Log.i("ViewUtilsApi19", "Failed to retrieve getTransitionAlpha method", e2);
        }
        f2915d = true;
    }

    private void b() {
        if (f2913b) {
            return;
        }
        try {
            f2912a = View.class.getDeclaredMethod("setTransitionAlpha", Float.TYPE);
            f2912a.setAccessible(true);
        } catch (NoSuchMethodException e2) {
            Log.i("ViewUtilsApi19", "Failed to retrieve setTransitionAlpha method", e2);
        }
        f2913b = true;
    }

    @Override // b.q.i0
    public void a(View view) {
    }

    @Override // b.q.i0
    public void a(View view, float f2) {
        b();
        Method method = f2912a;
        if (method == null) {
            view.setAlpha(f2);
            return;
        }
        try {
            method.invoke(view, Float.valueOf(f2));
        } catch (IllegalAccessException unused) {
        } catch (InvocationTargetException e2) {
            throw new RuntimeException(e2.getCause());
        }
    }

    @Override // b.q.i0
    public float b(View view) {
        a();
        Method method = f2914c;
        if (method != null) {
            try {
                return ((Float) method.invoke(view, new Object[0])).floatValue();
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
        return super.b(view);
    }

    @Override // b.q.i0
    public void c(View view) {
    }
}
