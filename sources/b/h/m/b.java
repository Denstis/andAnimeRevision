package b.h.m;

import android.os.Build;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Method f2532a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Method f2533b;

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                f2533b = Class.forName("libcore.icu.ICU").getMethod("addLikelySubtags", Locale.class);
                return;
            } catch (Exception e2) {
                throw new IllegalStateException(e2);
            }
        }
        try {
            Class<?> cls = Class.forName("libcore.icu.ICU");
            if (cls != null) {
                f2532a = cls.getMethod("getScript", String.class);
                f2533b = cls.getMethod("addLikelySubtags", String.class);
            }
        } catch (Exception e3) {
            f2532a = null;
            f2533b = null;
            Log.w("ICUCompat", e3);
        }
    }

    private static String a(String str) {
        try {
            if (f2532a != null) {
                return (String) f2532a.invoke(null, str);
            }
        } catch (IllegalAccessException | InvocationTargetException e2) {
            Log.w("ICUCompat", e2);
        }
        return null;
    }

    private static String a(Locale locale) {
        String string = locale.toString();
        try {
            if (f2533b != null) {
                return (String) f2533b.invoke(null, string);
            }
        } catch (IllegalAccessException | InvocationTargetException e2) {
            Log.w("ICUCompat", e2);
        }
        return string;
    }

    public static String b(Locale locale) {
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                return ((Locale) f2533b.invoke(null, locale)).getScript();
            } catch (IllegalAccessException | InvocationTargetException e2) {
                Log.w("ICUCompat", e2);
                return locale.getScript();
            }
        }
        String strA = a(locale);
        if (strA != null) {
            return a(strA);
        }
        return null;
    }
}
