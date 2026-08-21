package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.view.menu.h;
import androidx.appcompat.view.menu.p;

/* JADX INFO: loaded from: classes.dex */
public interface z {
    b.h.o.w a(int i2, long j2);

    void a(int i2);

    void a(Menu menu, p.a aVar);

    void a(p.a aVar, h.a aVar2);

    void a(j0 j0Var);

    void a(boolean z);

    boolean a();

    void b();

    void b(int i2);

    void b(boolean z);

    void c(int i2);

    boolean c();

    void collapseActionView();

    boolean d();

    boolean e();

    boolean f();

    void g();

    Context getContext();

    CharSequence getTitle();

    boolean h();

    Menu i();

    int j();

    ViewGroup k();

    int l();

    void m();

    void n();

    void setIcon(int i2);

    void setIcon(Drawable drawable);

    void setTitle(CharSequence charSequence);

    void setWindowCallback(Window.Callback callback);

    void setWindowTitle(CharSequence charSequence);
}
