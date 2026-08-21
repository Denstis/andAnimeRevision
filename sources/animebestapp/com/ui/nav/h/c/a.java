package animebestapp.com.ui.nav.h.c;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.Log;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import animebestapp.com.R;
import animebestapp.com.models.Anime;
import animebestapp.com.models.News;
import animebestapp.com.ui.info.InfoActivity;
import animebestapp.com.ui.news.NewsDetailActivity;
import b.k.a.e;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.Gson;
import g.p.b.f;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class a extends animebestapp.com.ui.a.b<d, animebestapp.com.ui.nav.h.c.b> implements d, animebestapp.com.ui.a.f.d, animebestapp.com.ui.a.f.b, animebestapp.com.ui.a.f.c {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final C0075a f1995h = new C0075a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private animebestapp.com.ui.a.d f1996d = new animebestapp.com.ui.a.d(this);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private GestureDetector f1997e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Boolean f1998f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private HashMap f1999g;

    /* JADX INFO: renamed from: animebestapp.com.ui.nav.h.c.a$a, reason: collision with other inner class name */
    public static final class C0075a {
        private C0075a() {
        }

        public /* synthetic */ C0075a(g.p.b.d dVar) {
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

    public static final class b extends GridLayoutManager.c {
        b() {
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.c
        public int b(int i2) {
            if (a.this.f1996d.getItemViewType(i2) != 0) {
                return 1;
            }
            Resources resources = a.this.getResources();
            f.a((Object) resources, "resources");
            return resources.getConfiguration().orientation == 1 ? 2 : 4;
        }
    }

    static final class c implements View.OnTouchListener {
        c() {
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            return a.b(a.this).onTouchEvent(motionEvent);
        }
    }

    public static final /* synthetic */ GestureDetector b(a aVar) {
        GestureDetector gestureDetector = aVar.f1997e;
        if (gestureDetector != null) {
            return gestureDetector;
        }
        f.c("mGestureDetector");
        throw null;
    }

    @Override // animebestapp.com.ui.a.f.c
    public void a(int i2, animebestapp.com.models.d dVar) {
        Intent intent;
        Gson gson;
        if (dVar instanceof Anime) {
            intent = new Intent(getContext(), (Class<?>) InfoActivity.class);
            gson = new Gson();
        } else {
            if (!(dVar instanceof News)) {
                return;
            }
            String category = ((News) dVar).getCategory();
            if (category != null && category.hashCode() == 56 && category.equals("8")) {
                intent = new Intent(getContext(), (Class<?>) NewsDetailActivity.class);
                gson = new Gson();
            } else {
                intent = new Intent(getContext(), (Class<?>) NewsDetailActivity.class);
                gson = new Gson();
            }
        }
        startActivity(intent.putExtra(FirebaseAnalytics.Param.CONTENT, gson.toJson(dVar)));
    }

    @Override // animebestapp.com.ui.nav.h.c.d
    public void a(List<? extends animebestapp.com.models.d> list) {
        f.b(list, "items");
        this.f1996d.a(list);
    }

    @Override // animebestapp.com.ui.a.f.d
    public boolean d(boolean z) {
        this.f1998f = Boolean.valueOf(z);
        if (((RelativeLayout) f(animebestapp.com.a.rlContainer)) == null) {
            return true;
        }
        RelativeLayout relativeLayout = (RelativeLayout) f(animebestapp.com.a.rlContainer);
        Context context = getContext();
        if (context == null) {
            f.a();
            throw null;
        }
        relativeLayout.setBackgroundColor(androidx.core.content.a.a(context, z ? R.color.backgroundShift : R.color.background));
        this.f1996d.a(z);
        return true;
    }

    public View f(int i2) {
        if (this.f1999g == null) {
            this.f1999g = new HashMap();
        }
        View view = (View) this.f1999g.get(Integer.valueOf(i2));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i2);
        this.f1999g.put(Integer.valueOf(i2), viewFindViewById);
        return viewFindViewById;
    }

    @Override // animebestapp.com.ui.nav.h.c.d
    public void f() {
        ((RecyclerView) f(animebestapp.com.a.rvList)).smoothScrollToPosition(0);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // c.b.a.c.f.e
    public animebestapp.com.ui.nav.h.c.b l() {
        Bundle arguments = getArguments();
        String str = null;
        if (arguments == null) {
            f.a();
            throw null;
        }
        String string = arguments.getString("type");
        if (string != null) {
            switch (string.hashCode()) {
                case -1412936162:
                    if (string.equals("anonse")) {
                        str = "84";
                    }
                    break;
                case 108960:
                    if (string.equals("new")) {
                        str = "6";
                    }
                    break;
                case 110426:
                    if (string.equals("ova")) {
                        str = "10";
                    }
                    break;
                case 3377875:
                    if (string.equals("news")) {
                        str = "7";
                    }
                    break;
                case 97434479:
                    if (string.equals("films")) {
                        str = "9";
                    }
                    break;
                case 102059390:
                    if (string.equals("kitai")) {
                        str = "277";
                    }
                    break;
                case 1099953179:
                    if (string.equals("reviews")) {
                        str = "8";
                    }
                    break;
                case 1983758591:
                    if (string.equals("serials")) {
                        str = "17";
                    }
                    break;
            }
        }
        return new animebestapp.com.ui.nav.h.c.b(str);
    }

    @Override // animebestapp.com.ui.a.f.b
    public boolean onBackPressed() {
        return q();
    }

    @Override // animebestapp.com.ui.a.b, c.b.a.c.b, b.k.a.d
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Log.d("LOGS", "Main onCreate");
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
        e activity = getActivity();
        if (activity == null) {
            f.a();
            throw null;
        }
        f.a((Object) activity, "activity!!");
        ((TextView) activity.findViewById(animebestapp.com.a.tvTitle)).setText(R.string.app_name);
    }

    @Override // animebestapp.com.ui.a.b, c.b.a.c.b, b.k.a.d
    public void onViewCreated(View view, Bundle bundle) {
        f.b(view, "view");
        super.onViewCreated(view, bundle);
        Context context = getContext();
        Resources resources = getResources();
        f.a((Object) resources, "resources");
        GridLayoutManager gridLayoutManager = new GridLayoutManager(context, resources.getConfiguration().orientation == 1 ? 2 : 4);
        gridLayoutManager.a(new b());
        Log.d("LOGS", "Main onViewCreated");
        RecyclerView recyclerView = (RecyclerView) f(animebestapp.com.a.rvList);
        f.a((Object) recyclerView, "rvList");
        recyclerView.setLayoutManager(gridLayoutManager);
        RecyclerView recyclerView2 = (RecyclerView) f(animebestapp.com.a.rvList);
        f.a((Object) recyclerView2, "rvList");
        recyclerView2.setAdapter(this.f1996d);
        Context context2 = getContext();
        RecyclerView recyclerView3 = (RecyclerView) f(animebestapp.com.a.rvList);
        f.a((Object) recyclerView3, "rvList");
        this.f1997e = new GestureDetector(context2, new animebestapp.com.utils.e(recyclerView3));
        ((RecyclerView) f(animebestapp.com.a.rvList)).setOnTouchListener(new c());
        Boolean bool = this.f1998f;
        if (bool != null) {
            d(bool.booleanValue());
        }
        RecyclerView recyclerView4 = (RecyclerView) f(animebestapp.com.a.rvList);
        f.a((Object) recyclerView4, "rvList");
        if (recyclerView4.getChildCount() == 0) {
            animebestapp.com.ui.nav.h.c.b bVar = (animebestapp.com.ui.nav.h.c.b) this.f3348c;
            RecyclerView recyclerView5 = (RecyclerView) f(animebestapp.com.a.rvList);
            f.a((Object) recyclerView5, "rvList");
            bVar.a(recyclerView5);
        }
    }

    @Override // animebestapp.com.ui.a.b
    public void p() {
        HashMap map = this.f1999g;
        if (map != null) {
            map.clear();
        }
    }

    public boolean q() {
        e activity = getActivity();
        if (activity != null) {
            activity.finish();
            return false;
        }
        f.a();
        throw null;
    }
}
