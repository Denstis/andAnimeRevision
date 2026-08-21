package animebestapp.com.ui.nav.h.a;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import animebestapp.com.R;
import animebestapp.com.models.Anime;
import animebestapp.com.ui.a.d;
import animebestapp.com.ui.info.InfoActivity;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.Gson;
import g.j;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class c extends animebestapp.com.ui.a.b<g, d> implements g, animebestapp.com.ui.a.f.d, animebestapp.com.ui.a.f.c {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f1950h = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Boolean f1951d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private animebestapp.com.ui.a.d f1952e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private animebestapp.com.ui.nav.h.a.b f1953f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private HashMap f1954g;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(g.p.b.d dVar) {
            this();
        }

        public final c a(String str, String str2) {
            g.p.b.f.b(str, "category");
            c cVar = new c();
            cVar.setArguments(new Bundle());
            Bundle arguments = cVar.getArguments();
            if (arguments == null) {
                g.p.b.f.a();
                throw null;
            }
            arguments.putString("category", str);
            Bundle arguments2 = cVar.getArguments();
            if (arguments2 != null) {
                arguments2.putString("key", str2);
                return cVar;
            }
            g.p.b.f.a();
            throw null;
        }
    }

    public static final class b extends GridLayoutManager.c {
        b() {
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int b(int i2) {
            if (c.a(c.this).getItemViewType(i2) != 0) {
                return 1;
            }
            Resources resources = c.this.getResources();
            g.p.b.f.a((Object) resources, "resources");
            return resources.getConfiguration().orientation == 1 ? 2 : 4;
        }
    }

    /* JADX INFO: renamed from: animebestapp.com.ui.nav.h.a.c$c, reason: collision with other inner class name */
    public static final class C0068c extends animebestapp.com.ui.nav.h.a.b {
        C0068c(List list, String str, Context context, List list2, String str2) {
            super(context, list2, str2);
        }

        @Override // animebestapp.com.ui.nav.h.a.b
        public void a(g.f<Integer, String> fVar) {
            g.p.b.f.b(fVar, "item");
            b.k.a.e activity = c.this.getActivity();
            if (activity == null) {
                g.p.b.f.a();
                throw null;
            }
            g.p.b.f.a((Object) activity, "activity!!");
            ((TextView) activity.findViewById(animebestapp.com.a.tvTitle)).setText(fVar.d());
            c.a(c.this).a();
            c.b(c.this).a();
            d dVarC = c.c(c.this);
            String strValueOf = String.valueOf(fVar.c().intValue());
            RecyclerView recyclerView = (RecyclerView) c.this.f(animebestapp.com.a.rvCategory);
            g.p.b.f.a((Object) recyclerView, "rvCategory");
            dVarC.a(strValueOf, recyclerView);
        }
    }

    public static final /* synthetic */ animebestapp.com.ui.a.d a(c cVar) {
        animebestapp.com.ui.a.d dVar = cVar.f1952e;
        if (dVar != null) {
            return dVar;
        }
        g.p.b.f.c("adapter");
        throw null;
    }

    public static final /* synthetic */ animebestapp.com.ui.nav.h.a.b b(c cVar) {
        animebestapp.com.ui.nav.h.a.b bVar = cVar.f1953f;
        if (bVar != null) {
            return bVar;
        }
        g.p.b.f.c("dialog");
        throw null;
    }

    public static final /* synthetic */ d c(c cVar) {
        return (d) cVar.f3348c;
    }

    @Override // animebestapp.com.ui.a.f.c
    public void a(int i2, animebestapp.com.models.d dVar) {
        if (dVar == null) {
            throw new j("null cannot be cast to non-null type animebestapp.com.models.Anime");
        }
        startActivity(new Intent(getContext(), (Class<?>) InfoActivity.class).putExtra(FirebaseAnalytics.Param.CONTENT, new Gson().toJson((Anime) dVar)));
    }

    @Override // animebestapp.com.ui.nav.h.a.g
    public void a(List<Anime> list) {
        g.p.b.f.b(list, "items");
        animebestapp.com.ui.a.d dVar = this.f1952e;
        if (dVar != null) {
            dVar.a(list);
        } else {
            g.p.b.f.c("adapter");
            throw null;
        }
    }

    @Override // animebestapp.com.ui.nav.h.a.g
    public void a(List<g.f<Integer, String>> list, String str) {
        g.p.b.f.b(list, "items");
        g.p.b.f.b(str, "title");
        Context context = getContext();
        Resources resources = getResources();
        g.p.b.f.a((Object) resources, "resources");
        GridLayoutManager gridLayoutManager = new GridLayoutManager(context, resources.getConfiguration().orientation == 1 ? 2 : 4);
        gridLayoutManager.a(new b());
        RecyclerView recyclerView = (RecyclerView) f(animebestapp.com.a.rvCategory);
        g.p.b.f.a((Object) recyclerView, "rvCategory");
        recyclerView.setLayoutManager(gridLayoutManager);
        RecyclerView recyclerView2 = (RecyclerView) f(animebestapp.com.a.rvCategory);
        g.p.b.f.a((Object) recyclerView2, "rvCategory");
        animebestapp.com.ui.a.d dVar = this.f1952e;
        if (dVar == null) {
            g.p.b.f.c("adapter");
            throw null;
        }
        recyclerView2.setAdapter(dVar);
        animebestapp.com.ui.a.d dVar2 = this.f1952e;
        if (dVar2 == null) {
            g.p.b.f.c("adapter");
            throw null;
        }
        dVar2.a(d.c.FINISH);
        Context context2 = getContext();
        if (context2 == null) {
            g.p.b.f.a();
            throw null;
        }
        g.p.b.f.a((Object) context2, "context!!");
        this.f1953f = new C0068c(list, str, context2, list, str);
        Boolean bool = this.f1951d;
        if (bool != null) {
            d(bool.booleanValue());
        }
        animebestapp.com.ui.nav.h.a.b bVar = this.f1953f;
        if (bVar != null) {
            bVar.b();
        } else {
            g.p.b.f.c("dialog");
            throw null;
        }
    }

    @Override // animebestapp.com.ui.nav.h.a.g
    public void c(String str) {
        g.p.b.f.b(str, "title");
        b.k.a.e activity = getActivity();
        if (activity == null) {
            g.p.b.f.a();
            throw null;
        }
        g.p.b.f.a((Object) activity, "activity!!");
        ((TextView) activity.findViewById(animebestapp.com.a.tvTitle)).setText(str);
    }

    @Override // animebestapp.com.ui.a.f.d
    public boolean d(boolean z) {
        this.f1951d = Boolean.valueOf(z);
        if (((RecyclerView) f(animebestapp.com.a.rvCategory)) == null) {
            return true;
        }
        RecyclerView recyclerView = (RecyclerView) f(animebestapp.com.a.rvCategory);
        Context context = getContext();
        if (context == null) {
            g.p.b.f.a();
            throw null;
        }
        recyclerView.setBackgroundColor(androidx.core.content.a.a(context, z ? R.color.backgroundShift : R.color.background));
        animebestapp.com.ui.a.d dVar = this.f1952e;
        if (dVar == null) {
            g.p.b.f.c("adapter");
            throw null;
        }
        dVar.a(z);
        ((RecyclerView) f(animebestapp.com.a.rvCategory)).invalidate();
        animebestapp.com.ui.nav.h.a.b bVar = this.f1953f;
        if (bVar != null) {
            bVar.a(z);
            return true;
        }
        g.p.b.f.c("dialog");
        throw null;
    }

    public View f(int i2) {
        if (this.f1954g == null) {
            this.f1954g = new HashMap();
        }
        View view = (View) this.f1954g.get(Integer.valueOf(i2));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i2);
        this.f1954g.put(Integer.valueOf(i2), viewFindViewById);
        return viewFindViewById;
    }

    @Override // c.b.a.c.f.e
    public d l() {
        Bundle arguments = getArguments();
        if (arguments == null) {
            g.p.b.f.a();
            throw null;
        }
        String string = arguments.getString("key");
        g.p.b.f.a((Object) string, "arguments!!.getString(KEY)");
        return new d(string);
    }

    @Override // animebestapp.com.ui.a.b, c.b.a.c.b, b.k.a.d
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        this.f1952e = new animebestapp.com.ui.a.d(this);
    }

    @Override // b.k.a.d
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        g.p.b.f.b(menu, "menu");
        g.p.b.f.b(menuInflater, "inflater");
        super.onCreateOptionsMenu(menu, menuInflater);
        menuInflater.inflate(R.menu.nav_category, menu);
    }

    @Override // b.k.a.d
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        g.p.b.f.b(layoutInflater, "inflater");
        return layoutInflater.inflate(R.layout.fragment_category, viewGroup, false);
    }

    @Override // animebestapp.com.ui.a.b, c.b.a.c.b, b.k.a.d
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        p();
    }

    @Override // b.k.a.d
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        animebestapp.com.ui.nav.h.a.b bVar = this.f1953f;
        if (bVar != null) {
            bVar.b();
            return super.onOptionsItemSelected(menuItem);
        }
        g.p.b.f.c("dialog");
        throw null;
    }

    @Override // c.b.a.c.b, b.k.a.d
    public void onResume() {
        super.onResume();
        ((d) this.f3348c).g();
    }

    @Override // animebestapp.com.ui.a.b, c.b.a.c.b, b.k.a.d
    public void onViewCreated(View view, Bundle bundle) {
        g.p.b.f.b(view, "view");
        super.onViewCreated(view, bundle);
        ((d) this.f3348c).f();
    }

    @Override // animebestapp.com.ui.a.b
    public void p() {
        HashMap map = this.f1954g;
        if (map != null) {
            map.clear();
        }
    }
}
