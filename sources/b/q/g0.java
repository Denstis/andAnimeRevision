package b.q;

import android.graphics.Matrix;
import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
class g0 extends f0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Method f2916e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f2917f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static Method f2918g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static boolean f2919h;

    g0() {
    }

    private void a() {
        if (f2917f) {
            return;
        }
        try {
            f2916e = View.class.getDeclaredMethod("transformMatrixToGlobal", Matrix.class);
            f2916e.setAccessible(true);
        } catch (NoSuchMethodException e2) {
            Log.i("ViewUtilsApi21", "Failed to retrieve transformMatrixToGlobal method", e2);
        }
        f2917f = true;
    }

    private void b() {
        if (f2919h) {
            return;
        }
        try {
            f2918g = View.class.getDeclaredMethod("transformMatrixToLocal", Matrix.class);
            f2918g.setAccessible(true);
        } catch (NoSuchMethodException e2) {
            Log.i("ViewUtilsApi21", "Failed to retrieve transformMatrixToLocal method", e2);
        }
        f2919h = true;
    }

    @Override // b.q.i0
    public void a(View view, Matrix matrix) {
        a();
        Method method = f2916e;
        if (method != null) {
            try {
                method.invoke(view, matrix);
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }

    @Override // b.q.i0
    public void b(View view, Matrix matrix) {
        b();
        Method method = f2918g;
        if (method != null) {
            try {
                method.invoke(view, matrix);
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }
}
