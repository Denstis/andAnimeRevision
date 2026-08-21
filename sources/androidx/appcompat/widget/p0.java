package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
class p0 extends h0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WeakReference<Context> f628b;

    public p0(Context context, Resources resources) {
        super(resources);
        this.f628b = new WeakReference<>(context);
    }

    @Override // androidx.appcompat.widget.h0, android.content.res.Resources
    public Drawable getDrawable(int i2) {
        Drawable drawable = super.getDrawable(i2);
        Context context = this.f628b.get();
        if (drawable != null && context != null) {
            j.a();
            j.a(context, i2, drawable);
        }
        return drawable;
    }
}
