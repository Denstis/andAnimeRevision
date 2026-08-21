package animebestapp.com.ui.nav.h.d.f;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import androidx.viewpager.widget.ViewPager;
import animebestapp.com.R;
import animebestapp.com.ui.a.e;
import animebestapp.com.ui.nav.NavActivity;
import b.k.a.i;
import com.google.android.material.tabs.TabLayout;
import com.google.gson.Gson;
import g.j;
import g.p.b.f;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class a extends animebestapp.com.ui.a.b<d, animebestapp.com.ui.nav.h.d.f.b> implements d, animebestapp.com.ui.a.f.d {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final C0083a f2071g = new C0083a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private e f2072d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Boolean f2073e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private HashMap f2074f;

    /* JADX INFO: renamed from: animebestapp.com.ui.nav.h.d.f.a$a, reason: collision with other inner class name */
    public static final class C0083a {
        private C0083a() {
        }

        public /* synthetic */ C0083a(g.p.b.d dVar) {
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
        public final void onClick(View view) throws IOException {
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
    public final void q() throws IOException {
        Context context = getContext();
        if (context == null) {
            f.a();
            throw null;
        }
        f.a((Object) context, "context!!");
        Context applicationContext = context.getApplicationContext();
        f.a((Object) applicationContext, "context!!.applicationContext");
        InputStream inputStreamOpen = applicationContext.getAssets().open("file.json");
        f.a((Object) inputStreamOpen, "context!!.applicationCon….assets.open(\"file.json\")");
        Reader inputStreamReader = new InputStreamReader(inputStreamOpen, g.s.c.f4406a);
        BufferedReader bufferedReader = inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192);
        try {
            String strA = g.o.b.a(bufferedReader);
            g.o.a.a(bufferedReader, null);
            animebestapp.com.models.f fVar = (animebestapp.com.models.f) new Gson().fromJson(strA, animebestapp.com.models.f.class);
            i childFragmentManager = getChildFragmentManager();
            f.a((Object) childFragmentManager, "childFragmentManager");
            this.f2072d = new e(childFragmentManager);
            e eVar = this.f2072d;
            if (eVar == null) {
                f.c("adapter");
                throw null;
            }
            animebestapp.com.ui.nav.h.d.b bVarA = animebestapp.com.ui.nav.h.d.b.f2054h.a(fVar.get("Mon"));
            String string = getString(R.string.monday);
            f.a((Object) string, "getString(R.string.monday)");
            eVar.a(bVarA, string);
            e eVar2 = this.f2072d;
            if (eVar2 == null) {
                f.c("adapter");
                throw null;
            }
            animebestapp.com.ui.nav.h.d.b bVarA2 = animebestapp.com.ui.nav.h.d.b.f2054h.a(fVar.get("Tue"));
            String string2 = getString(R.string.tuesday);
            f.a((Object) string2, "getString(R.string.tuesday)");
            eVar2.a(bVarA2, string2);
            e eVar3 = this.f2072d;
            if (eVar3 == null) {
                f.c("adapter");
                throw null;
            }
            animebestapp.com.ui.nav.h.d.b bVarA3 = animebestapp.com.ui.nav.h.d.b.f2054h.a(fVar.get("Wed"));
            String string3 = getString(R.string.wednesday);
            f.a((Object) string3, "getString(R.string.wednesday)");
            eVar3.a(bVarA3, string3);
            e eVar4 = this.f2072d;
            if (eVar4 == null) {
                f.c("adapter");
                throw null;
            }
            animebestapp.com.ui.nav.h.d.b bVarA4 = animebestapp.com.ui.nav.h.d.b.f2054h.a(fVar.get("Thu"));
            String string4 = getString(R.string.thursday);
            f.a((Object) string4, "getString(R.string.thursday)");
            eVar4.a(bVarA4, string4);
            e eVar5 = this.f2072d;
            if (eVar5 == null) {
                f.c("adapter");
                throw null;
            }
            animebestapp.com.ui.nav.h.d.b bVarA5 = animebestapp.com.ui.nav.h.d.b.f2054h.a(fVar.get("Fri"));
            String string5 = getString(R.string.friday);
            f.a((Object) string5, "getString(R.string.friday)");
            eVar5.a(bVarA5, string5);
            e eVar6 = this.f2072d;
            if (eVar6 == null) {
                f.c("adapter");
                throw null;
            }
            animebestapp.com.ui.nav.h.d.b bVarA6 = animebestapp.com.ui.nav.h.d.b.f2054h.a(fVar.get("Sat"));
            String string6 = getString(R.string.saturday);
            f.a((Object) string6, "getString(R.string.saturday)");
            eVar6.a(bVarA6, string6);
            e eVar7 = this.f2072d;
            if (eVar7 == null) {
                f.c("adapter");
                throw null;
            }
            animebestapp.com.ui.nav.h.d.b bVarA7 = animebestapp.com.ui.nav.h.d.b.f2054h.a(fVar.get("Sun"));
            String string7 = getString(R.string.sunday);
            f.a((Object) string7, "getString(R.string.sunday)");
            eVar7.a(bVarA7, string7);
            ViewPager viewPager = (ViewPager) f(animebestapp.com.a.viewpager);
            f.a((Object) viewPager, "viewpager");
            e eVar8 = this.f2072d;
            if (eVar8 == null) {
                f.c("adapter");
                throw null;
            }
            viewPager.setAdapter(eVar8);
            ((TabLayout) f(animebestapp.com.a.tabs)).setupWithViewPager((ViewPager) f(animebestapp.com.a.viewpager));
            ((TabLayout) f(animebestapp.com.a.tabs)).invalidate();
        } finally {
        }
    }

    @Override // animebestapp.com.ui.nav.h.d.f.d
    public void a(HashMap<String, List<animebestapp.com.models.e>> map) {
        f.b(map, "items");
        i childFragmentManager = getChildFragmentManager();
        f.a((Object) childFragmentManager, "childFragmentManager");
        this.f2072d = new e(childFragmentManager);
        e eVar = this.f2072d;
        if (eVar == null) {
            f.c("adapter");
            throw null;
        }
        animebestapp.com.ui.nav.h.d.b bVarA = animebestapp.com.ui.nav.h.d.b.f2054h.a(map.get("Mon"));
        String string = getString(R.string.monday);
        f.a((Object) string, "getString(R.string.monday)");
        eVar.a(bVarA, string);
        e eVar2 = this.f2072d;
        if (eVar2 == null) {
            f.c("adapter");
            throw null;
        }
        animebestapp.com.ui.nav.h.d.b bVarA2 = animebestapp.com.ui.nav.h.d.b.f2054h.a(map.get("Tue"));
        String string2 = getString(R.string.tuesday);
        f.a((Object) string2, "getString(R.string.tuesday)");
        eVar2.a(bVarA2, string2);
        e eVar3 = this.f2072d;
        if (eVar3 == null) {
            f.c("adapter");
            throw null;
        }
        animebestapp.com.ui.nav.h.d.b bVarA3 = animebestapp.com.ui.nav.h.d.b.f2054h.a(map.get("Wed"));
        String string3 = getString(R.string.wednesday);
        f.a((Object) string3, "getString(R.string.wednesday)");
        eVar3.a(bVarA3, string3);
        e eVar4 = this.f2072d;
        if (eVar4 == null) {
            f.c("adapter");
            throw null;
        }
        animebestapp.com.ui.nav.h.d.b bVarA4 = animebestapp.com.ui.nav.h.d.b.f2054h.a(map.get("Thu"));
        String string4 = getString(R.string.thursday);
        f.a((Object) string4, "getString(R.string.thursday)");
        eVar4.a(bVarA4, string4);
        e eVar5 = this.f2072d;
        if (eVar5 == null) {
            f.c("adapter");
            throw null;
        }
        animebestapp.com.ui.nav.h.d.b bVarA5 = animebestapp.com.ui.nav.h.d.b.f2054h.a(map.get("Fri"));
        String string5 = getString(R.string.friday);
        f.a((Object) string5, "getString(R.string.friday)");
        eVar5.a(bVarA5, string5);
        e eVar6 = this.f2072d;
        if (eVar6 == null) {
            f.c("adapter");
            throw null;
        }
        animebestapp.com.ui.nav.h.d.b bVarA6 = animebestapp.com.ui.nav.h.d.b.f2054h.a(map.get("Sat"));
        String string6 = getString(R.string.saturday);
        f.a((Object) string6, "getString(R.string.saturday)");
        eVar6.a(bVarA6, string6);
        e eVar7 = this.f2072d;
        if (eVar7 == null) {
            f.c("adapter");
            throw null;
        }
        animebestapp.com.ui.nav.h.d.b bVarA7 = animebestapp.com.ui.nav.h.d.b.f2054h.a(map.get("Sun"));
        String string7 = getString(R.string.sunday);
        f.a((Object) string7, "getString(R.string.sunday)");
        eVar7.a(bVarA7, string7);
        ViewPager viewPager = (ViewPager) f(animebestapp.com.a.viewpager);
        f.a((Object) viewPager, "viewpager");
        e eVar8 = this.f2072d;
        if (eVar8 == null) {
            f.c("adapter");
            throw null;
        }
        viewPager.setAdapter(eVar8);
        ((TabLayout) f(animebestapp.com.a.tabs)).setupWithViewPager((ViewPager) f(animebestapp.com.a.viewpager));
        ((TabLayout) f(animebestapp.com.a.tabs)).invalidate();
        Boolean bool = this.f2073e;
        if (bool != null) {
            d(bool.booleanValue());
        }
    }

    @Override // animebestapp.com.ui.a.f.d
    public boolean d(boolean z) {
        int i2;
        this.f2073e = Boolean.valueOf(z);
        if (!isVisible()) {
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
        e eVar = this.f2072d;
        if (eVar != null) {
            eVar.a(z);
            return true;
        }
        f.c("adapter");
        throw null;
    }

    public View f(int i2) {
        if (this.f2074f == null) {
            this.f2074f = new HashMap();
        }
        View view = (View) this.f2074f.get(Integer.valueOf(i2));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i2);
        this.f2074f.put(Integer.valueOf(i2), viewFindViewById);
        return viewFindViewById;
    }

    @Override // c.b.a.c.f.e
    public animebestapp.com.ui.nav.h.d.f.b l() {
        return new animebestapp.com.ui.nav.h.d.f.b();
    }

    @Override // b.k.a.d
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        f.b(layoutInflater, "inflater");
        return layoutInflater.inflate(R.layout.fragment_tabs, viewGroup, false);
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
        ((animebestapp.com.ui.nav.h.d.f.b) this.f3348c).e();
    }

    @Override // animebestapp.com.ui.a.b
    public void p() {
        HashMap map = this.f2074f;
        if (map != null) {
            map.clear();
        }
    }
}
