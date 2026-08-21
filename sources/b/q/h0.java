package b.q;

import android.annotation.SuppressLint;
import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
class h0 extends g0 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static Method f2926i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static boolean f2927j;

    h0() {
    }

    @SuppressLint({"PrivateApi"})
    private void a() {
        if (f2927j) {
            return;
        }
        try {
            f2926i = View.class.getDeclaredMethod("setLeftTopRightBottom", Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE);
            f2926i.setAccessible(true);
        } catch (NoSuchMethodException e2) {
            Log.i("ViewUtilsApi22", "Failed to retrieve setLeftTopRightBottom method", e2);
        }
        f2927j = true;
    }

    @Override // b.q.i0
    public void a(View view, int i2, int i3, int i4, int i5) {
        a();
        Method method = f2926i;
        if (method != null) {
            try {
                method.invoke(view, Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }
}
