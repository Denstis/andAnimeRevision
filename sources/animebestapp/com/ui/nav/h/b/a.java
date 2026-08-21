package animebestapp.com.ui.nav.h.b;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import animebestapp.com.R;
import animebestapp.com.models.Anime;
import animebestapp.com.ui.a.d;
import animebestapp.com.ui.info.InfoActivity;
import animebestapp.com.ui.nav.NavActivity;
import b.k.a.e;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.Gson;
import g.j;
import g.l;
import g.p.b.f;
import g.p.b.g;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class a extends animebestapp.com.ui.a.b<d, animebestapp.com.ui.nav.h.b.b> implements animebestapp.com.ui.a.f.d, animebestapp.com.ui.a.f.b, animebestapp.com.ui.a.f.c, d {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final C0070a f1968h = new C0070a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private animebestapp.com.ui.a.d f1969d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Boolean f1970e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private animebestapp.com.f.a f1971f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private HashMap f1972g;

    /* JADX INFO: renamed from: animebestapp.com.ui.nav.h.b.a$a, reason: collision with other inner class name */
    public static final class C0070a {
        private C0070a() {
        }

        public /* synthetic */ C0070a(g.p.b.d dVar) {
            this();
        }

        public final a a(String str) {
            f.b(str, "type");
            a aVar = new a();
            aVar.setArguments(new Bundle());
            Bundle arguments = aVar.getArguments();
            if (arguments != null) {
                arguments.putString("type", str);
                return aVar;
            }
            f.a();
            throw null;
        }
    }

    static final class b extends g implements g.p.a.a<l> {
        b() {
            super(0);
        }

        @Override // g.p.a.a
        public /* bridge */ /* synthetic */ l a() {
            a2();
            return l.f4367a;
        }

        /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
        public final void a2() {
            e activity = a.this.getActivity();
            if (!(activity instanceof NavActivity)) {
                activity = null;
            }
            NavActivity navActivity = (NavActivity) activity;
            if (navActivity != null) {
                navActivity.j();
            }
        }
    }

    public static final class c extends GridLayoutManager.c {
        c() {
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int b(int i2) {
            if (a.a(a.this).getItemViewType(i2) != 0) {
                return 1;
            }
            Resources resources = a.this.getResources();
            f.a((Object) resources, "resources");
            return resources.getConfiguration().orientation == 1 ? 2 : 4;
        }
    }

    public static final /* synthetic */ animebestapp.com.ui.a.d a(a aVar) {
        animebestapp.com.ui.a.d dVar = aVar.f1969d;
        if (dVar != null) {
            return dVar;
        }
        f.c("adapter");
        throw null;
    }

    @Override // animebestapp.com.ui.nav.h.b.d
    public void a() {
        animebestapp.com.f.a aVar = this.f1971f;
        if (aVar != null) {
            aVar.b();
        } else {
            f.c("dialog");
            throw null;
        }
    }

    @Override // animebestapp.com.ui.a.f.c
    public void a(int i2, animebestapp.com.models.d dVar) {
        if (dVar == null) {
            throw new j("null cannot be cast to non-null type animebestapp.com.models.Anime");
        }
        ((animebestapp.com.ui.nav.h.b.b) this.f3348c).a((Anime) dVar);
    }

    @Override // animebestapp.com.ui.nav.h.b.d
    public void a(Anime anime) {
        f.b(anime, "anime");
        startActivity(new Intent(getContext(), (Class<?>) InfoActivity.class).putExtra(FirebaseAnalytics.Param.CONTENT, new Gson().toJson(anime)));
    }

    @Override // animebestapp.com.ui.nav.h.b.d
    public void b() {
        animebestapp.com.f.a aVar = this.f1971f;
        if (aVar != null) {
            aVar.a();
        } else {
            f.c("dialog");
            throw null;
        }
    }

    @Override // animebestapp.com.ui.a.f.d
    public boolean d(boolean z) {
        this.f1970e = Boolean.valueOf(z);
        if (!isVisible()) {
            return false;
        }
        RecyclerView recyclerView = (RecyclerView) f(animebestapp.com.a.rvList);
        Context context = getContext();
        if (context == null) {
            f.a();
            throw null;
        }
        recyclerView.setBackgroundColor(androidx.core.content.a.a(context, z ? R.color.backgroundShift : R.color.background));
        animebestapp.com.ui.a.d dVar = this.f1969d;
        if (dVar != null) {
            dVar.a(z);
            return false;
        }
        f.c("adapter");
        throw null;
    }

    public View f(int i2) {
        if (this.f1972g == null) {
            this.f1972g = new HashMap();
        }
        View view = (View) this.f1972g.get(Integer.valueOf(i2));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i2);
        this.f1972g.put(Integer.valueOf(i2), viewFindViewById);
        return viewFindViewById;
    }

    @Override // animebestapp.com.ui.nav.h.b.d
    public void f(List<Anime> list) {
        f.b(list, "list");
        animebestapp.com.ui.a.d dVar = this.f1969d;
        if (dVar == null) {
            f.c("adapter");
            throw null;
        }
        dVar.a();
        animebestapp.com.ui.a.d dVar2 = this.f1969d;
        if (dVar2 == null) {
            f.c("adapter");
            throw null;
        }
        dVar2.a(list);
        animebestapp.com.ui.a.d dVar3 = this.f1969d;
        if (dVar3 == null) {
            f.c("adapter");
            throw null;
        }
        dVar3.a(d.c.FINISH);
        Context context = getContext();
        Resources resources = getResources();
        f.a((Object) resources, "resources");
        GridLayoutManager gridLayoutManager = new GridLayoutManager(context, resources.getConfiguration().orientation == 1 ? 2 : 4);
        gridLayoutManager.a(new c());
        RecyclerView recyclerView = (RecyclerView) f(animebestapp.com.a.rvList);
        f.a((Object) recyclerView, "rvList");
        recyclerView.setLayoutManager(gridLayoutManager);
        RecyclerView recyclerView2 = (RecyclerView) f(animebestapp.com.a.rvList);
        f.a((Object) recyclerView2, "rvList");
        animebestapp.com.ui.a.d dVar4 = this.f1969d;
        if (dVar4 == null) {
            f.c("adapter");
            throw null;
        }
        recyclerView2.setAdapter(dVar4);
        Boolean bool = this.f1970e;
        if (bool != null) {
            d(bool.booleanValue());
        }
    }

    @Override // animebestapp.com.ui.nav.h.b.d
    public void j() {
        Context context = getContext();
        if (context == null) {
            f.a();
            throw null;
        }
        f.a((Object) context, "context!!");
        new animebestapp.com.ui.nav.b(context, new b()).b();
    }

    @Override // c.b.a.c.f.e
    public animebestapp.com.ui.nav.h.b.b l() {
        Bundle arguments = getArguments();
        if (arguments == null) {
            f.a();
            throw null;
        }
        String string = arguments.getString("type");
        f.a((Object) string, "arguments!!.getString(\"type\")");
        return new animebestapp.com.ui.nav.h.b.b(string);
    }

    @Override // animebestapp.com.ui.a.f.b
    public boolean onBackPressed() {
        return false;
    }

    @Override // animebestapp.com.ui.a.b, c.b.a.c.b, b.k.a.d
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f1969d = new animebestapp.com.ui.a.d(this);
        Context context = getContext();
        if (context == null) {
            f.a();
            throw null;
        }
        f.a((Object) context, "context!!");
        this.f1971f = new animebestapp.com.f.a(context);
    }

    @Override // b.k.a.d
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        f.b(layoutInflater, "inflater");
        return layoutInflater.inflate(R.layout.fragment_main, viewGroup, false);
    }

    @Override // animebestapp.com.ui.a.b, c.b.a.c.b, b.k.a.d
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        p();
    }

    @Override // c.b.a.c.b, b.k.a.d
    public void onResume() {
        super.onResume();
        ((animebestapp.com.ui.nav.h.b.b) this.f3348c).e();
    }

    @Override // animebestapp.com.ui.a.b, c.b.a.c.b, b.k.a.d
    public void onViewCreated(View view, Bundle bundle) {
        f.b(view, "view");
        super.onViewCreated(view, bundle);
        Boolean bool = this.f1970e;
        if (bool != null) {
            d(bool.booleanValue());
        }
    }

    @Override // animebestapp.com.ui.a.b
    public void p() {
        HashMap map = this.f1972g;
        if (map != null) {
            map.clear();
        }
    }
}
