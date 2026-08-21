package b.a.n;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.r;
import b.a.n.b;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class f extends ActionMode {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Context f2190a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final b f2191b;

    public static class a implements b.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ActionMode.Callback f2192a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Context f2193b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final ArrayList<f> f2194c = new ArrayList<>();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final b.e.g<Menu, Menu> f2195d = new b.e.g<>();

        public a(Context context, ActionMode.Callback callback) {
            this.f2193b = context;
            this.f2192a = callback;
        }

        private Menu a(Menu menu) {
            Menu menu2 = this.f2195d.get(menu);
            if (menu2 != null) {
                return menu2;
            }
            Menu menuA = r.a(this.f2193b, (b.h.i.a.a) menu);
            this.f2195d.put(menu, menuA);
            return menuA;
        }

        @Override // b.a.n.b.a
        public void a(b bVar) {
            this.f2192a.onDestroyActionMode(b(bVar));
        }

        @Override // b.a.n.b.a
        public boolean a(b bVar, Menu menu) {
            return this.f2192a.onCreateActionMode(b(bVar), a(menu));
        }

        @Override // b.a.n.b.a
        public boolean a(b bVar, MenuItem menuItem) {
            return this.f2192a.onActionItemClicked(b(bVar), r.a(this.f2193b, (b.h.i.a.b) menuItem));
        }

        public ActionMode b(b bVar) {
            int size = this.f2194c.size();
            for (int i2 = 0; i2 < size; i2++) {
                f fVar = this.f2194c.get(i2);
                if (fVar != null && fVar.f2191b == bVar) {
                    return fVar;
                }
            }
            f fVar2 = new f(this.f2193b, bVar);
            this.f2194c.add(fVar2);
            return fVar2;
        }

        @Override // b.a.n.b.a
        public boolean b(b bVar, Menu menu) {
            return this.f2192a.onPrepareActionMode(b(bVar), a(menu));
        }
    }

    public f(Context context, b bVar) {
        this.f2190a = context;
        this.f2191b = bVar;
    }

    @Override // android.view.ActionMode
    public void finish() {
        this.f2191b.a();
    }

    @Override // android.view.ActionMode
    public View getCustomView() {
        return this.f2191b.b();
    }

    @Override // android.view.ActionMode
    public Menu getMenu() {
        return r.a(this.f2190a, (b.h.i.a.a) this.f2191b.c());
    }

    @Override // android.view.ActionMode
    public MenuInflater getMenuInflater() {
        return this.f2191b.d();
    }

    @Override // android.view.ActionMode
    public CharSequence getSubtitle() {
        return this.f2191b.e();
    }

    @Override // android.view.ActionMode
    public Object getTag() {
        return this.f2191b.f();
    }

    @Override // android.view.ActionMode
    public CharSequence getTitle() {
        return this.f2191b.g();
    }

    @Override // android.view.ActionMode
    public boolean getTitleOptionalHint() {
        return this.f2191b.h();
    }

    @Override // android.view.ActionMode
    public void invalidate() {
        this.f2191b.i();
    }

    @Override // android.view.ActionMode
    public boolean isTitleOptional() {
        return this.f2191b.j();
    }

    @Override // android.view.ActionMode
    public void setCustomView(View view) {
        this.f2191b.a(view);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(int i2) {
        this.f2191b.a(i2);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(CharSequence charSequence) {
        this.f2191b.a(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTag(Object obj) {
        this.f2191b.a(obj);
    }

    @Override // android.view.ActionMode
    public void setTitle(int i2) {
        this.f2191b.b(i2);
    }

    @Override // android.view.ActionMode
    public void setTitle(CharSequence charSequence) {
        this.f2191b.b(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTitleOptionalHint(boolean z) {
        this.f2191b.a(z);
    }
}
