package androidx.appcompat.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Build;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class n0 extends ContextWrapper {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f615c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static ArrayList<WeakReference<n0>> f616d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Resources f617a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Resources.Theme f618b;

    private n0(Context context) {
        super(context);
        if (!v0.b()) {
            this.f617a = new p0(this, context.getResources());
            this.f618b = null;
        } else {
            this.f617a = new v0(this, context.getResources());
            this.f618b = this.f617a.newTheme();
            this.f618b.setTo(context.getTheme());
        }
    }

    private static boolean a(Context context) {
        if ((context instanceof n0) || (context.getResources() instanceof p0) || (context.getResources() instanceof v0)) {
            return false;
        }
        return Build.VERSION.SDK_INT < 21 || v0.b();
    }

    public static Context b(Context context) {
        if (!a(context)) {
            return context;
        }
        synchronized (f615c) {
            if (f616d == null) {
                f616d = new ArrayList<>();
            } else {
                for (int size = f616d.size() - 1; size >= 0; size--) {
                    WeakReference<n0> weakReference = f616d.get(size);
                    if (weakReference == null || weakReference.get() == null) {
                        f616d.remove(size);
                    }
                }
                for (int size2 = f616d.size() - 1; size2 >= 0; size2--) {
                    WeakReference<n0> weakReference2 = f616d.get(size2);
                    n0 n0Var = weakReference2 != null ? weakReference2.get() : null;
                    if (n0Var != null && n0Var.getBaseContext() == context) {
                        return n0Var;
                    }
                }
            }
            n0 n0Var2 = new n0(context);
            f616d.add(new WeakReference<>(n0Var2));
            return n0Var2;
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return this.f617a.getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return this.f617a;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f618b;
        return theme == null ? super.getTheme() : theme;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i2) {
        Resources.Theme theme = this.f618b;
        if (theme == null) {
            super.setTheme(i2);
        } else {
            theme.applyStyle(i2, true);
        }
    }
}
