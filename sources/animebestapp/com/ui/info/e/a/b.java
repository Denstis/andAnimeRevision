package animebestapp.com.ui.info.e.a;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import animebestapp.com.R;
import animebestapp.com.models.Anime;
import animebestapp.com.models.XFields;
import animebestapp.com.ui.info.InfoActivity;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.Gson;
import g.j;
import g.m.l;
import g.s.n;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class b extends animebestapp.com.ui.a.b<e, c> implements e {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f1733f = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private animebestapp.com.f.a f1734d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private HashMap f1735e;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(g.p.b.d dVar) {
            this();
        }

        public final b a(Anime anime) {
            g.p.b.f.b(anime, "anime");
            b bVar = new b();
            bVar.setArguments(new Bundle());
            Bundle arguments = bVar.getArguments();
            if (arguments != null) {
                arguments.putString("player", new Gson().toJson(anime));
                return bVar;
            }
            g.p.b.f.a();
            throw null;
        }
    }

    /* JADX INFO: renamed from: animebestapp.com.ui.info.e.a.b$b, reason: collision with other inner class name */
    static final class RunnableC0053b implements Runnable {
        RunnableC0053b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ((RecyclerView) b.this.f(animebestapp.com.a.rvList)).scrollToPosition(0);
        }
    }

    private final String a(String str, int i2) {
        String string;
        String str2;
        if (Build.VERSION.SDK_INT >= 24) {
            Spanned spannedFromHtml = Html.fromHtml(str, 0);
            if (spannedFromHtml == null) {
                throw new j("null cannot be cast to non-null type android.text.SpannableStringBuilder");
            }
            string = ((SpannableStringBuilder) spannedFromHtml).delete(0, i2).toString();
            str2 = "(Html.fromHtml(html, Htm…ete(0, offset).toString()";
        } else {
            Spanned spannedFromHtml2 = Html.fromHtml(str);
            if (spannedFromHtml2 == null) {
                throw new j("null cannot be cast to non-null type android.text.SpannableStringBuilder");
            }
            string = ((SpannableStringBuilder) spannedFromHtml2).delete(0, i2).toString();
            str2 = "(Html.fromHtml(html) as …ete(0, offset).toString()";
        }
        g.p.b.f.a((Object) string, str2);
        return string;
    }

    private final List<animebestapp.com.models.a> g(String str) {
        long j2;
        if (str == null) {
            return l.a();
        }
        List<String> listA = n.a((CharSequence) str, new String[]{"<li>"}, false, 0, 6, (Object) null);
        ArrayList arrayList = new ArrayList();
        for (String str2 : listA) {
            if (str2.length() > 0) {
                try {
                    int iB = n.b((CharSequence) str2, "/anime/", 0, false, 6, (Object) null) + 7;
                    int iA = n.a((CharSequence) str2, "-", n.b((CharSequence) str2, "/anime/", 0, false, 6, (Object) null) + 7, false, 4, (Object) null);
                    if (str2 == null) {
                        throw new j("null cannot be cast to non-null type java.lang.String");
                    }
                    String strSubstring = str2.substring(iB, iA);
                    g.p.b.f.a((Object) strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    j2 = Long.parseLong(strSubstring);
                } catch (Exception e2) {
                    e2.printStackTrace();
                    j2 = 0;
                }
                if (!n.a((CharSequence) str2, (CharSequence) "Это аниме состоит из", true)) {
                    arrayList.add(new animebestapp.com.models.a(j2, a(str2, 0)));
                }
            }
        }
        return arrayList;
    }

    @Override // animebestapp.com.ui.info.e.a.e
    public void a() {
        animebestapp.com.f.a aVar = this.f1734d;
        if (aVar != null) {
            aVar.b();
        } else {
            g.p.b.f.c("dialog");
            throw null;
        }
    }

    @Override // animebestapp.com.ui.info.e.a.e
    public void a(Anime anime) {
        g.p.b.f.b(anime, "anime");
        startActivity(new Intent(getContext(), (Class<?>) InfoActivity.class).putExtra(FirebaseAnalytics.Param.CONTENT, new Gson().toJson(anime)));
    }

    @Override // animebestapp.com.ui.info.e.a.e
    public void b() {
        animebestapp.com.f.a aVar = this.f1734d;
        if (aVar != null) {
            aVar.a();
        } else {
            g.p.b.f.c("dialog");
            throw null;
        }
    }

    @Override // animebestapp.com.ui.info.e.a.e
    public void c(Anime anime) {
        g.p.b.f.b(anime, "anime");
        new animebestapp.com.f.b().a((RecyclerView) f(animebestapp.com.a.rvList));
        XFields xfields = anime.getXfields();
        if (xfields != null) {
            xfields.getAnimelist();
        }
        RecyclerView recyclerView = (RecyclerView) f(animebestapp.com.a.rvList);
        g.p.b.f.a((Object) recyclerView, "rvList");
        XFields xfields2 = anime.getXfields();
        List<animebestapp.com.models.a> listG = g(xfields2 != null ? xfields2.getAnimelist() : null);
        RecyclerView recyclerView2 = (RecyclerView) f(animebestapp.com.a.rvList);
        g.p.b.f.a((Object) recyclerView2, "rvList");
        P p = this.f3348c;
        g.p.b.f.a((Object) p, "presenter");
        recyclerView.setAdapter(new f(anime, listG, recyclerView2, (c) p));
        ((RecyclerView) f(animebestapp.com.a.rvList)).postDelayed(new RunnableC0053b(), 150L);
    }

    public View f(int i2) {
        if (this.f1735e == null) {
            this.f1735e = new HashMap();
        }
        View view = (View) this.f1735e.get(Integer.valueOf(i2));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i2);
        this.f1735e.put(Integer.valueOf(i2), viewFindViewById);
        return viewFindViewById;
    }

    @Override // c.b.a.c.f.e
    public c l() {
        Gson gson = new Gson();
        Bundle arguments = getArguments();
        if (arguments == null) {
            g.p.b.f.a();
            throw null;
        }
        Object objFromJson = gson.fromJson(arguments.getString("player"), (Class<Object>) Anime.class);
        g.p.b.f.a(objFromJson, "Gson().fromJson(argument…yer\"), Anime::class.java)");
        return new c((Anime) objFromJson);
    }

    @Override // b.k.a.d
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        g.p.b.f.b(layoutInflater, "inflater");
        return layoutInflater.inflate(R.layout.fragment_test, viewGroup, false);
    }

    @Override // animebestapp.com.ui.a.b, c.b.a.c.b, b.k.a.d
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        p();
    }

    @Override // animebestapp.com.ui.a.b, c.b.a.c.b, b.k.a.d
    public void onViewCreated(View view, Bundle bundle) {
        g.p.b.f.b(view, "view");
        super.onViewCreated(view, bundle);
        ((c) this.f3348c).e();
        Context context = getContext();
        if (context == null) {
            g.p.b.f.a();
            throw null;
        }
        g.p.b.f.a((Object) context, "context!!");
        this.f1734d = new animebestapp.com.f.a(context);
    }

    @Override // animebestapp.com.ui.a.b
    public void p() {
        HashMap map = this.f1735e;
        if (map != null) {
            map.clear();
        }
    }
}
