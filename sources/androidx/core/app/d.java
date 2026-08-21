package androidx.core.app;

import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static Method f825a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static boolean f826b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static Method f827c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static boolean f828d;

        public static IBinder a(Bundle bundle, String str) {
            if (!f826b) {
                try {
                    f825a = Bundle.class.getMethod("getIBinder", String.class);
                    f825a.setAccessible(true);
                } catch (NoSuchMethodException e2) {
                    Log.i("BundleCompatBaseImpl", "Failed to retrieve getIBinder method", e2);
                }
                f826b = true;
            }
            Method method = f825a;
            if (method != null) {
                try {
                    return (IBinder) method.invoke(bundle, str);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e3) {
                    Log.i("BundleCompatBaseImpl", "Failed to invoke getIBinder via reflection", e3);
                    f825a = null;
                }
            }
            return null;
        }

        public static void a(Bundle bundle, String str, IBinder iBinder) {
            if (!f828d) {
                try {
                    f827c = Bundle.class.getMethod("putIBinder", String.class, IBinder.class);
                    f827c.setAccessible(true);
                } catch (NoSuchMethodException e2) {
                    Log.i("BundleCompatBaseImpl", "Failed to retrieve putIBinder method", e2);
                }
                f828d = true;
            }
            Method method = f827c;
            if (method != null) {
                try {
                    method.invoke(bundle, str, iBinder);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e3) {
                    Log.i("BundleCompatBaseImpl", "Failed to invoke putIBinder via reflection", e3);
                    f827c = null;
                }
            }
        }
    }

    public static IBinder a(Bundle bundle, String str) {
        return Build.VERSION.SDK_INT >= 18 ? bundle.getBinder(str) : a.a(bundle, str);
    }

    public static void a(Bundle bundle, String str, IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 18) {
            bundle.putBinder(str, iBinder);
        } else {
            a.a(bundle, str, iBinder);
        }
    }
}
