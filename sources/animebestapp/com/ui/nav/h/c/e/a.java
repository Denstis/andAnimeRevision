package animebestapp.com.ui.nav.h.c.e;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import animebestapp.com.R;
import animebestapp.com.models.Anime;
import animebestapp.com.models.BannerInfo;
import animebestapp.com.ui.info.InfoActivity;
import animebestapp.com.ui.nav.NavActivity;
import animebestapp.com.utils.SpeedyLinearLayoutManager;
import b.k.a.i;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.material.tabs.TabLayout;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.Gson;
import g.j;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class a extends animebestapp.com.ui.a.b<animebestapp.com.ui.nav.h.c.e.d, animebestapp.com.ui.nav.h.c.e.b> implements animebestapp.com.ui.nav.h.c.e.d, animebestapp.com.ui.a.f.d {
    public static final C0078a l = new C0078a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private animebestapp.com.ui.a.e f2010d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private animebestapp.com.ui.nav.h.d.a f2011e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Boolean f2012f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private animebestapp.com.f.a f2013g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f2014h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private LinearLayoutManager f2015i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Runnable f2016j = new b();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private HashMap f2017k;

    /* JADX INFO: renamed from: animebestapp.com.ui.nav.h.c.e.a$a, reason: collision with other inner class name */
    public static final class C0078a {
        private C0078a() {
        }

        public /* synthetic */ C0078a(g.p.b.d dVar) {
            this();
        }

        public final a a() {
            return new a();
        }
    }

    static final class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (((RecyclerView) a.this.f(animebestapp.com.a.rvRasp)) != null) {
                RecyclerView recyclerView = (RecyclerView) a.this.f(animebestapp.com.a.rvRasp);
                g.p.b.f.a((Object) recyclerView, "rvRasp");
                if (recyclerView.getAdapter() == null) {
                    return;
                }
                a.this.f2014h = true;
                int iG = a.a(a.this).G();
                RecyclerView recyclerView2 = (RecyclerView) a.this.f(animebestapp.com.a.rvRasp);
                g.p.b.f.a((Object) recyclerView2, "rvRasp");
                RecyclerView.g adapter = recyclerView2.getAdapter();
                if (adapter == null) {
                    g.p.b.f.a();
                    throw null;
                }
                g.p.b.f.a((Object) adapter, "rvRasp.adapter!!");
                ((RecyclerView) a.this.f(animebestapp.com.a.rvRasp)).smoothScrollToPosition(iG == adapter.getItemCount() - 1 ? 0 : a.a(a.this).G() + 1);
                a.this.f2014h = false;
            }
        }
    }

    static final class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            a.this.r();
        }
    }

    public static final class d extends RecyclerView.t {
        d() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.t
        public void a(RecyclerView recyclerView, int i2) {
            g.p.b.f.b(recyclerView, "recyclerView");
            super.a(recyclerView, i2);
            if (i2 == 0) {
                Log.d("LOGS", "SCROLL_STATE_IDLE");
                ((RecyclerView) a.this.f(animebestapp.com.a.rvRasp)).postDelayed(a.this.f2016j, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
            } else {
                if (a.this.f2014h) {
                    return;
                }
                ((RecyclerView) a.this.f(animebestapp.com.a.rvRasp)).removeCallbacks(a.this.f2016j);
            }
        }
    }

    static final class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            b.k.a.e activity = a.this.getActivity();
            if (!(activity instanceof NavActivity)) {
                activity = null;
            }
            NavActivity navActivity = (NavActivity) activity;
            if (navActivity != null) {
                navActivity.z();
            }
        }
    }

    static final class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            LinearLayout linearLayout = (LinearLayout) a.this.f(animebestapp.com.a.llBanner);
            g.p.b.f.a((Object) linearLayout, "llBanner");
            linearLayout.setVisibility(8);
            a.c(a.this).f();
        }
    }

    static final class g implements View.OnClickListener {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ BannerInfo f2024c;

        g(BannerInfo bannerInfo) {
            this.f2024c = bannerInfo;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.SEND");
            intent.setType("text/plain");
            intent.putExtra("android.intent.extra.TEXT", this.f2024c.getUrl());
            a.this.startActivity(Intent.createChooser(intent, this.f2024c.getTitleShare()));
        }
    }

    public static final class h implements animebestapp.com.ui.a.f.c {
        h() {
        }

        @Override // animebestapp.com.ui.a.f.c
        public void a(int i2, animebestapp.com.models.d dVar) {
            a.c(a.this).a(i2);
        }
    }

    public static final /* synthetic */ LinearLayoutManager a(a aVar) {
        LinearLayoutManager linearLayoutManager = aVar.f2015i;
        if (linearLayoutManager != null) {
            return linearLayoutManager;
        }
        g.p.b.f.c("mLinearLayoutManager");
        throw null;
    }

    public static final /* synthetic */ animebestapp.com.ui.nav.h.c.e.b c(a aVar) {
        return (animebestapp.com.ui.nav.h.c.e.b) aVar.f3348c;
    }

    private final void q() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r() {
        ViewPager viewPager = (ViewPager) f(animebestapp.com.a.viewpager);
        g.p.b.f.a((Object) viewPager, "viewpager");
        androidx.viewpager.widget.a adapter = viewPager.getAdapter();
        if (adapter == null) {
            throw new j("null cannot be cast to non-null type animebestapp.com.ui.base.PagerAdapter");
        }
        ((animebestapp.com.ui.a.e) adapter).d();
        ((ViewPager) f(animebestapp.com.a.viewpager)).removeAllViewsInLayout();
        ((ViewPager) f(animebestapp.com.a.viewpager)).invalidate();
        i childFragmentManager = getChildFragmentManager();
        g.p.b.f.a((Object) childFragmentManager, "childFragmentManager");
        this.f2010d = new animebestapp.com.ui.a.e(childFragmentManager);
        animebestapp.com.ui.a.e eVar = this.f2010d;
        if (eVar == null) {
            g.p.b.f.c("adapter");
            throw null;
        }
        animebestapp.com.ui.nav.h.c.a aVarA = animebestapp.com.ui.nav.h.c.a.f1995h.a("last");
        String string = getString(R.string.all_anime);
        g.p.b.f.a((Object) string, "getString(R.string.all_anime)");
        eVar.a(aVarA, string);
        animebestapp.com.ui.a.e eVar2 = this.f2010d;
        if (eVar2 == null) {
            g.p.b.f.c("adapter");
            throw null;
        }
        eVar2.a(animebestapp.com.ui.nav.h.c.a.f1995h.a("news"), "Новости");
        animebestapp.com.ui.a.e eVar3 = this.f2010d;
        if (eVar3 == null) {
            g.p.b.f.c("adapter");
            throw null;
        }
        eVar3.a(animebestapp.com.ui.nav.h.c.a.f1995h.a("kitai"), "Китайское");
        animebestapp.com.ui.a.e eVar4 = this.f2010d;
        if (eVar4 == null) {
            g.p.b.f.c("adapter");
            throw null;
        }
        animebestapp.com.ui.nav.h.c.a aVarA2 = animebestapp.com.ui.nav.h.c.a.f1995h.a("new");
        String string2 = getString(R.string.ongoing);
        g.p.b.f.a((Object) string2, "getString(R.string.ongoing)");
        eVar4.a(aVarA2, string2);
        animebestapp.com.ui.a.e eVar5 = this.f2010d;
        if (eVar5 == null) {
            g.p.b.f.c("adapter");
            throw null;
        }
        animebestapp.com.ui.nav.h.c.a aVarA3 = animebestapp.com.ui.nav.h.c.a.f1995h.a("serials");
        String string3 = getString(R.string.serials);
        g.p.b.f.a((Object) string3, "getString(R.string.serials)");
        eVar5.a(aVarA3, string3);
        animebestapp.com.ui.a.e eVar6 = this.f2010d;
        if (eVar6 == null) {
            g.p.b.f.c("adapter");
            throw null;
        }
        animebestapp.com.ui.nav.h.c.a aVarA4 = animebestapp.com.ui.nav.h.c.a.f1995h.a("films");
        String string4 = getString(R.string.films);
        g.p.b.f.a((Object) string4, "getString(R.string.films)");
        eVar6.a(aVarA4, string4);
        animebestapp.com.ui.a.e eVar7 = this.f2010d;
        if (eVar7 == null) {
            g.p.b.f.c("adapter");
            throw null;
        }
        animebestapp.com.ui.nav.h.c.a aVarA5 = animebestapp.com.ui.nav.h.c.a.f1995h.a("ova");
        String string5 = getString(R.string.ova);
        g.p.b.f.a((Object) string5, "getString(R.string.ova)");
        eVar7.a(aVarA5, string5);
        animebestapp.com.ui.a.e eVar8 = this.f2010d;
        if (eVar8 == null) {
            g.p.b.f.c("adapter");
            throw null;
        }
        eVar8.a(animebestapp.com.ui.nav.h.c.a.f1995h.a("reviews"), "Рецензии");
        animebestapp.com.ui.a.e eVar9 = this.f2010d;
        if (eVar9 == null) {
            g.p.b.f.c("adapter");
            throw null;
        }
        animebestapp.com.ui.nav.h.c.a aVarA6 = animebestapp.com.ui.nav.h.c.a.f1995h.a("anonse");
        String string6 = getString(R.string.anons);
        g.p.b.f.a((Object) string6, "getString(R.string.anons)");
        eVar9.a(aVarA6, string6);
        ViewPager viewPager2 = (ViewPager) f(animebestapp.com.a.viewpager);
        g.p.b.f.a((Object) viewPager2, "viewpager");
        animebestapp.com.ui.a.e eVar10 = this.f2010d;
        if (eVar10 == null) {
            g.p.b.f.c("adapter");
            throw null;
        }
        viewPager2.setAdapter(eVar10);
        ((TabLayout) f(animebestapp.com.a.tabs)).setupWithViewPager((ViewPager) f(animebestapp.com.a.viewpager));
        ((TabLayout) f(animebestapp.com.a.tabs)).invalidate();
        Boolean bool = this.f2012f;
        if (bool != null) {
            d(bool.booleanValue());
        }
    }

    private final void s() {
        i childFragmentManager = getChildFragmentManager();
        g.p.b.f.a((Object) childFragmentManager, "childFragmentManager");
        this.f2010d = new animebestapp.com.ui.a.e(childFragmentManager);
        animebestapp.com.ui.a.e eVar = this.f2010d;
        if (eVar == null) {
            g.p.b.f.c("adapter");
            throw null;
        }
        animebestapp.com.ui.nav.h.c.a aVarA = animebestapp.com.ui.nav.h.c.a.f1995h.a("last");
        String string = getString(R.string.all_anime);
        g.p.b.f.a((Object) string, "getString(R.string.all_anime)");
        eVar.a(aVarA, string);
        animebestapp.com.ui.a.e eVar2 = this.f2010d;
        if (eVar2 == null) {
            g.p.b.f.c("adapter");
            throw null;
        }
        eVar2.a(animebestapp.com.ui.nav.h.c.a.f1995h.a("news"), "Новости");
        animebestapp.com.ui.a.e eVar3 = this.f2010d;
        if (eVar3 == null) {
            g.p.b.f.c("adapter");
            throw null;
        }
        eVar3.a(animebestapp.com.ui.nav.h.c.a.f1995h.a("kitai"), "Китайское");
        animebestapp.com.ui.a.e eVar4 = this.f2010d;
        if (eVar4 == null) {
            g.p.b.f.c("adapter");
            throw null;
        }
        animebestapp.com.ui.nav.h.c.a aVarA2 = animebestapp.com.ui.nav.h.c.a.f1995h.a("new");
        String string2 = getString(R.string.ongoing);
        g.p.b.f.a((Object) string2, "getString(R.string.ongoing)");
        eVar4.a(aVarA2, string2);
        animebestapp.com.ui.a.e eVar5 = this.f2010d;
        if (eVar5 == null) {
            g.p.b.f.c("adapter");
            throw null;
        }
        animebestapp.com.ui.nav.h.c.a aVarA3 = animebestapp.com.ui.nav.h.c.a.f1995h.a("serials");
        String string3 = getString(R.string.serials);
        g.p.b.f.a((Object) string3, "getString(R.string.serials)");
        eVar5.a(aVarA3, string3);
        animebestapp.com.ui.a.e eVar6 = this.f2010d;
        if (eVar6 == null) {
            g.p.b.f.c("adapter");
            throw null;
        }
        animebestapp.com.ui.nav.h.c.a aVarA4 = animebestapp.com.ui.nav.h.c.a.f1995h.a("films");
        String string4 = getString(R.string.films);
        g.p.b.f.a((Object) string4, "getString(R.string.films)");
        eVar6.a(aVarA4, string4);
        animebestapp.com.ui.a.e eVar7 = this.f2010d;
        if (eVar7 == null) {
            g.p.b.f.c("adapter");
            throw null;
        }
        animebestapp.com.ui.nav.h.c.a aVarA5 = animebestapp.com.ui.nav.h.c.a.f1995h.a("ova");
        String string5 = getString(R.string.ova);
        g.p.b.f.a((Object) string5, "getString(R.string.ova)");
        eVar7.a(aVarA5, string5);
        animebestapp.com.ui.a.e eVar8 = this.f2010d;
        if (eVar8 == null) {
            g.p.b.f.c("adapter");
            throw null;
        }
        animebestapp.com.ui.nav.h.c.a aVarA6 = animebestapp.com.ui.nav.h.c.a.f1995h.a("anonse");
        String string6 = getString(R.string.anons);
        g.p.b.f.a((Object) string6, "getString(R.string.anons)");
        eVar8.a(aVarA6, string6);
        animebestapp.com.ui.a.e eVar9 = this.f2010d;
        if (eVar9 == null) {
            g.p.b.f.c("adapter");
            throw null;
        }
        eVar9.a(animebestapp.com.ui.nav.h.c.a.f1995h.a("reviews"), "Рецензии");
        ViewPager viewPager = (ViewPager) f(animebestapp.com.a.viewpager);
        g.p.b.f.a((Object) viewPager, "viewpager");
        animebestapp.com.ui.a.e eVar10 = this.f2010d;
        if (eVar10 == null) {
            g.p.b.f.c("adapter");
            throw null;
        }
        viewPager.setAdapter(eVar10);
        ((TabLayout) f(animebestapp.com.a.tabs)).setupWithViewPager((ViewPager) f(animebestapp.com.a.viewpager));
        ((TabLayout) f(animebestapp.com.a.tabs)).invalidate();
        Boolean bool = this.f2012f;
        if (bool != null) {
            d(bool.booleanValue());
        }
    }

    @Override // animebestapp.com.ui.nav.h.c.e.d
    public void a() {
        animebestapp.com.f.a aVar = this.f2013g;
        if (aVar != null) {
            aVar.b();
        } else {
            g.p.b.f.c("dialog");
            throw null;
        }
    }

    @Override // animebestapp.com.ui.nav.h.c.e.d
    public void a(Anime anime) {
        g.p.b.f.b(anime, "anime");
        startActivity(new Intent(getContext(), (Class<?>) InfoActivity.class).putExtra(FirebaseAnalytics.Param.CONTENT, new Gson().toJson(anime)));
    }

    @Override // animebestapp.com.ui.nav.h.c.e.d
    public void a(BannerInfo bannerInfo) {
        g.p.b.f.b(bannerInfo, "bannerInfo");
        LinearLayout linearLayout = (LinearLayout) f(animebestapp.com.a.llBanner);
        g.p.b.f.a((Object) linearLayout, "llBanner");
        linearLayout.setVisibility(0);
        Button button = (Button) f(animebestapp.com.a.btnBanner);
        g.p.b.f.a((Object) button, "btnBanner");
        button.setText(bannerInfo.getBtn());
        TextView textView = (TextView) f(animebestapp.com.a.tvBannerTitle);
        g.p.b.f.a((Object) textView, "tvBannerTitle");
        textView.setText(bannerInfo.getTitle());
        ((Button) f(animebestapp.com.a.btnHideBanner)).setOnClickListener(new f());
        ((Button) f(animebestapp.com.a.btnBanner)).setOnClickListener(new g(bannerInfo));
    }

    @Override // animebestapp.com.ui.nav.h.c.e.d
    public void b() {
        animebestapp.com.f.a aVar = this.f2013g;
        if (aVar != null) {
            aVar.a();
        } else {
            g.p.b.f.c("dialog");
            throw null;
        }
    }

    @Override // animebestapp.com.ui.nav.h.c.e.d
    public void c(List<animebestapp.com.models.e> list) {
        g.p.b.f.b(list, "list");
        this.f2011e = new animebestapp.com.ui.nav.h.d.a(new h(), (ArrayList) list);
        RecyclerView recyclerView = (RecyclerView) f(animebestapp.com.a.rvRasp);
        g.p.b.f.a((Object) recyclerView, "rvRasp");
        animebestapp.com.ui.nav.h.d.a aVar = this.f2011e;
        if (aVar == null) {
            g.p.b.f.c("adapterRasp");
            throw null;
        }
        recyclerView.setAdapter(aVar);
        if (!list.isEmpty()) {
            CardView cardView = (CardView) f(animebestapp.com.a.containerRasp);
            g.p.b.f.a((Object) cardView, "containerRasp");
            cardView.setVisibility(0);
            ((RecyclerView) f(animebestapp.com.a.rvRasp)).postDelayed(this.f2016j, 3500L);
        }
    }

    @Override // animebestapp.com.ui.a.f.d
    public boolean d(boolean z) {
        int i2;
        this.f2012f = Boolean.valueOf(z);
        if (((TabLayout) f(animebestapp.com.a.tabs)) == null) {
            return true;
        }
        TabLayout tabLayout = (TabLayout) f(animebestapp.com.a.tabs);
        Context context = getContext();
        if (z) {
            if (context == null) {
                g.p.b.f.a();
                throw null;
            }
            i2 = R.color.toolbarShiftBG;
        } else {
            if (context == null) {
                g.p.b.f.a();
                throw null;
            }
            i2 = R.color.toolbarBG;
        }
        tabLayout.setBackgroundColor(androidx.core.content.a.a(context, i2));
        animebestapp.com.ui.a.e eVar = this.f2010d;
        if (eVar != null) {
            eVar.a(z);
            return true;
        }
        g.p.b.f.c("adapter");
        throw null;
    }

    public View f(int i2) {
        if (this.f2017k == null) {
            this.f2017k = new HashMap();
        }
        View view = (View) this.f2017k.get(Integer.valueOf(i2));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i2);
        this.f2017k.put(Integer.valueOf(i2), viewFindViewById);
        return viewFindViewById;
    }

    @Override // c.b.a.c.f.e
    public animebestapp.com.ui.nav.h.c.e.b l() {
        return new animebestapp.com.ui.nav.h.c.e.b();
    }

    @Override // animebestapp.com.ui.a.b, c.b.a.c.b, b.k.a.d
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        Context context = getContext();
        if (context == null) {
            g.p.b.f.a();
            throw null;
        }
        g.p.b.f.a((Object) context, "context!!");
        this.f2013g = new animebestapp.com.f.a(context);
    }

    @Override // b.k.a.d
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        g.p.b.f.b(menu, "menu");
        g.p.b.f.b(menuInflater, "inflater");
        super.onCreateOptionsMenu(menu, menuInflater);
        menuInflater.inflate(R.menu.nav_search_click, menu);
    }

    @Override // b.k.a.d
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        g.p.b.f.b(layoutInflater, "inflater");
        if (viewGroup == null) {
            g.p.b.f.a();
            throw null;
        }
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.fragment_tabs, viewGroup, false);
        g.p.b.f.a((Object) viewInflate, "LayoutInflater.from(cont…t_tabs, container, false)");
        return viewInflate;
    }

    @Override // c.b.a.c.b, b.k.a.d
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // animebestapp.com.ui.a.b, c.b.a.c.b, b.k.a.d
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        p();
    }

    @Override // b.k.a.d
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        g.p.b.f.b(menuItem, "item");
        if (menuItem.getItemId() == R.id.m_refresh) {
            r();
        } else {
            b.k.a.e activity = getActivity();
            if (activity == null) {
                throw new j("null cannot be cast to non-null type animebestapp.com.ui.nav.NavActivity");
            }
            ((NavActivity) activity).A();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // c.b.a.c.b, b.k.a.d
    public void onPause() {
        super.onPause();
        ((RecyclerView) f(animebestapp.com.a.rvRasp)).removeCallbacks(this.f2016j);
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
        ((ImageButton) ((NavActivity) activity).h(animebestapp.com.a.btnRefresh)).setOnClickListener(new c());
    }

    @Override // animebestapp.com.ui.a.b, c.b.a.c.b, b.k.a.d
    public void onViewCreated(View view, Bundle bundle) {
        g.p.b.f.b(view, "view");
        super.onViewCreated(view, bundle);
        q();
        s();
        Context context = getContext();
        if (context == null) {
            g.p.b.f.a();
            throw null;
        }
        g.p.b.f.a((Object) context, "context!!");
        this.f2015i = new SpeedyLinearLayoutManager(context, 0, false);
        RecyclerView recyclerView = (RecyclerView) f(animebestapp.com.a.rvRasp);
        g.p.b.f.a((Object) recyclerView, "rvRasp");
        LinearLayoutManager linearLayoutManager = this.f2015i;
        if (linearLayoutManager == null) {
            g.p.b.f.c("mLinearLayoutManager");
            throw null;
        }
        recyclerView.setLayoutManager(linearLayoutManager);
        new animebestapp.com.utils.f().a((RecyclerView) f(animebestapp.com.a.rvRasp));
        Resources resources = getResources();
        g.p.b.f.a((Object) resources, "resources");
        if (resources.getConfiguration().orientation == 1) {
            ((RecyclerView) f(animebestapp.com.a.rvRasp)).addOnScrollListener(new d());
            ((animebestapp.com.ui.nav.h.c.e.b) this.f3348c).g();
            ((TextView) f(animebestapp.com.a.btnRasp)).setOnClickListener(new e());
        }
    }

    @Override // animebestapp.com.ui.a.b
    public void p() {
        HashMap map = this.f2017k;
        if (map != null) {
            map.clear();
        }
    }
}
