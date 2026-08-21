package b.h.o;

import android.app.ActionBar;
import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Build;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f2576a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Method f2577b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f2578c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Field f2579d;

    public interface a {
        boolean a(KeyEvent keyEvent);
    }

    private static DialogInterface.OnKeyListener a(Dialog dialog) {
        if (!f2578c) {
            try {
                f2579d = Dialog.class.getDeclaredField("mOnKeyListener");
                f2579d.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f2578c = true;
        }
        Field field = f2579d;
        if (field == null) {
            return null;
        }
        try {
            return (DialogInterface.OnKeyListener) field.get(dialog);
        } catch (IllegalAccessException unused2) {
            return null;
        }
    }

    private static boolean a(ActionBar actionBar, KeyEvent keyEvent) {
        if (!f2576a) {
            try {
                f2577b = actionBar.getClass().getMethod("onMenuKeyEvent", KeyEvent.class);
            } catch (NoSuchMethodException unused) {
            }
            f2576a = true;
        }
        Method method = f2577b;
        if (method != null) {
            try {
                return ((Boolean) method.invoke(actionBar, keyEvent)).booleanValue();
            } catch (IllegalAccessException | InvocationTargetException unused2) {
            }
        }
        return false;
    }

    private static boolean a(Activity activity, KeyEvent keyEvent) {
        activity.onUserInteraction();
        Window window = activity.getWindow();
        if (window.hasFeature(8)) {
            ActionBar actionBar = activity.getActionBar();
            if (keyEvent.getKeyCode() == 82 && actionBar != null && a(actionBar, keyEvent)) {
                return true;
            }
        }
        if (window.superDispatchKeyEvent(keyEvent)) {
            return true;
        }
        View decorView = window.getDecorView();
        if (s.a(decorView, keyEvent)) {
            return true;
        }
        return keyEvent.dispatch(activity, decorView != null ? decorView.getKeyDispatcherState() : null, activity);
    }

    private static boolean a(Dialog dialog, KeyEvent keyEvent) {
        DialogInterface.OnKeyListener onKeyListenerA = a(dialog);
        if (onKeyListenerA != null && onKeyListenerA.onKey(dialog, keyEvent.getKeyCode(), keyEvent)) {
            return true;
        }
        Window window = dialog.getWindow();
        if (window.superDispatchKeyEvent(keyEvent)) {
            return true;
        }
        View decorView = window.getDecorView();
        if (s.a(decorView, keyEvent)) {
            return true;
        }
        return keyEvent.dispatch(dialog, decorView != null ? decorView.getKeyDispatcherState() : null, dialog);
    }

    public static boolean a(View view, KeyEvent keyEvent) {
        return s.b(view, keyEvent);
    }

    public static boolean a(a aVar, View view, Window.Callback callback, KeyEvent keyEvent) {
        if (aVar == null) {
            return false;
        }
        return Build.VERSION.SDK_INT >= 28 ? aVar.a(keyEvent) : callback instanceof Activity ? a((Activity) callback, keyEvent) : callback instanceof Dialog ? a((Dialog) callback, keyEvent) : (view != null && s.a(view, keyEvent)) || aVar.a(keyEvent);
    }
}
