package animebestapp.com.ui.nav.h.d;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import animebestapp.com.R;
import animebestapp.com.models.Anime;
import animebestapp.com.ui.info.InfoActivity;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.Gson;
import g.p.b.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class b extends animebestapp.com.ui.a.b<e, c> implements e, animebestapp.com.ui.a.f.d, animebestapp.com.ui.a.f.c {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f2054h = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private animebestapp.com.ui.nav.h.d.a f2055d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Boolean f2056e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private animebestapp.com.f.a f2057f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private HashMap f2058g;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(g.p.b.d dVar) {
            this();
        }

        public final b a(List<animebestapp.com.models.e> list) {
            b bVar = new b();
            bVar.setArguments(new Bundle());
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            if (list != null) {
                arrayList.addAll(list);
            }
            Bundle arguments = bVar.getArguments();
            if (arguments != null) {
                arguments.putParcelableArrayList("list", arrayList);
                return bVar;
            }
            f.a();
            throw null;
        }
    }

    @Override // animebestapp.com.ui.nav.h.d.e
    public void a() {
        animebestapp.com.f.a aVar = this.f2057f;
        if (aVar != null) {
            aVar.b();
        } else {
            f.c("dialog");
            throw null;
        }
    }

    @Override // animebestapp.com.ui.a.f.c
    public void a(int i2, animebestapp.com.models.d dVar) {
        ((c) this.f3348c).a(i2);
    }

    @Override // animebestapp.com.ui.nav.h.d.e
    public void a(Anime anime) {
        f.b(anime, "anime");
        startActivity(new Intent(getContext(), (Class<?>) InfoActivity.class).putExtra(FirebaseAnalytics.Param.CONTENT, new Gson().toJson(anime)));
    }

    @Override // animebestapp.com.ui.nav.h.d.e
    public void b() {
        animebestapp.com.f.a aVar = this.f2057f;
        if (aVar != null) {
            aVar.a();
        } else {
            f.c("dialog");
            throw null;
        }
    }

    @Override // animebestapp.com.ui.a.f.d
    public boolean d(boolean z) {
        this.f2056e = Boolean.valueOf(z);
        if (((RecyclerView) f(animebestapp.com.a.rvList)) == null) {
            return true;
        }
        ((RecyclerView) f(animebestapp.com.a.rvList)).setBackgroundResource(z ? R.color.backgroundShift : R.color.background);
        animebestapp.com.ui.nav.h.d.a aVar = this.f2055d;
        if (aVar != null) {
            aVar.a(z);
            return true;
        }
        f.c("adapter");
        throw null;
    }

    public View f(int i2) {
        if (this.f2058g == null) {
            this.f2058g = new HashMap();
        }
        View view = (View) this.f2058g.get(Integer.valueOf(i2));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i2);
        this.f2058g.put(Integer.valueOf(i2), viewFindViewById);
        return viewFindViewById;
    }

    @Override // c.b.a.c.f.e
    public c l() {
        Bundle arguments = getArguments();
        if (arguments == null) {
            f.a();
            throw null;
        }
        ArrayList parcelableArrayList = arguments.getParcelableArrayList("list");
        f.a((Object) parcelableArrayList, "arguments!!.getParcelabl…rayList<Schedule>(\"list\")");
        return new c(parcelableArrayList);
    }

    @Override // b.k.a.d
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        f.b(layoutInflater, "inflater");
        return layoutInflater.inflate(R.layout.fragment_list, viewGroup, false);
    }

    @Override // animebestapp.com.ui.a.b, c.b.a.c.b, b.k.a.d
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        p();
    }

    @Override // animebestapp.com.ui.a.b, c.b.a.c.b, b.k.a.d
    public void onViewCreated(View view, Bundle bundle) {
        f.b(view, "view");
        super.onViewCreated(view, bundle);
        Context context = getContext();
        if (context == null) {
            f.a();
            throw null;
        }
        f.a((Object) context, "context!!");
        this.f2057f = new animebestapp.com.f.a(context);
        RecyclerView recyclerView = (RecyclerView) f(animebestapp.com.a.rvList);
        f.a((Object) recyclerView, "rvList");
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        Bundle arguments = getArguments();
        if (arguments == null) {
            f.a();
            throw null;
        }
        ArrayList parcelableArrayList = arguments.getParcelableArrayList("list");
        f.a((Object) parcelableArrayList, "arguments!!.getParcelabl…rayList<Schedule>(\"list\")");
        this.f2055d = new animebestapp.com.ui.nav.h.d.a(this, parcelableArrayList);
        RecyclerView recyclerView2 = (RecyclerView) f(animebestapp.com.a.rvList);
        f.a((Object) recyclerView2, "rvList");
        animebestapp.com.ui.nav.h.d.a aVar = this.f2055d;
        if (aVar == null) {
            f.c("adapter");
            throw null;
        }
        recyclerView2.setAdapter(aVar);
        Boolean bool = this.f2056e;
        if (bool != null) {
            d(bool.booleanValue());
        }
    }

    @Override // animebestapp.com.ui.a.b
    public void p() {
        HashMap map = this.f2058g;
        if (map != null) {
            map.clear();
        }
    }
}
