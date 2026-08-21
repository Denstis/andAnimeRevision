package b.h.h;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;
import androidx.core.content.c.c;
import androidx.core.content.c.f;
import b.h.l.b;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final h f2456a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final b.e.e<String, Typeface> f2457b;

    static {
        int i2 = Build.VERSION.SDK_INT;
        f2456a = i2 >= 28 ? new g() : i2 >= 26 ? new f() : (i2 < 24 || !e.a()) ? Build.VERSION.SDK_INT >= 21 ? new d() : new h() : new e();
        f2457b = new b.e.e<>(16);
    }

    public static Typeface a(Context context, Resources resources, int i2, String str, int i3) {
        Typeface typefaceA = f2456a.a(context, resources, i2, str, i3);
        if (typefaceA != null) {
            f2457b.put(a(resources, i2, i3), typefaceA);
        }
        return typefaceA;
    }

    public static Typeface a(Context context, CancellationSignal cancellationSignal, b.f[] fVarArr, int i2) {
        return f2456a.a(context, cancellationSignal, fVarArr, i2);
    }

    public static Typeface a(Context context, c.a aVar, Resources resources, int i2, int i3, f.a aVar2, Handler handler, boolean z) {
        Typeface typefaceA;
        if (aVar instanceof c.d) {
            c.d dVar = (c.d) aVar;
            boolean z2 = false;
            if (!z ? aVar2 == null : dVar.a() == 0) {
                z2 = true;
            }
            typefaceA = b.h.l.b.a(context, dVar.b(), aVar2, handler, z2, z ? dVar.c() : -1, i3);
        } else {
            typefaceA = f2456a.a(context, (c.b) aVar, resources, i3);
            if (aVar2 != null) {
                if (typefaceA != null) {
                    aVar2.callbackSuccessAsync(typefaceA, handler);
                } else {
                    aVar2.callbackFailAsync(-3, handler);
                }
            }
        }
        if (typefaceA != null) {
            f2457b.put(a(resources, i2, i3), typefaceA);
        }
        return typefaceA;
    }

    private static String a(Resources resources, int i2, int i3) {
        return resources.getResourcePackageName(i2) + "-" + i2 + "-" + i3;
    }

    public static Typeface b(Resources resources, int i2, int i3) {
        return f2457b.get(a(resources, i2, i3));
    }
}
