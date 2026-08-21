package b.h.o;

import android.content.Context;
import android.os.Build;
import android.view.PointerIcon;

/* JADX INFO: loaded from: classes.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Object f2588a;

    private p(Object obj) {
        this.f2588a = obj;
    }

    public static p a(Context context, int i2) {
        return Build.VERSION.SDK_INT >= 24 ? new p(PointerIcon.getSystemIcon(context, i2)) : new p(null);
    }

    public Object a() {
        return this.f2588a;
    }
}
