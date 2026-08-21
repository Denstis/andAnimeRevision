package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import b.a.n.b;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: androidx.appcompat.app.a$a, reason: collision with other inner class name */
    public static class C0008a extends ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f127a;

        public C0008a(int i2, int i3) {
            super(i2, i3);
            this.f127a = 0;
            this.f127a = 8388627;
        }

        public C0008a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f127a = 0;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b.a.j.ActionBarLayout);
            this.f127a = typedArrayObtainStyledAttributes.getInt(b.a.j.ActionBarLayout_android_layout_gravity, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        public C0008a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f127a = 0;
        }

        public C0008a(C0008a c0008a) {
            super((ViewGroup.MarginLayoutParams) c0008a);
            this.f127a = 0;
            this.f127a = c0008a.f127a;
        }
    }

    public interface b {
        void a(boolean z);
    }

    @Deprecated
    public static abstract class c {
        public abstract CharSequence a();

        public abstract View b();

        public abstract Drawable c();

        public abstract CharSequence d();

        public abstract void e();
    }

    public b.a.n.b a(b.a aVar) {
        return null;
    }

    public void a(Configuration configuration) {
    }

    public abstract void a(CharSequence charSequence);

    public abstract boolean a(int i2, KeyEvent keyEvent);

    public boolean a(KeyEvent keyEvent) {
        return false;
    }

    public abstract void b(CharSequence charSequence);

    public abstract void b(boolean z);

    public abstract void c(boolean z);

    public abstract void d(boolean z);

    public abstract void e(boolean z);

    public boolean e() {
        return false;
    }

    public abstract void f(boolean z);

    public abstract boolean f();

    public abstract int g();

    public abstract Context h();

    public boolean i() {
        return false;
    }

    void j() {
    }

    public boolean k() {
        return false;
    }
}
