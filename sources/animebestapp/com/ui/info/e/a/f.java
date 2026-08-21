package animebestapp.com.ui.info.e.a;

import android.annotation.SuppressLint;
import android.graphics.Color;
import android.os.Build;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import androidx.recyclerview.widget.RecyclerView;
import animebestapp.com.R;
import animebestapp.com.models.Anime;
import animebestapp.com.models.XFields;
import g.j;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class f extends RecyclerView.g<RecyclerView.d0> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f1746a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f1747b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f1748c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1749d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Anime f1750e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List<animebestapp.com.models.a> f1751f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final animebestapp.com.ui.info.e.a.c f1752g;

    public static final class a extends RecyclerView.d0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final RecyclerView f1753a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(View view) {
            super(view);
            g.p.b.f.b(view, "itemView");
            RecyclerView recyclerView = (RecyclerView) view.findViewById(animebestapp.com.a.rvAnimeList);
            if (recyclerView != null) {
                this.f1753a = recyclerView;
            } else {
                g.p.b.f.a();
                throw null;
            }
        }

        public final RecyclerView a() {
            return this.f1753a;
        }
    }

    public static final class b extends RecyclerView.d0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final TextView f1754a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final RecyclerView f1755b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(View view) {
            super(view);
            g.p.b.f.b(view, "itemView");
            TextView textView = (TextView) view.findViewById(animebestapp.com.a.tvDescription);
            if (textView == null) {
                g.p.b.f.a();
                throw null;
            }
            this.f1754a = textView;
            RecyclerView recyclerView = (RecyclerView) view.findViewById(animebestapp.com.a.rvAnimeList);
            if (recyclerView != null) {
                this.f1755b = recyclerView;
            } else {
                g.p.b.f.a();
                throw null;
            }
        }

        public final RecyclerView a() {
            return this.f1755b;
        }

        public final TextView b() {
            return this.f1754a;
        }
    }

    public static final class c extends RecyclerView.d0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ImageView f1756a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ImageView f1757b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final ImageView f1758c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final ImageView f1759d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final TextView f1760e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final TextView f1761f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final TextView f1762g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final TextView f1763h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final TextView f1764i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final TextView f1765j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(View view) {
            super(view);
            g.p.b.f.b(view, "itemView");
            ImageView imageView = (ImageView) view.findViewById(animebestapp.com.a.ivPost);
            if (imageView == null) {
                g.p.b.f.a();
                throw null;
            }
            this.f1756a = imageView;
            ImageView imageView2 = (ImageView) view.findViewById(animebestapp.com.a.ivScreenThree);
            if (imageView2 == null) {
                g.p.b.f.a();
                throw null;
            }
            this.f1757b = imageView2;
            ImageView imageView3 = (ImageView) view.findViewById(animebestapp.com.a.ivScreenTwo);
            if (imageView3 == null) {
                g.p.b.f.a();
                throw null;
            }
            this.f1758c = imageView3;
            ImageView imageView4 = (ImageView) view.findViewById(animebestapp.com.a.ivScreenOne);
            if (imageView4 == null) {
                g.p.b.f.a();
                throw null;
            }
            this.f1759d = imageView4;
            TextView textView = (TextView) view.findViewById(animebestapp.com.a.tvRelease);
            if (textView == null) {
                g.p.b.f.a();
                throw null;
            }
            this.f1760e = textView;
            TextView textView2 = (TextView) view.findViewById(animebestapp.com.a.tvType);
            if (textView2 == null) {
                g.p.b.f.a();
                throw null;
            }
            this.f1761f = textView2;
            TextView textView3 = (TextView) view.findViewById(animebestapp.com.a.tvGenre);
            if (textView3 == null) {
                g.p.b.f.a();
                throw null;
            }
            this.f1762g = textView3;
            TextView textView4 = (TextView) view.findViewById(animebestapp.com.a.tvProducer);
            if (textView4 == null) {
                g.p.b.f.a();
                throw null;
            }
            this.f1763h = textView4;
            TextView textView5 = (TextView) view.findViewById(animebestapp.com.a.btnOpen);
            if (textView5 == null) {
                g.p.b.f.a();
                throw null;
            }
            this.f1764i = textView5;
            if (((TextView) view.findViewById(animebestapp.com.a.tvRating)) == null) {
                g.p.b.f.a();
                throw null;
            }
            TextView textView6 = (TextView) view.findViewById(animebestapp.com.a.tvName);
            if (textView6 != null) {
                this.f1765j = textView6;
            } else {
                g.p.b.f.a();
                throw null;
            }
        }

        public final TextView a() {
            return this.f1764i;
        }

        public final ImageView b() {
            return this.f1756a;
        }

        public final ImageView c() {
            return this.f1759d;
        }

        public final ImageView d() {
            return this.f1757b;
        }

        public final ImageView e() {
            return this.f1758c;
        }

        public final TextView f() {
            return this.f1762g;
        }

        public final TextView g() {
            return this.f1765j;
        }

        public final TextView h() {
            return this.f1763h;
        }

        public final TextView i() {
            return this.f1760e;
        }

        public final TextView j() {
            return this.f1761f;
        }
    }

    static final class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            f.this.a();
        }
    }

    static final class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RecyclerView.d0 f1767b;

        e(RecyclerView.d0 d0Var) {
            this.f1767b = d0Var;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ((b) this.f1767b).a().setVisibility(0);
            View view2 = this.f1767b.itemView;
            g.p.b.f.a((Object) view2, "holder.itemView");
            view2.findViewById(animebestapp.com.a.dividerAnime).setBackgroundColor(Color.parseColor("#0073aa"));
            View view3 = this.f1767b.itemView;
            g.p.b.f.a((Object) view3, "holder.itemView");
            view3.findViewById(animebestapp.com.a.dividerDesc).setBackgroundColor(Color.parseColor("#616263"));
            View view4 = this.f1767b.itemView;
            g.p.b.f.a((Object) view4, "holder.itemView");
            Button button = (Button) view4.findViewById(animebestapp.com.a.btnDescription);
            g.p.b.f.a((Object) button, "holder.itemView.btnDescription");
            button.setActivated(false);
            View view5 = this.f1767b.itemView;
            g.p.b.f.a((Object) view5, "holder.itemView");
            View viewFindViewById = view5.findViewById(animebestapp.com.a.dividerDesc);
            g.p.b.f.a((Object) viewFindViewById, "holder.itemView.dividerDesc");
            viewFindViewById.setActivated(false);
            View view6 = this.f1767b.itemView;
            g.p.b.f.a((Object) view6, "holder.itemView");
            Button button2 = (Button) view6.findViewById(animebestapp.com.a.btnAnime);
            g.p.b.f.a((Object) button2, "holder.itemView.btnAnime");
            button2.setActivated(true);
            View view7 = this.f1767b.itemView;
            g.p.b.f.a((Object) view7, "holder.itemView");
            View viewFindViewById2 = view7.findViewById(animebestapp.com.a.dividerAnime);
            g.p.b.f.a((Object) viewFindViewById2, "holder.itemView.dividerAnime");
            viewFindViewById2.setActivated(true);
            View view8 = this.f1767b.itemView;
            g.p.b.f.a((Object) view8, "holder.itemView");
            ViewSwitcher viewSwitcher = (ViewSwitcher) view8.findViewById(animebestapp.com.a.viewFlipper);
            g.p.b.f.a((Object) viewSwitcher, "holder.itemView.viewFlipper");
            viewSwitcher.setDisplayedChild(1);
        }
    }

    /* JADX INFO: renamed from: animebestapp.com.ui.info.e.a.f$f, reason: collision with other inner class name */
    static final class ViewOnClickListenerC0056f implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RecyclerView.d0 f1768b;

        ViewOnClickListenerC0056f(RecyclerView.d0 d0Var) {
            this.f1768b = d0Var;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            View view2 = this.f1768b.itemView;
            g.p.b.f.a((Object) view2, "holder.itemView");
            Button button = (Button) view2.findViewById(animebestapp.com.a.btnAnime);
            g.p.b.f.a((Object) button, "holder.itemView.btnAnime");
            button.setActivated(false);
            View view3 = this.f1768b.itemView;
            g.p.b.f.a((Object) view3, "holder.itemView");
            view3.findViewById(animebestapp.com.a.dividerAnime).setBackgroundColor(Color.parseColor("#616263"));
            View view4 = this.f1768b.itemView;
            g.p.b.f.a((Object) view4, "holder.itemView");
            view4.findViewById(animebestapp.com.a.dividerDesc).setBackgroundColor(Color.parseColor("#0073aa"));
            View view5 = this.f1768b.itemView;
            g.p.b.f.a((Object) view5, "holder.itemView");
            Button button2 = (Button) view5.findViewById(animebestapp.com.a.btnDescription);
            g.p.b.f.a((Object) button2, "holder.itemView.btnDescription");
            button2.setActivated(true);
            View view6 = this.f1768b.itemView;
            g.p.b.f.a((Object) view6, "holder.itemView");
            View viewFindViewById = view6.findViewById(animebestapp.com.a.dividerDesc);
            g.p.b.f.a((Object) viewFindViewById, "holder.itemView.dividerDesc");
            viewFindViewById.setActivated(true);
            ((b) this.f1768b).a().setVisibility(8);
            View view7 = this.f1768b.itemView;
            g.p.b.f.a((Object) view7, "holder.itemView");
            ViewSwitcher viewSwitcher = (ViewSwitcher) view7.findViewById(animebestapp.com.a.viewFlipper);
            g.p.b.f.a((Object) viewSwitcher, "holder.itemView.viewFlipper");
            viewSwitcher.setDisplayedChild(0);
        }
    }

    public f(Anime anime, List<animebestapp.com.models.a> list, RecyclerView recyclerView, animebestapp.com.ui.info.e.a.c cVar) {
        g.p.b.f.b(anime, "anime");
        g.p.b.f.b(list, "list");
        g.p.b.f.b(recyclerView, "rvList");
        g.p.b.f.b(cVar, "presenter");
        this.f1750e = anime;
        this.f1751f = list;
        this.f1752g = cVar;
        this.f1746a = 1;
        this.f1747b = 2;
        this.f1748c = 3;
        this.f1749d = true;
    }

    static /* synthetic */ String a(f fVar, String str, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 1;
        }
        return fVar.a(str, i2);
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

    /* JADX INFO: Access modifiers changed from: private */
    public final void a() {
        this.f1749d = !this.f1749d;
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int getItemCount() {
        return 2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int getItemViewType(int i2) {
        return i2 == 0 ? this.f1746a : i2 == 1 ? this.f1747b : this.f1748c;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    @SuppressLint({"ClickableViewAccessibility"})
    public void onBindViewHolder(RecyclerView.d0 d0Var, int i2) {
        TextView textViewB;
        CharSequence charSequenceA;
        String names;
        g.p.b.f.b(d0Var, "holder");
        if (d0Var instanceof c) {
            List<String> screen = this.f1750e.getScreen();
            c cVar = (c) d0Var;
            c.a.a.c.a(cVar.b()).a(this.f1750e.getPoster()).a(cVar.b());
            if (!screen.isEmpty()) {
                c.a.a.c.a(cVar.c()).a(screen.get(0)).a(cVar.c());
                if (screen.size() > 1) {
                    c.a.a.c.a(cVar.e()).a(screen.get(1)).a(cVar.e());
                }
                if (screen.size() > 2) {
                    c.a.a.c.a(cVar.d()).a(screen.get(2)).a(cVar.d());
                }
            }
            TextView textViewI = cVar.i();
            XFields xfields = this.f1750e.getXfields();
            textViewI.setText(xfields != null ? xfields.getYear() : null);
            TextView textViewJ = cVar.j();
            XFields xfields2 = this.f1750e.getXfields();
            textViewJ.setText(xfields2 != null ? xfields2.getType() : null);
            TextView textViewF = cVar.f();
            XFields xfields3 = this.f1750e.getXfields();
            textViewF.setText(xfields3 != null ? xfields3.getGenre() : null);
            TextView textViewH = cVar.h();
            XFields xfields4 = this.f1750e.getXfields();
            textViewH.setText(xfields4 != null ? xfields4.getDirector() : null);
            cVar.g().setVisibility(8);
            XFields xfields5 = this.f1750e.getXfields();
            if (xfields5 != null && (names = xfields5.getNames()) != null) {
                cVar.g().setText(names);
            }
            cVar.a().setOnClickListener(new d());
            return;
        }
        if (!(d0Var instanceof b)) {
            if (d0Var instanceof a) {
                ((a) d0Var).a().setAdapter(new animebestapp.com.ui.info.e.a.a(this.f1751f, this.f1752g));
                return;
            }
            return;
        }
        View view = d0Var.itemView;
        g.p.b.f.a((Object) view, "holder.itemView");
        view.setVisibility(0);
        b bVar = (b) d0Var;
        bVar.b().setText(a(this, this.f1750e.getFull_story(), 0, 2, null));
        bVar.a().setAdapter(new animebestapp.com.ui.info.e.a.a(this.f1751f, this.f1752g));
        bVar.a().setVisibility(8);
        View view2 = d0Var.itemView;
        g.p.b.f.a((Object) view2, "holder.itemView");
        Button button = (Button) view2.findViewById(animebestapp.com.a.btnDescription);
        g.p.b.f.a((Object) button, "holder.itemView.btnDescription");
        button.setActivated(true);
        View view3 = d0Var.itemView;
        g.p.b.f.a((Object) view3, "holder.itemView");
        view3.findViewById(animebestapp.com.a.dividerAnime).setBackgroundColor(Color.parseColor("#616263"));
        View view4 = d0Var.itemView;
        g.p.b.f.a((Object) view4, "holder.itemView");
        view4.findViewById(animebestapp.com.a.dividerDesc).setBackgroundColor(Color.parseColor("#0073aa"));
        if (this.f1751f.size() == 0) {
            View view5 = d0Var.itemView;
            g.p.b.f.a((Object) view5, "holder.itemView");
            Button button2 = (Button) view5.findViewById(animebestapp.com.a.btnAnime);
            g.p.b.f.a((Object) button2, "holder.itemView.btnAnime");
            button2.setVisibility(8);
            View view6 = d0Var.itemView;
            g.p.b.f.a((Object) view6, "holder.itemView");
            Button button3 = (Button) view6.findViewById(animebestapp.com.a.btnDescription);
            g.p.b.f.a((Object) button3, "holder.itemView.btnDescription");
            button3.setVisibility(8);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("Описание: " + a(this, this.f1750e.getFull_story(), 0, 2, null));
            spannableStringBuilder.setSpan(new StyleSpan(1), 0, 9, 33);
            charSequenceA = spannableStringBuilder;
            textViewB = bVar.b();
        } else {
            TextView textViewB2 = bVar.b();
            charSequenceA = a(this, this.f1750e.getFull_story(), 0, 2, null);
            textViewB = textViewB2;
        }
        textViewB.setText(charSequenceA);
        View view7 = d0Var.itemView;
        g.p.b.f.a((Object) view7, "holder.itemView");
        ((Button) view7.findViewById(animebestapp.com.a.btnAnime)).setOnClickListener(new e(d0Var));
        View view8 = d0Var.itemView;
        g.p.b.f.a((Object) view8, "holder.itemView");
        ((Button) view8.findViewById(animebestapp.com.a.btnDescription)).setOnClickListener(new ViewOnClickListenerC0056f(d0Var));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public RecyclerView.d0 onCreateViewHolder(ViewGroup viewGroup, int i2) {
        g.p.b.f.b(viewGroup, "parent");
        if (i2 == this.f1746a) {
            View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.view_top, viewGroup, false);
            g.p.b.f.a((Object) viewInflate, "LayoutInflater.from(pare….view_top, parent, false)");
            return new c(viewInflate);
        }
        if (i2 == this.f1747b) {
            View viewInflate2 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.view_description_tabs, viewGroup, false);
            g.p.b.f.a((Object) viewInflate2, "LayoutInflater.from(pare…tion_tabs, parent, false)");
            return new b(viewInflate2);
        }
        View viewInflate3 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.view_bottom, viewGroup, false);
        g.p.b.f.a((Object) viewInflate3, "LayoutInflater.from(pare…ew_bottom, parent, false)");
        return new a(viewInflate3);
    }
}
