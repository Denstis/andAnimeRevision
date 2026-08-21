package animebestapp.com.ui.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import animebestapp.com.R;
import animebestapp.com.models.Anime;
import animebestapp.com.models.News;
import c.a.a.j;
import com.bumptech.glide.load.l;
import com.bumptech.glide.load.p.c.u;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class d extends RecyclerView.g<RecyclerView.d0> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Boolean f1624a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1625b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<animebestapp.com.models.d> f1626c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c f1627d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final animebestapp.com.ui.a.f.c f1628e;

    public static final class a extends RecyclerView.d0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ImageView f1629a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final TextView f1630b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final TextView f1631c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final LinearLayout f1632d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final TextView f1633e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(View view) {
            super(view);
            g.p.b.f.b(view, "itemView");
            ImageView imageView = (ImageView) view.findViewById(animebestapp.com.a.ivPreview);
            if (imageView == null) {
                g.p.b.f.a();
                throw null;
            }
            this.f1629a = imageView;
            TextView textView = (TextView) view.findViewById(animebestapp.com.a.tvTitle);
            if (textView == null) {
                g.p.b.f.a();
                throw null;
            }
            this.f1630b = textView;
            TextView textView2 = (TextView) view.findViewById(animebestapp.com.a.tvRating);
            if (textView2 == null) {
                g.p.b.f.a();
                throw null;
            }
            this.f1631c = textView2;
            LinearLayout linearLayout = (LinearLayout) view.findViewById(animebestapp.com.a.llRaiting);
            if (linearLayout == null) {
                g.p.b.f.a();
                throw null;
            }
            this.f1632d = linearLayout;
            TextView textView3 = (TextView) view.findViewById(animebestapp.com.a.tvSeriaLast);
            if (textView3 != null) {
                this.f1633e = textView3;
            } else {
                g.p.b.f.a();
                throw null;
            }
        }

        public final ImageView a() {
            return this.f1629a;
        }

        public final LinearLayout b() {
            return this.f1632d;
        }

        public final TextView c() {
            return this.f1631c;
        }

        public final TextView d() {
            return this.f1633e;
        }

        public final TextView e() {
            return this.f1630b;
        }
    }

    public static final class b extends RecyclerView.d0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ImageView f1634a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final TextView f1635b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(View view) {
            super(view);
            g.p.b.f.b(view, "itemView");
            ImageView imageView = (ImageView) view.findViewById(animebestapp.com.a.ivPreview);
            if (imageView == null) {
                g.p.b.f.a();
                throw null;
            }
            this.f1634a = imageView;
            TextView textView = (TextView) view.findViewById(animebestapp.com.a.tvTitle);
            if (textView == null) {
                g.p.b.f.a();
                throw null;
            }
            this.f1635b = textView;
            if (((TextView) view.findViewById(animebestapp.com.a.tvRating)) == null) {
                g.p.b.f.a();
                throw null;
            }
            if (((LinearLayout) view.findViewById(animebestapp.com.a.llRaiting)) == null) {
                g.p.b.f.a();
                throw null;
            }
            if (((TextView) view.findViewById(animebestapp.com.a.tvSeriaLast)) != null) {
                return;
            }
            g.p.b.f.a();
            throw null;
        }

        public final ImageView a() {
            return this.f1634a;
        }

        public final TextView b() {
            return this.f1635b;
        }
    }

    public enum c {
        /* JADX INFO: Fake field, exist only in values array */
        LOADING,
        FINISH,
        PROGRESS
    }

    /* JADX INFO: renamed from: animebestapp.com.ui.a.d$d, reason: collision with other inner class name */
    public static final class C0038d extends RecyclerView.d0 {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0038d(View view) {
            super(view);
            g.p.b.f.b(view, "itemView");
        }
    }

    static final class e implements View.OnClickListener {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ a f1640c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Anime f1641d;

        e(a aVar, Anime anime) {
            this.f1640c = aVar;
            this.f1641d = anime;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            d.this.b().a(this.f1640c.getAdapterPosition(), this.f1641d);
        }
    }

    static final class f implements View.OnClickListener {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ b f1643c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ News f1644d;

        f(b bVar, News news) {
            this.f1643c = bVar;
            this.f1644d = news;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            d.this.b().a(this.f1643c.getAdapterPosition(), this.f1644d);
        }
    }

    public d(animebestapp.com.ui.a.f.c cVar) {
        g.p.b.f.b(cVar, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this.f1628e = cVar;
        this.f1625b = R.layout.li_item;
        this.f1626c = new ArrayList();
        this.f1627d = c.PROGRESS;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00fc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void a(animebestapp.com.ui.a.d.a r6, animebestapp.com.models.Anime r7) {
        /*
            Method dump skipped, instruction units count: 323
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: animebestapp.com.ui.a.d.a(animebestapp.com.ui.a.d$a, animebestapp.com.models.Anime):void");
    }

    private final void a(b bVar, News news) {
        bVar.b().setText(news.getTitle());
        j<Drawable> jVarA = c.a.a.c.a(bVar.a()).a(news.getPoster());
        View view = bVar.itemView;
        g.p.b.f.a((Object) view, "holder.itemView");
        Context context = view.getContext();
        g.p.b.f.a((Object) context, "holder.itemView.context");
        jVarA.a((c.a.a.r.a<?>) c.a.a.r.f.b((l<Bitmap>) new u(context.getResources().getDimensionPixelSize(R.dimen.corners)))).a(bVar.a());
        bVar.itemView.setOnClickListener(new f(bVar, news));
    }

    public final void a() {
        this.f1626c.clear();
        notifyDataSetChanged();
    }

    public final void a(int i2) {
        this.f1625b = i2;
    }

    public final void a(c cVar) {
        g.p.b.f.b(cVar, "<set-?>");
        this.f1627d = cVar;
    }

    public final void a(List<? extends animebestapp.com.models.d> list) {
        g.p.b.f.b(list, "items");
        this.f1627d = list.size() < 5 ? c.FINISH : c.PROGRESS;
        this.f1626c.addAll(list);
        notifyDataSetChanged();
    }

    public final void a(boolean z) {
        this.f1624a = Boolean.valueOf(z);
        notifyDataSetChanged();
    }

    public final animebestapp.com.ui.a.f.c b() {
        return this.f1628e;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int getItemCount() {
        return this.f1626c.size() + (this.f1627d == c.FINISH ? 0 : 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public long getItemId(int i2) {
        return this.f1626c.get(i2).getIdModel();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int getItemViewType(int i2) {
        if (i2 == this.f1626c.size()) {
            return 0;
        }
        return this.f1626c.get(i2) instanceof Anime ? 1 : 2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public void onBindViewHolder(RecyclerView.d0 d0Var, int i2) {
        g.p.b.f.b(d0Var, "holder");
        if (d0Var instanceof b) {
            b bVar = (b) d0Var;
            animebestapp.com.models.d dVar = this.f1626c.get(bVar.getAdapterPosition());
            if (dVar == null) {
                throw new g.j("null cannot be cast to non-null type animebestapp.com.models.News");
            }
            a(bVar, (News) dVar);
            return;
        }
        if (d0Var instanceof a) {
            a aVar = (a) d0Var;
            animebestapp.com.models.d dVar2 = this.f1626c.get(aVar.getAdapterPosition());
            if (dVar2 == null) {
                throw new g.j("null cannot be cast to non-null type animebestapp.com.models.Anime");
            }
            a(aVar, (Anime) dVar2);
            return;
        }
        if (d0Var instanceof C0038d) {
            View view = d0Var.itemView;
            g.p.b.f.a((Object) view, "holder.itemView");
            view.setVisibility(this.f1627d == c.FINISH ? 8 : 0);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public RecyclerView.d0 onCreateViewHolder(ViewGroup viewGroup, int i2) {
        g.p.b.f.b(viewGroup, "parent");
        if (i2 == 1) {
            View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(this.f1625b, viewGroup, false);
            g.p.b.f.a((Object) viewInflate, "LayoutInflater.from(pare…te(layout, parent, false)");
            return new a(viewInflate);
        }
        if (i2 == 2) {
            View viewInflate2 = LayoutInflater.from(viewGroup.getContext()).inflate(this.f1625b, viewGroup, false);
            g.p.b.f.a((Object) viewInflate2, "LayoutInflater.from(pare…te(layout, parent, false)");
            return new b(viewInflate2);
        }
        View viewInflate3 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.li_progress, viewGroup, false);
        g.p.b.f.a((Object) viewInflate3, "LayoutInflater.from(pare…_progress, parent, false)");
        return new C0038d(viewInflate3);
    }
}
