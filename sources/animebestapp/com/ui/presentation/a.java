package animebestapp.com.ui.presentation;

import android.view.View;
import android.view.ViewGroup;
import g.m.t;
import g.p.b.f;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class a extends androidx.viewpager.widget.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<View> f2106c = new ArrayList();

    @Override // androidx.viewpager.widget.a
    public int a() {
        return this.f2106c.size();
    }

    public final int a(View view, int i2) {
        f.b(view, "v");
        this.f2106c.add(i2, view);
        return i2;
    }

    @Override // androidx.viewpager.widget.a
    public int a(Object obj) {
        f.b(obj, "object");
        int iA = t.a(this.f2106c, obj);
        if (iA == -1) {
            return -2;
        }
        return iA;
    }

    @Override // androidx.viewpager.widget.a
    public Object a(ViewGroup viewGroup, int i2) {
        f.b(viewGroup, "container");
        View view = this.f2106c.get(i2);
        viewGroup.addView(view);
        return view;
    }

    @Override // androidx.viewpager.widget.a
    public void a(ViewGroup viewGroup, int i2, Object obj) {
        f.b(viewGroup, "container");
        f.b(obj, "object");
        viewGroup.removeView(this.f2106c.get(i2));
    }

    @Override // androidx.viewpager.widget.a
    public boolean a(View view, Object obj) {
        f.b(view, "view");
        f.b(obj, "object");
        return view == obj;
    }

    public final int c(View view) {
        f.b(view, "v");
        int size = this.f2106c.size();
        a(view, size);
        return size;
    }
}
