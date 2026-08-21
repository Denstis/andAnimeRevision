package androidx.core.widget;

import android.os.Build;
import android.util.Log;
import android.view.View;
import android.widget.PopupWindow;
import b.h.o.s;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Method f987a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f988b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Field f989c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f990d;

    public static void a(PopupWindow popupWindow, int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            popupWindow.setWindowLayoutType(i2);
            return;
        }
        if (!f988b) {
            try {
                f987a = PopupWindow.class.getDeclaredMethod("setWindowLayoutType", Integer.TYPE);
                f987a.setAccessible(true);
            } catch (Exception unused) {
            }
            f988b = true;
        }
        Method method = f987a;
        if (method != null) {
            try {
                method.invoke(popupWindow, Integer.valueOf(i2));
            } catch (Exception unused2) {
            }
        }
    }

    public static void a(PopupWindow popupWindow, View view, int i2, int i3, int i4) {
        if (Build.VERSION.SDK_INT >= 19) {
            popupWindow.showAsDropDown(view, i2, i3, i4);
            return;
        }
        if ((b.h.o.c.a(i4, s.k(view)) & 7) == 5) {
            i2 -= popupWindow.getWidth() - view.getWidth();
        }
        popupWindow.showAsDropDown(view, i2, i3);
    }

    public static void a(PopupWindow popupWindow, boolean z) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23) {
            popupWindow.setOverlapAnchor(z);
            return;
        }
        if (i2 >= 21) {
            if (!f990d) {
                try {
                    f989c = PopupWindow.class.getDeclaredField("mOverlapAnchor");
                    f989c.setAccessible(true);
                } catch (NoSuchFieldException e2) {
                    Log.i("PopupWindowCompatApi21", "Could not fetch mOverlapAnchor field from PopupWindow", e2);
                }
                f990d = true;
            }
            Field field = f989c;
            if (field != null) {
                try {
                    field.set(popupWindow, Boolean.valueOf(z));
                } catch (IllegalAccessException e3) {
                    Log.i("PopupWindowCompatApi21", "Could not set overlap anchor field in PopupWindow", e3);
                }
            }
        }
    }
}
