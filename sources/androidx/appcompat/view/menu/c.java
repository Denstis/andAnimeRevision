package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
abstract class c<T> extends d<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Context f270b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Map<b.h.i.a.b, MenuItem> f271c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map<b.h.i.a.c, SubMenu> f272d;

    c(Context context, T t) {
        super(t);
        this.f270b = context;
    }

    final MenuItem a(MenuItem menuItem) {
        if (!(menuItem instanceof b.h.i.a.b)) {
            return menuItem;
        }
        b.h.i.a.b bVar = (b.h.i.a.b) menuItem;
        if (this.f271c == null) {
            this.f271c = new b.e.a();
        }
        MenuItem menuItem2 = this.f271c.get(menuItem);
        if (menuItem2 != null) {
            return menuItem2;
        }
        MenuItem menuItemA = r.a(this.f270b, bVar);
        this.f271c.put(bVar, menuItemA);
        return menuItemA;
    }

    final SubMenu a(SubMenu subMenu) {
        if (!(subMenu instanceof b.h.i.a.c)) {
            return subMenu;
        }
        b.h.i.a.c cVar = (b.h.i.a.c) subMenu;
        if (this.f272d == null) {
            this.f272d = new b.e.a();
        }
        SubMenu subMenu2 = this.f272d.get(cVar);
        if (subMenu2 != null) {
            return subMenu2;
        }
        SubMenu subMenuA = r.a(this.f270b, cVar);
        this.f272d.put(cVar, subMenuA);
        return subMenuA;
    }

    final void a(int i2) {
        Map<b.h.i.a.b, MenuItem> map = this.f271c;
        if (map == null) {
            return;
        }
        Iterator<b.h.i.a.b> it = map.keySet().iterator();
        while (it.hasNext()) {
            if (i2 == it.next().getGroupId()) {
                it.remove();
            }
        }
    }

    final void b() {
        Map<b.h.i.a.b, MenuItem> map = this.f271c;
        if (map != null) {
            map.clear();
        }
        Map<b.h.i.a.c, SubMenu> map2 = this.f272d;
        if (map2 != null) {
            map2.clear();
        }
    }

    final void b(int i2) {
        Map<b.h.i.a.b, MenuItem> map = this.f271c;
        if (map == null) {
            return;
        }
        Iterator<b.h.i.a.b> it = map.keySet().iterator();
        while (it.hasNext()) {
            if (i2 == it.next().getItemId()) {
                it.remove();
                return;
            }
        }
    }
}
