package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Build;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;

/* JADX INFO: loaded from: classes.dex */
public final class r {
    public static Menu a(Context context, b.h.i.a.a aVar) {
        return new s(context, aVar);
    }

    public static MenuItem a(Context context, b.h.i.a.b bVar) {
        return Build.VERSION.SDK_INT >= 16 ? new m(context, bVar) : new l(context, bVar);
    }

    public static SubMenu a(Context context, b.h.i.a.c cVar) {
        return new w(context, cVar);
    }
}
