package androidx.appcompat.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.v0;

/* JADX INFO: loaded from: classes.dex */
public abstract class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f131b = -1;

    f() {
    }

    public static f a(Activity activity, e eVar) {
        return new g(activity, activity.getWindow(), eVar);
    }

    public static f a(Dialog dialog, e eVar) {
        return new g(dialog.getContext(), dialog.getWindow(), eVar);
    }

    public static void a(boolean z) {
        v0.a(z);
    }

    public static void d(int i2) {
        if (i2 == -1 || i2 == 0 || i2 == 1 || i2 == 2) {
            f131b = i2;
        } else {
            Log.d("AppCompatDelegate", "setDefaultNightMode() called with an unknown mode");
        }
    }

    public static int j() {
        return f131b;
    }

    public abstract <T extends View> T a(int i2);

    public abstract void a(Configuration configuration);

    public abstract void a(Bundle bundle);

    public abstract void a(View view);

    public abstract void a(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void a(Toolbar toolbar);

    public abstract void a(CharSequence charSequence);

    public abstract boolean a();

    public abstract MenuInflater b();

    public abstract void b(Bundle bundle);

    public abstract void b(View view, ViewGroup.LayoutParams layoutParams);

    public abstract boolean b(int i2);

    public abstract a c();

    public abstract void c(int i2);

    public abstract void c(Bundle bundle);

    public abstract void d();

    public abstract void e();

    public abstract void f();

    public abstract void g();

    public abstract void h();

    public abstract void i();
}
