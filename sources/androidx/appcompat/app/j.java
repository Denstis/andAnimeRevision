package androidx.appcompat.app;

import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import android.util.LongSparseArray;
import java.lang.reflect.Field;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Field f174a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f175b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Class f176c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f177d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Field f178e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f179f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static Field f180g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static boolean f181h;

    static void a(Resources resources) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            return;
        }
        if (i2 >= 24) {
            d(resources);
        } else if (i2 >= 23) {
            c(resources);
        } else if (i2 >= 21) {
            b(resources);
        }
    }

    private static void a(Object obj) {
        LongSparseArray longSparseArray;
        if (!f177d) {
            try {
                f176c = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e2) {
                Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e2);
            }
            f177d = true;
        }
        Class cls = f176c;
        if (cls == null) {
            return;
        }
        if (!f179f) {
            try {
                f178e = cls.getDeclaredField("mUnthemedEntries");
                f178e.setAccessible(true);
            } catch (NoSuchFieldException e3) {
                Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e3);
            }
            f179f = true;
        }
        Field field = f178e;
        if (field == null) {
            return;
        }
        try {
            longSparseArray = (LongSparseArray) field.get(obj);
        } catch (IllegalAccessException e4) {
            Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e4);
            longSparseArray = null;
        }
        if (longSparseArray != null) {
            longSparseArray.clear();
        }
    }

    private static void b(Resources resources) {
        Map map;
        if (!f175b) {
            try {
                f174a = Resources.class.getDeclaredField("mDrawableCache");
                f174a.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e2);
            }
            f175b = true;
        }
        Field field = f174a;
        if (field != null) {
            try {
                map = (Map) field.get(resources);
            } catch (IllegalAccessException e3) {
                Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", e3);
                map = null;
            }
            if (map != null) {
                map.clear();
            }
        }
    }

    private static void c(Resources resources) {
        if (!f175b) {
            try {
                f174a = Resources.class.getDeclaredField("mDrawableCache");
                f174a.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e2);
            }
            f175b = true;
        }
        Object obj = null;
        Field field = f174a;
        if (field != null) {
            try {
                obj = field.get(resources);
            } catch (IllegalAccessException e3) {
                Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", e3);
            }
        }
        if (obj == null) {
            return;
        }
        a(obj);
    }

    private static void d(Resources resources) {
        Object obj;
        if (!f181h) {
            try {
                f180g = Resources.class.getDeclaredField("mResourcesImpl");
                f180g.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mResourcesImpl field", e2);
            }
            f181h = true;
        }
        Field field = f180g;
        if (field == null) {
            return;
        }
        Object obj2 = null;
        try {
            obj = field.get(resources);
        } catch (IllegalAccessException e3) {
            Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mResourcesImpl", e3);
            obj = null;
        }
        if (obj == null) {
            return;
        }
        if (!f175b) {
            try {
                f174a = obj.getClass().getDeclaredField("mDrawableCache");
                f174a.setAccessible(true);
            } catch (NoSuchFieldException e4) {
                Log.e("ResourcesFlusher", "Could not retrieve ResourcesImpl#mDrawableCache field", e4);
            }
            f175b = true;
        }
        Field field2 = f174a;
        if (field2 != null) {
            try {
                obj2 = field2.get(obj);
            } catch (IllegalAccessException e5) {
                Log.e("ResourcesFlusher", "Could not retrieve value from ResourcesImpl#mDrawableCache", e5);
            }
        }
        if (obj2 != null) {
            a(obj2);
        }
    }
}
