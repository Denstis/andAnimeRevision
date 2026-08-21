package b.q;

import android.util.Log;
import android.view.ViewGroup;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Method f2854a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f2855b;

    private static void a() {
        if (f2855b) {
            return;
        }
        try {
            f2854a = ViewGroup.class.getDeclaredMethod("suppressLayout", Boolean.TYPE);
            f2854a.setAccessible(true);
        } catch (NoSuchMethodException e2) {
            Log.i("ViewUtilsApi18", "Failed to retrieve suppressLayout method", e2);
        }
        f2855b = true;
    }

    static void a(ViewGroup viewGroup, boolean z) {
        String str;
        a();
        Method method = f2854a;
        if (method != null) {
            try {
                method.invoke(viewGroup, Boolean.valueOf(z));
            } catch (IllegalAccessException e2) {
                e = e2;
                str = "Failed to invoke suppressLayout method";
                Log.i("ViewUtilsApi18", str, e);
            } catch (InvocationTargetException e3) {
                e = e3;
                str = "Error invoking suppressLayout method";
                Log.i("ViewUtilsApi18", str, e);
            }
        }
    }
}
