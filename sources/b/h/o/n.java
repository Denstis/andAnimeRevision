package b.h.o;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f2587a;

    public n(ViewGroup viewGroup) {
    }

    public int a() {
        return this.f2587a;
    }

    public void a(View view, int i2) {
        this.f2587a = 0;
    }

    public void a(View view, View view2, int i2) {
        a(view, view2, i2, 0);
    }

    public void a(View view, View view2, int i2, int i3) {
        this.f2587a = i2;
    }
}
