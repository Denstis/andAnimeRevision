package animebestapp.com.ui.a;

import androidx.lifecycle.g;
import b.k.a.i;
import b.k.a.m;
import g.p.b.f;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class e extends m {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ArrayList<b.k.a.d> f1645f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ArrayList<String> f1646g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(i iVar) {
        super(iVar);
        f.b(iVar, "fm");
        this.f1645f = new ArrayList<>();
        this.f1646g = new ArrayList<>();
    }

    @Override // androidx.viewpager.widget.a
    public int a() {
        return this.f1645f.size();
    }

    public final e a(b.k.a.d dVar, String str) {
        f.b(dVar, "fragment");
        f.b(str, "title");
        this.f1645f.add(dVar);
        this.f1646g.add(str);
        return this;
    }

    @Override // androidx.viewpager.widget.a
    public CharSequence a(int i2) {
        return this.f1646g.get(i2);
    }

    public final void a(boolean z) {
        for (g gVar : this.f1645f) {
            if (gVar instanceof animebestapp.com.ui.a.f.d) {
                ((animebestapp.com.ui.a.f.d) gVar).d(z);
            }
        }
    }

    @Override // b.k.a.m
    public b.k.a.d c(int i2) {
        b.k.a.d dVar = this.f1645f.get(i2);
        f.a((Object) dVar, "mFragments[position]");
        return dVar;
    }

    public final void d() {
        this.f1645f.clear();
        this.f1646g.clear();
        b();
    }
}
