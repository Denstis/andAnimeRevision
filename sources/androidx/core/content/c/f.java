package androidx.core.content.c;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.TypedValue;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    public static abstract class a {

        /* JADX INFO: renamed from: androidx.core.content.c.f$a$a, reason: collision with other inner class name */
        class RunnableC0018a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Typeface f921b;

            RunnableC0018a(Typeface typeface) {
                this.f921b = typeface;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.onFontRetrieved(this.f921b);
            }
        }

        class b implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f923b;

            b(int i2) {
                this.f923b = i2;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.onFontRetrievalFailed(this.f923b);
            }
        }

        public final void callbackFailAsync(int i2, Handler handler) {
            if (handler == null) {
                handler = new Handler(Looper.getMainLooper());
            }
            handler.post(new b(i2));
        }

        public final void callbackSuccessAsync(Typeface typeface, Handler handler) {
            if (handler == null) {
                handler = new Handler(Looper.getMainLooper());
            }
            handler.post(new RunnableC0018a(typeface));
        }

        public abstract void onFontRetrievalFailed(int i2);

        public abstract void onFontRetrieved(Typeface typeface);
    }

    public static Typeface a(Context context, int i2) {
        if (context.isRestricted()) {
            return null;
        }
        return a(context, i2, new TypedValue(), 0, null, null, false);
    }

    public static Typeface a(Context context, int i2, TypedValue typedValue, int i3, a aVar) {
        if (context.isRestricted()) {
            return null;
        }
        return a(context, i2, typedValue, i3, aVar, null, true);
    }

    private static Typeface a(Context context, int i2, TypedValue typedValue, int i3, a aVar, Handler handler, boolean z) {
        Resources resources = context.getResources();
        resources.getValue(i2, typedValue, true);
        Typeface typefaceA = a(context, resources, typedValue, i2, i3, aVar, handler, z);
        if (typefaceA != null || aVar != null) {
            return typefaceA;
        }
        throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i2) + " could not be retrieved.");
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0096  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static android.graphics.Typeface a(android.content.Context r15, android.content.res.Resources r16, android.util.TypedValue r17, int r18, int r19, androidx.core.content.c.f.a r20, android.os.Handler r21, boolean r22) {
        /*
            Method dump skipped, instruction units count: 201
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.c.f.a(android.content.Context, android.content.res.Resources, android.util.TypedValue, int, int, androidx.core.content.c.f$a, android.os.Handler, boolean):android.graphics.Typeface");
    }

    public static Drawable a(Resources resources, int i2, Resources.Theme theme) {
        return Build.VERSION.SDK_INT >= 21 ? resources.getDrawable(i2, theme) : resources.getDrawable(i2);
    }

    public static void a(Context context, int i2, a aVar, Handler handler) {
        b.h.n.g.a(aVar);
        if (context.isRestricted()) {
            aVar.callbackFailAsync(-4, handler);
        } else {
            a(context, i2, new TypedValue(), 0, aVar, handler, false);
        }
    }
}
