package animebestapp.com.ui.top;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import animebestapp.com.R;
import animebestapp.com.models.Anime;
import animebestapp.com.ui.a.d;
import animebestapp.com.ui.info.InfoActivity;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.Gson;
import g.j;
import g.p.b.f;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class TopAnimeActivity extends animebestapp.com.ui.a.a<animebestapp.com.ui.top.c, animebestapp.com.ui.top.a> implements animebestapp.com.ui.top.c, animebestapp.com.ui.a.f.c {
    private final d t = new d(this);
    private HashMap u;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(g.p.b.d dVar) {
            this();
        }
    }

    static final class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            TopAnimeActivity.this.finish();
        }
    }

    public static final class c extends GridLayoutManager.c {
        c() {
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int b(int i2) {
            if (TopAnimeActivity.this.y().getItemViewType(i2) != 0) {
                return 1;
            }
            Resources resources = TopAnimeActivity.this.getResources();
            f.a((Object) resources, "resources");
            return resources.getConfiguration().orientation == 1 ? 2 : 4;
        }
    }

    static {
        new a(null);
    }

    @Override // animebestapp.com.ui.a.f.c
    public void a(int i2, animebestapp.com.models.d dVar) {
        if (dVar == null) {
            throw new j("null cannot be cast to non-null type animebestapp.com.models.Anime");
        }
        startActivity(new Intent(this, (Class<?>) InfoActivity.class).putExtra(FirebaseAnalytics.Param.CONTENT, new Gson().toJson((Anime) dVar)));
    }

    @Override // animebestapp.com.ui.top.c
    public void b(List<Anime> list) {
        f.b(list, "list");
        d dVar = new d(this);
        dVar.a(R.layout.li_top_slide);
        dVar.a(list);
        dVar.a(d.c.FINISH);
        RecyclerView recyclerView = (RecyclerView) h(animebestapp.com.a.rvTopAnime);
        f.a((Object) recyclerView, "rvTopAnime");
        recyclerView.setLayoutManager(new LinearLayoutManager(this, 0, false));
        RecyclerView recyclerView2 = (RecyclerView) h(animebestapp.com.a.rvTopAnime);
        f.a((Object) recyclerView2, "rvTopAnime");
        recyclerView2.setAdapter(dVar);
    }

    @Override // animebestapp.com.ui.top.c
    public void e(List<Anime> list) {
        f.b(list, "list");
        this.t.a(list);
        this.t.a(d.c.FINISH);
    }

    @Override // animebestapp.com.ui.a.a
    public View h(int i2) {
        if (this.u == null) {
            this.u = new HashMap();
        }
        View view = (View) this.u.get(Integer.valueOf(i2));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i2);
        this.u.put(Integer.valueOf(i2), viewFindViewById);
        return viewFindViewById;
    }

    @Override // c.b.a.c.f.e
    public animebestapp.com.ui.top.a l() {
        return new animebestapp.com.ui.top.a();
    }

    @Override // animebestapp.com.ui.a.a, c.b.a.c.a, androidx.appcompat.app.d, b.k.a.e, androidx.core.app.e, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.fragment_top_anime);
        a((Toolbar) h(animebestapp.com.a.toolbar));
        androidx.appcompat.app.a aVarU = u();
        if (aVarU == null) {
            f.a();
            throw null;
        }
        aVarU.d(true);
        androidx.appcompat.app.a aVarU2 = u();
        if (aVarU2 == null) {
            f.a();
            throw null;
        }
        aVarU2.e(true);
        ((Toolbar) h(animebestapp.com.a.toolbar)).setNavigationOnClickListener(new b());
        Resources resources = getResources();
        f.a((Object) resources, "resources");
        GridLayoutManager gridLayoutManager = new GridLayoutManager(this, resources.getConfiguration().orientation == 1 ? 2 : 4);
        gridLayoutManager.a(new c());
        RecyclerView recyclerView = (RecyclerView) h(animebestapp.com.a.rvList);
        f.a((Object) recyclerView, "rvList");
        recyclerView.setLayoutManager(gridLayoutManager);
        RecyclerView recyclerView2 = (RecyclerView) h(animebestapp.com.a.rvList);
        f.a((Object) recyclerView2, "rvList");
        recyclerView2.setAdapter(this.t);
        ((animebestapp.com.ui.top.a) this.r).e();
    }

    public final d y() {
        return this.t;
    }
}
