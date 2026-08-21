package b.h.h;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.util.Log;
import androidx.core.content.c.c;
import b.h.l.b;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class e extends h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Class f2458a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Constructor f2459b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Method f2460c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Method f2461d;

    static {
        Class<?> cls;
        Method method;
        Method method2;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(new Class[0]);
            method2 = cls.getMethod("addFontWeightStyle", ByteBuffer.class, Integer.TYPE, List.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            Log.e("TypefaceCompatApi24Impl", e2.getClass().getName(), e2);
            cls = null;
            method = null;
            method2 = null;
        }
        f2459b = constructor;
        f2458a = cls;
        f2460c = method2;
        f2461d = method;
    }

    e() {
    }

    private static Typeface a(Object obj) {
        try {
            Object objNewInstance = Array.newInstance((Class<?>) f2458a, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) f2461d.invoke(null, objNewInstance);
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static boolean a() {
        if (f2460c == null) {
            Log.w("TypefaceCompatApi24Impl", "Unable to collect necessary private methods.Fallback to legacy implementation.");
        }
        return f2460c != null;
    }

    private static boolean a(Object obj, ByteBuffer byteBuffer, int i2, int i3, boolean z) {
        try {
            return ((Boolean) f2460c.invoke(obj, byteBuffer, Integer.valueOf(i2), null, Integer.valueOf(i3), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static Object b() {
        try {
            return f2459b.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // b.h.h.h
    public Typeface a(Context context, CancellationSignal cancellationSignal, b.f[] fVarArr, int i2) {
        Object objB = b();
        b.e.g gVar = new b.e.g();
        for (b.f fVar : fVarArr) {
            Uri uriC = fVar.c();
            ByteBuffer byteBufferA = (ByteBuffer) gVar.get(uriC);
            if (byteBufferA == null) {
                byteBufferA = i.a(context, cancellationSignal, uriC);
                gVar.put(uriC, byteBufferA);
            }
            if (!a(objB, byteBufferA, fVar.b(), fVar.d(), fVar.e())) {
                return null;
            }
        }
        return Typeface.create(a(objB), i2);
    }

    @Override // b.h.h.h
    public Typeface a(Context context, c.b bVar, Resources resources, int i2) {
        Object objB = b();
        for (c.C0017c c0017c : bVar.a()) {
            ByteBuffer byteBufferA = i.a(context, resources, c0017c.b());
            if (byteBufferA == null || !a(objB, byteBufferA, c0017c.c(), c0017c.e(), c0017c.f())) {
                return null;
            }
        }
        return a(objB);
    }
}
