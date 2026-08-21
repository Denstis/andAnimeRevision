package b.h.h;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.core.content.c.c;
import b.h.l.b;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class f extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Class f2462a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final Constructor f2463b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final Method f2464c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final Method f2465d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final Method f2466e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected final Method f2467f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected final Method f2468g;

    public f() throws NoSuchMethodException {
        Method methodD;
        Constructor constructorE;
        Method methodB;
        Method methodC;
        Method methodF;
        Method methodA;
        Class cls = null;
        try {
            Class clsA = a();
            constructorE = e(clsA);
            methodB = b(clsA);
            methodC = c(clsA);
            methodF = f(clsA);
            methodA = a(clsA);
            methodD = d(clsA);
            cls = clsA;
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            Log.e("TypefaceCompatApi26Impl", "Unable to collect necessary methods for class " + e2.getClass().getName(), e2);
            methodD = null;
            constructorE = null;
            methodB = null;
            methodC = null;
            methodF = null;
            methodA = null;
        }
        this.f2462a = cls;
        this.f2463b = constructorE;
        this.f2464c = methodB;
        this.f2465d = methodC;
        this.f2466e = methodF;
        this.f2467f = methodA;
        this.f2468g = methodD;
    }

    private boolean a(Context context, Object obj, String str, int i2, int i3, int i4, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.f2464c.invoke(obj, context.getAssets(), str, 0, false, Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    private boolean a(Object obj, ByteBuffer byteBuffer, int i2, int i3, int i4) {
        try {
            return ((Boolean) this.f2465d.invoke(obj, byteBuffer, Integer.valueOf(i2), null, Integer.valueOf(i3), Integer.valueOf(i4))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    private void b(Object obj) {
        try {
            this.f2467f.invoke(obj, new Object[0]);
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    private boolean b() {
        if (this.f2464c == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        return this.f2464c != null;
    }

    private Object c() {
        try {
            return this.f2463b.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    private boolean c(Object obj) {
        try {
            return ((Boolean) this.f2466e.invoke(obj, new Object[0])).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // b.h.h.h
    public Typeface a(Context context, Resources resources, int i2, String str, int i3) {
        if (!b()) {
            return super.a(context, resources, i2, str, i3);
        }
        Object objC = c();
        if (!a(context, objC, str, 0, -1, -1, null)) {
            b(objC);
            return null;
        }
        if (c(objC)) {
            return a(objC);
        }
        return null;
    }

    @Override // b.h.h.d, b.h.h.h
    public Typeface a(Context context, CancellationSignal cancellationSignal, b.f[] fVarArr, int i2) {
        if (fVarArr.length < 1) {
            return null;
        }
        if (b()) {
            Map<Uri, ByteBuffer> mapA = b.h.l.b.a(context, fVarArr, cancellationSignal);
            Object objC = c();
            boolean z = false;
            for (b.f fVar : fVarArr) {
                ByteBuffer byteBuffer = mapA.get(fVar.c());
                if (byteBuffer != null) {
                    if (!a(objC, byteBuffer, fVar.b(), fVar.d(), fVar.e() ? 1 : 0)) {
                        b(objC);
                        return null;
                    }
                    z = true;
                }
            }
            if (!z) {
                b(objC);
                return null;
            }
            if (c(objC)) {
                return Typeface.create(a(objC), i2);
            }
            return null;
        }
        b.f fVarA = a(fVarArr, i2);
        try {
            ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(fVarA.c(), "r", cancellationSignal);
            if (parcelFileDescriptorOpenFileDescriptor == null) {
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                    parcelFileDescriptorOpenFileDescriptor.close();
                }
                return null;
            }
            try {
                Typeface typefaceBuild = new Typeface.Builder(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor()).setWeight(fVarA.d()).setItalic(fVarA.e()).build();
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                    parcelFileDescriptorOpenFileDescriptor.close();
                }
                return typefaceBuild;
            } finally {
            }
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // b.h.h.h
    public Typeface a(Context context, c.b bVar, Resources resources, int i2) {
        if (!b()) {
            return super.a(context, bVar, resources, i2);
        }
        Object objC = c();
        for (c.C0017c c0017c : bVar.a()) {
            if (!a(context, objC, c0017c.a(), c0017c.c(), c0017c.e(), c0017c.f() ? 1 : 0, FontVariationAxis.fromFontVariationSettings(c0017c.d()))) {
                b(objC);
                return null;
            }
        }
        if (c(objC)) {
            return a(objC);
        }
        return null;
    }

    protected Typeface a(Object obj) {
        try {
            Object objNewInstance = Array.newInstance((Class<?>) this.f2462a, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) this.f2468g.invoke(null, objNewInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    protected Class a() {
        return Class.forName("android.graphics.FontFamily");
    }

    protected Method a(Class cls) {
        return cls.getMethod("abortCreation", new Class[0]);
    }

    protected Method b(Class cls) {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, Integer.TYPE, Boolean.TYPE, cls2, cls2, cls2, FontVariationAxis[].class);
    }

    protected Method c(Class cls) {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromBuffer", ByteBuffer.class, cls2, FontVariationAxis[].class, cls2, cls2);
    }

    protected Method d(Class cls) throws NoSuchMethodException {
        Class cls2 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance((Class<?>) cls, 1).getClass(), cls2, cls2);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }

    protected Constructor e(Class cls) {
        return cls.getConstructor(new Class[0]);
    }

    protected Method f(Class cls) {
        return cls.getMethod("freeze", new Class[0]);
    }
}
