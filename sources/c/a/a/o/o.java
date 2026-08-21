package c.a.a.o;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Log;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class o extends b.k.a.d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c.a.a.o.a f3231b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final m f3232c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Set<o> f3233d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private o f3234e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private c.a.a.k f3235f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private b.k.a.d f3236g;

    private class a implements m {
        a() {
        }

        public String toString() {
            return super.toString() + "{fragment=" + o.this + "}";
        }
    }

    public o() {
        this(new c.a.a.o.a());
    }

    @SuppressLint({"ValidFragment"})
    public o(c.a.a.o.a aVar) {
        this.f3232c = new a();
        this.f3233d = new HashSet();
        this.f3231b = aVar;
    }

    private void a(b.k.a.e eVar) {
        s();
        this.f3234e = c.a.a.c.b(eVar).h().b(eVar);
        if (equals(this.f3234e)) {
            return;
        }
        this.f3234e.a(this);
    }

    private void a(o oVar) {
        this.f3233d.add(oVar);
    }

    private void b(o oVar) {
        this.f3233d.remove(oVar);
    }

    private b.k.a.d r() {
        b.k.a.d parentFragment = getParentFragment();
        return parentFragment != null ? parentFragment : this.f3236g;
    }

    private void s() {
        o oVar = this.f3234e;
        if (oVar != null) {
            oVar.b(this);
            this.f3234e = null;
        }
    }

    void a(b.k.a.d dVar) {
        this.f3236g = dVar;
        if (dVar == null || dVar.getActivity() == null) {
            return;
        }
        a(dVar.getActivity());
    }

    public void a(c.a.a.k kVar) {
        this.f3235f = kVar;
    }

    c.a.a.o.a o() {
        return this.f3231b;
    }

    @Override // b.k.a.d
    public void onAttach(Context context) {
        super.onAttach(context);
        try {
            a(getActivity());
        } catch (IllegalStateException e2) {
            if (Log.isLoggable("SupportRMFragment", 5)) {
                Log.w("SupportRMFragment", "Unable to register fragment with root", e2);
            }
        }
    }

    @Override // b.k.a.d
    public void onDestroy() {
        super.onDestroy();
        this.f3231b.a();
        s();
    }

    @Override // b.k.a.d
    public void onDetach() {
        super.onDetach();
        this.f3236g = null;
        s();
    }

    @Override // b.k.a.d
    public void onStart() {
        super.onStart();
        this.f3231b.b();
    }

    @Override // b.k.a.d
    public void onStop() {
        super.onStop();
        this.f3231b.c();
    }

    public c.a.a.k p() {
        return this.f3235f;
    }

    public m q() {
        return this.f3232c;
    }

    @Override // b.k.a.d
    public String toString() {
        return super.toString() + "{parent=" + r() + "}";
    }
}
