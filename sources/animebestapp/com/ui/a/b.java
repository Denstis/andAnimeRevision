package animebestapp.com.ui.a;

import android.os.Bundle;
import android.view.View;
import animebestapp.com.App;
import animebestapp.com.c.a.a;
import animebestapp.com.ui.a.c;
import animebestapp.com.ui.a.f.a;
import b.h.o.s;
import g.p.b.f;

/* JADX INFO: loaded from: classes.dex */
public abstract class b<V extends animebestapp.com.ui.a.f.a, P extends c<V>> extends c.b.a.c.b<V, P> implements animebestapp.com.ui.a.f.a {
    @Override // c.b.a.c.b, b.k.a.d
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        c cVar = (c) this.f3348c;
        a.InterfaceC0025a interfaceC0025aA = animebestapp.com.c.a.b.a();
        b.k.a.e activity = getActivity();
        if (activity == null) {
            f.a();
            throw null;
        }
        f.a((Object) activity, "activity!!");
        interfaceC0025aA.a(activity);
        interfaceC0025aA.a(App.Companion.b());
        cVar.a(interfaceC0025aA.a());
    }

    @Override // c.b.a.c.b, b.k.a.d
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        p();
    }

    @Override // c.b.a.c.b, b.k.a.d
    public void onViewCreated(View view, Bundle bundle) {
        f.b(view, "view");
        super.onViewCreated(view, bundle);
        View view2 = getView();
        if (view2 == null) {
            f.a();
            throw null;
        }
        s.b(view2, getFragmentManager() != null ? r3.b() : 0.0f);
    }

    public abstract void p();
}
