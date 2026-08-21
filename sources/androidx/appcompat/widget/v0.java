package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class v0 extends Resources {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f706b = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WeakReference<Context> f707a;

    public v0(Context context, Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.f707a = new WeakReference<>(context);
    }

    public static void a(boolean z) {
        f706b = z;
    }

    public static boolean a() {
        return f706b;
    }

    public static boolean b() {
        return a() && Build.VERSION.SDK_INT <= 20;
    }

    final Drawable a(int i2) {
        return super.getDrawable(i2);
    }

    @Override // android.content.res.Resources
    public Drawable getDrawable(int i2) {
        Context context = this.f707a.get();
        return context != null ? j.a().a(context, this, i2) : super.getDrawable(i2);
    }
}
