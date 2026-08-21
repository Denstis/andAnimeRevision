package animebestapp.com.ui.nav.h.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.c;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import animebestapp.com.R;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.appcompat.app.c f1945a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final animebestapp.com.ui.nav.h.a.a f1946b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f1947c;

    static final class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            b.this.f1945a.dismiss();
        }
    }

    /* JADX INFO: renamed from: animebestapp.com.ui.nav.h.a.b$b, reason: collision with other inner class name */
    public static final class C0067b extends animebestapp.com.ui.nav.h.a.a {
        C0067b(List list, List list2) {
            super(list2);
        }

        @Override // animebestapp.com.ui.nav.h.a.a
        public void a(g.f<Integer, String> fVar) {
            g.p.b.f.b(fVar, "item");
            b.this.a(fVar);
        }
    }

    public b(Context context, List<g.f<Integer, String>> list, String str) {
        g.p.b.f.b(context, "context");
        g.p.b.f.b(list, "items");
        g.p.b.f.b(str, "title");
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.dialog_category, (ViewGroup) null, false);
        g.p.b.f.a((Object) viewInflate, "view");
        this.f1947c = (CardView) viewInflate.findViewById(animebestapp.com.a.cvContainer);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(animebestapp.com.a.rvList);
        ImageView imageView = (ImageView) viewInflate.findViewById(animebestapp.com.a.btnClose);
        c.a aVar = new c.a(context);
        aVar.b(viewInflate);
        androidx.appcompat.app.c cVarA = aVar.a();
        g.p.b.f.a((Object) cVarA, "AlertDialog.Builder(cont…                .create()");
        this.f1945a = cVarA;
        ((TextView) viewInflate.findViewById(animebestapp.com.a.tvTitle)).setText(str);
        imageView.setOnClickListener(new a());
        g.p.b.f.a((Object) recyclerView, "rvList");
        recyclerView.setLayoutManager(new GridLayoutManager(context, g.p.b.f.a((Object) str, (Object) context.getString(R.string.from_year)) ? 3 : 2));
        this.f1946b = new C0067b(list, list);
        recyclerView.setAdapter(this.f1946b);
    }

    public final void a() {
        this.f1945a.dismiss();
    }

    public abstract void a(g.f<Integer, String> fVar);

    public final void a(boolean z) {
        this.f1946b.a(z);
        View view = this.f1947c;
        if (view != null) {
            view.setBackgroundResource(z ? R.color.bgInfoItemListAnimeShift : R.color.bgInfoItemListAnime);
        }
    }

    public final void b() {
        if (this.f1945a.isShowing()) {
            return;
        }
        this.f1945a.show();
    }
}
