package animebestapp.com.ui.nav.h.b.e;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import androidx.viewpager.widget.ViewPager;
import animebestapp.com.R;
import animebestapp.com.ui.a.e;
import animebestapp.com.ui.a.f.d;
import animebestapp.com.ui.nav.NavActivity;
import b.k.a.i;
import com.google.android.material.tabs.TabLayout;
import g.j;
import g.p.b.f;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class a extends animebestapp.com.ui.a.b<c, animebestapp.com.ui.nav.h.b.e.b> implements c, d {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final C0074a f1990g = new C0074a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private e f1991d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Boolean f1992e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private HashMap f1993f;

    /* JADX INFO: renamed from: animebestapp.com.ui.nav.h.b.e.a$a, reason: collision with other inner class name */
    public static final class C0074a {
        private C0074a() {
        }

        public /* synthetic */ C0074a(g.p.b.d dVar) {
            this();
        }

        public final a a() {
            return new a();
        }
    }

    static final class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ViewPager viewPager = (ViewPager) a.this.f(animebestapp.com.a.viewpager);
            f.a((Object) viewPager, "viewpager");
            androidx.viewpager.widget.a adapter = viewPager.getAdapter();
            if (adapter == null) {
                throw new j("null cannot be cast to non-null type animebestapp.com.ui.base.PagerAdapter");
            }
            ((e) adapter).d();
            ((ViewPager) a.this.f(animebestapp.com.a.viewpager)).removeAllViewsInLayout();
            ((ViewPager) a.this.f(animebestapp.com.a.viewpager)).invalidate();
            a.this.q();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q() {
        i childFragmentManager = getChildFragmentManager();
        f.a((Object) childFragmentManager, "childFragmentManager");
        this.f1991d = new e(childFragmentManager);
        e eVar = this.f1991d;
        if (eVar == null) {
            f.c("adapter");
            throw null;
        }
        animebestapp.com.ui.nav.h.b.a aVarA = animebestapp.com.ui.nav.h.b.a.f1968h.a("6");
        String string = getString(R.string.look);
        f.a((Object) string, "getString(R.string.look)");
        eVar.a(aVarA, string);
        e eVar2 = this.f1991d;
        if (eVar2 == null) {
            f.c("adapter");
            throw null;
        }
        animebestapp.com.ui.nav.h.b.a aVarA2 = animebestapp.com.ui.nav.h.b.a.f1968h.a("1");
        String string2 = getString(R.string.viewed);
        f.a((Object) string2, "getString(R.string.viewed)");
        eVar2.a(aVarA2, string2);
        e eVar3 = this.f1991d;
        if (eVar3 == null) {
            f.c("adapter");
            throw null;
        }
        animebestapp.com.ui.nav.h.b.a aVarA3 = animebestapp.com.ui.nav.h.b.a.f1968h.a("2");
        String string3 = getString(R.string.abandoned);
        f.a((Object) string3, "getString(R.string.abandoned)");
        eVar3.a(aVarA3, string3);
        e eVar4 = this.f1991d;
        if (eVar4 == null) {
            f.c("adapter");
            throw null;
        }
        animebestapp.com.ui.nav.h.b.a aVarA4 = animebestapp.com.ui.nav.h.b.a.f1968h.a("3");
        String string4 = getString(R.string.snoozed);
        f.a((Object) string4, "getString(R.string.snoozed)");
        eVar4.a(aVarA4, string4);
        e eVar5 = this.f1991d;
        if (eVar5 == null) {
            f.c("adapter");
            throw null;
        }
        animebestapp.com.ui.nav.h.b.a aVarA5 = animebestapp.com.ui.nav.h.b.a.f1968h.a("4");
        String string5 = getString(R.string.scheduled);
        f.a((Object) string5, "getString(R.string.scheduled)");
        eVar5.a(aVarA5, string5);
        e eVar6 = this.f1991d;
        if (eVar6 == null) {
            f.c("adapter");
            throw null;
        }
        animebestapp.com.ui.nav.h.b.a aVarA6 = animebestapp.com.ui.nav.h.b.a.f1968h.a("5");
        String string6 = getString(R.string.reviewing);
        f.a((Object) string6, "getString(R.string.reviewing)");
        eVar6.a(aVarA6, string6);
        ViewPager viewPager = (ViewPager) f(animebestapp.com.a.viewpager);
        f.a((Object) viewPager, "viewpager");
        e eVar7 = this.f1991d;
        if (eVar7 == null) {
            f.c("adapter");
            throw null;
        }
        viewPager.setAdapter(eVar7);
        ((TabLayout) f(animebestapp.com.a.tabs)).setupWithViewPager((ViewPager) f(animebestapp.com.a.viewpager));
        ((TabLayout) f(animebestapp.com.a.tabs)).invalidate();
        Boolean bool = this.f1992e;
        if (bool != null) {
            d(bool.booleanValue());
        }
    }

    @Override // animebestapp.com.ui.a.f.d
    public boolean d(boolean z) {
        int i2;
        this.f1992e = Boolean.valueOf(z);
        if (((TabLayout) f(animebestapp.com.a.tabs)) == null) {
            return true;
        }
        TabLayout tabLayout = (TabLayout) f(animebestapp.com.a.tabs);
        Context context = getContext();
        if (z) {
            if (context == null) {
                f.a();
                throw null;
            }
            i2 = R.color.toolbarShiftBG;
        } else {
            if (context == null) {
                f.a();
                throw null;
            }
            i2 = R.color.toolbarBG;
        }
        tabLayout.setBackgroundColor(androidx.core.content.a.a(context, i2));
        e eVar = this.f1991d;
        if (eVar != null) {
            eVar.a(z);
            return true;
        }
        f.c("adapter");
        throw null;
    }

    public View f(int i2) {
        if (this.f1993f == null) {
            this.f1993f = new HashMap();
        }
        View view = (View) this.f1993f.get(Integer.valueOf(i2));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i2);
        this.f1993f.put(Integer.valueOf(i2), viewFindViewById);
        return viewFindViewById;
    }

    @Override // c.b.a.c.f.e
    public animebestapp.com.ui.nav.h.b.e.b l() {
        return new animebestapp.com.ui.nav.h.b.e.b();
    }

    @Override // b.k.a.d
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        f.b(layoutInflater, "inflater");
        if (viewGroup == null) {
            f.a();
            throw null;
        }
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.fragment_tabs, viewGroup, false);
        f.a((Object) viewInflate, "LayoutInflater.from(cont…t_tabs, container, false)");
        return viewInflate;
    }

    @Override // animebestapp.com.ui.a.b, c.b.a.c.b, b.k.a.d
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        p();
    }

    @Override // c.b.a.c.b, b.k.a.d
    public void onPause() {
        super.onPause();
        b.k.a.e activity = getActivity();
        if (activity == null) {
            throw new j("null cannot be cast to non-null type animebestapp.com.ui.nav.NavActivity");
        }
        ((ImageButton) ((NavActivity) activity).h(animebestapp.com.a.btnRefresh)).setOnClickListener(null);
    }

    @Override // c.b.a.c.b, b.k.a.d
    public void onResume() {
        super.onResume();
        b.k.a.e activity = getActivity();
        if (activity == null) {
            throw new j("null cannot be cast to non-null type animebestapp.com.ui.nav.NavActivity");
        }
        ((ImageButton) ((NavActivity) activity).h(animebestapp.com.a.btnRefresh)).setOnClickListener(new b());
    }

    @Override // animebestapp.com.ui.a.b, c.b.a.c.b, b.k.a.d
    public void onViewCreated(View view, Bundle bundle) {
        f.b(view, "view");
        super.onViewCreated(view, bundle);
        q();
    }

    @Override // animebestapp.com.ui.a.b
    public void p() {
        HashMap map = this.f1993f;
        if (map != null) {
            map.clear();
        }
    }
}
