package b.k.a;

import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public abstract class m extends androidx.viewpager.widget.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final i f2755c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private o f2756d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private d f2757e = null;

    public m(i iVar) {
        this.f2755c = iVar;
    }

    private static String a(int i2, long j2) {
        return "android:switcher:" + i2 + ":" + j2;
    }

    @Override // androidx.viewpager.widget.a
    public Object a(ViewGroup viewGroup, int i2) {
        if (this.f2756d == null) {
            this.f2756d = this.f2755c.a();
        }
        long jD = d(i2);
        d dVarA = this.f2755c.a(a(viewGroup.getId(), jD));
        if (dVarA != null) {
            this.f2756d.a(dVarA);
        } else {
            dVarA = c(i2);
            this.f2756d.a(viewGroup.getId(), dVarA, a(viewGroup.getId(), jD));
        }
        if (dVarA != this.f2757e) {
            dVarA.setMenuVisibility(false);
            dVarA.setUserVisibleHint(false);
        }
        return dVarA;
    }

    @Override // androidx.viewpager.widget.a
    public void a(Parcelable parcelable, ClassLoader classLoader) {
    }

    @Override // androidx.viewpager.widget.a
    public void a(ViewGroup viewGroup) {
        o oVar = this.f2756d;
        if (oVar != null) {
            oVar.d();
            this.f2756d = null;
        }
    }

    @Override // androidx.viewpager.widget.a
    public void a(ViewGroup viewGroup, int i2, Object obj) {
        if (this.f2756d == null) {
            this.f2756d = this.f2755c.a();
        }
        this.f2756d.b((d) obj);
    }

    @Override // androidx.viewpager.widget.a
    public boolean a(View view, Object obj) {
        return ((d) obj).getView() == view;
    }

    @Override // androidx.viewpager.widget.a
    public void b(ViewGroup viewGroup) {
        if (viewGroup.getId() != -1) {
            return;
        }
        throw new IllegalStateException("ViewPager with adapter " + this + " requires a view id");
    }

    @Override // androidx.viewpager.widget.a
    public void b(ViewGroup viewGroup, int i2, Object obj) {
        d dVar = (d) obj;
        d dVar2 = this.f2757e;
        if (dVar != dVar2) {
            if (dVar2 != null) {
                dVar2.setMenuVisibility(false);
                this.f2757e.setUserVisibleHint(false);
            }
            dVar.setMenuVisibility(true);
            dVar.setUserVisibleHint(true);
            this.f2757e = dVar;
        }
    }

    @Override // androidx.viewpager.widget.a
    public Parcelable c() {
        return null;
    }

    public abstract d c(int i2);

    public long d(int i2) {
        return i2;
    }
}
