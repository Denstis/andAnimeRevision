package k;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.lang.invoke.MethodHandles;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.concurrent.Executor;
import k.c;

/* JADX INFO: loaded from: classes.dex */
class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final k f5100a = b();

    static class a extends k {

        /* JADX INFO: renamed from: k.k$a$a, reason: collision with other inner class name */
        static class ExecutorC0198a implements Executor {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final Handler f5101b = new Handler(Looper.getMainLooper());

            ExecutorC0198a() {
            }

            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                this.f5101b.post(runnable);
            }
        }

        a() {
        }

        @Override // k.k
        public Executor a() {
            return new ExecutorC0198a();
        }

        @Override // k.k
        c.a a(Executor executor) {
            if (executor != null) {
                return new g(executor);
            }
            throw new AssertionError();
        }
    }

    static class b extends k {
        b() {
        }

        @Override // k.k
        Object a(Method method, Class<?> cls, Object obj, Object... objArr) throws NoSuchMethodException {
            Constructor declaredConstructor = MethodHandles.Lookup.class.getDeclaredConstructor(Class.class, Integer.TYPE);
            declaredConstructor.setAccessible(true);
            return ((MethodHandles.Lookup) declaredConstructor.newInstance(cls, -1)).unreflectSpecial(method, cls).bindTo(obj).invokeWithArguments(objArr);
        }

        @Override // k.k
        boolean a(Method method) {
            return method.isDefault();
        }
    }

    k() {
    }

    private static k b() {
        try {
            Class.forName("android.os.Build");
            if (Build.VERSION.SDK_INT != 0) {
                return new a();
            }
        } catch (ClassNotFoundException unused) {
        }
        try {
            Class.forName("java.util.Optional");
            return new b();
        } catch (ClassNotFoundException unused2) {
            return new k();
        }
    }

    static k c() {
        return f5100a;
    }

    Object a(Method method, Class<?> cls, Object obj, Object... objArr) {
        throw new UnsupportedOperationException();
    }

    Executor a() {
        return null;
    }

    c.a a(Executor executor) {
        return executor != null ? new g(executor) : f.f5048a;
    }

    boolean a(Method method) {
        return false;
    }
}
