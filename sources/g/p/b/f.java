package g.p.b;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class f {
    private f() {
    }

    public static int a(int i2, int i3) {
        if (i2 < i3) {
            return -1;
        }
        return i2 == i3 ? 0 : 1;
    }

    private static <T extends Throwable> T a(T t) {
        a((Throwable) t, f.class.getName());
        return t;
    }

    static <T extends Throwable> T a(T t, String str) {
        StackTraceElement[] stackTrace = t.getStackTrace();
        int length = stackTrace.length;
        int i2 = -1;
        for (int i3 = 0; i3 < length; i3++) {
            if (str.equals(stackTrace[i3].getClassName())) {
                i2 = i3;
            }
        }
        List listSubList = Arrays.asList(stackTrace).subList(i2 + 1, length);
        t.setStackTrace((StackTraceElement[]) listSubList.toArray(new StackTraceElement[listSubList.size()]));
        return t;
    }

    public static void a() {
        g.d dVar = new g.d();
        a(dVar);
        throw dVar;
    }

    public static void a(Object obj, String str) {
        if (obj != null) {
            return;
        }
        IllegalStateException illegalStateException = new IllegalStateException(str + " must not be null");
        a(illegalStateException);
        throw illegalStateException;
    }

    private static void a(String str) {
        StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[3];
        IllegalArgumentException illegalArgumentException = new IllegalArgumentException("Parameter specified as non-null is null: method " + stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName() + ", parameter " + str);
        a(illegalArgumentException);
        throw illegalArgumentException;
    }

    public static boolean a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public static void b(Object obj, String str) {
        if (obj != null) {
            return;
        }
        a(str);
        throw null;
    }

    public static void b(String str) {
        g.k kVar = new g.k(str);
        a(kVar);
        throw kVar;
    }

    public static void c(String str) {
        b("lateinit property " + str + " has not been initialized");
        throw null;
    }
}
