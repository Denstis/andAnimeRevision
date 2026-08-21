package animebestapp.com.ui.comments;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Html;
import android.text.Spanned;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.h;
import androidx.recyclerview.widget.o;
import animebestapp.com.R;
import animebestapp.com.models.Comment;
import c.a.a.j;
import com.bumptech.glide.load.n.q;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import g.p.b.f;
import g.s.n;

/* JADX INFO: loaded from: classes.dex */
public final class a extends o<c, RecyclerView.d0> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private e f1664b;

    /* JADX INFO: renamed from: animebestapp.com.ui.comments.a$a, reason: collision with other inner class name */
    public static final class C0042a extends h.d<c> {
        C0042a() {
        }

        @Override // androidx.recyclerview.widget.h.d
        public boolean a(c cVar, c cVar2) {
            f.b(cVar, "oldItem");
            f.b(cVar2, "newItem");
            return f.a(cVar, cVar2);
        }

        @Override // androidx.recyclerview.widget.h.d
        public boolean b(c cVar, c cVar2) {
            f.b(cVar, "oldItem");
            f.b(cVar2, "newItem");
            return f.a((Object) cVar.b(), (Object) cVar2.b());
        }
    }

    public static final class b extends RecyclerView.d0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final TextView f1665a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final TextView f1666b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final TextView f1667c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final ImageView f1668d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final TextView f1669e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final TextView f1670f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final LinearLayout f1671g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final TextView f1672h;

        /* JADX INFO: renamed from: animebestapp.com.ui.comments.a$b$a, reason: collision with other inner class name */
        public static final class C0043a implements c.a.a.r.e<Drawable> {
            C0043a() {
            }

            @Override // c.a.a.r.e
            public boolean a(Drawable drawable, Object obj, c.a.a.r.j.h<Drawable> hVar, com.bumptech.glide.load.a aVar, boolean z) {
                ImageView imageView = b.this.f1668d;
                f.a((Object) imageView, "ivPhoto");
                imageView.setVisibility(0);
                return false;
            }

            @Override // c.a.a.r.e
            public boolean a(q qVar, Object obj, c.a.a.r.j.h<Drawable> hVar, boolean z) {
                ImageView imageView = b.this.f1668d;
                f.a((Object) imageView, "ivPhoto");
                imageView.setVisibility(4);
                return false;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(View view) {
            super(view);
            f.b(view, "view");
            View view2 = this.itemView;
            f.a((Object) view2, "itemView");
            this.f1665a = (TextView) view2.findViewById(animebestapp.com.a.tvName);
            View view3 = this.itemView;
            f.a((Object) view3, "itemView");
            this.f1666b = (TextView) view3.findViewById(animebestapp.com.a.tvComment);
            View view4 = this.itemView;
            f.a((Object) view4, "itemView");
            this.f1667c = (TextView) view4.findViewById(animebestapp.com.a.tvDate);
            View view5 = this.itemView;
            f.a((Object) view5, "itemView");
            this.f1668d = (ImageView) view5.findViewById(animebestapp.com.a.ivPhoto);
            View view6 = this.itemView;
            f.a((Object) view6, "itemView");
            View view7 = this.itemView;
            f.a((Object) view7, "itemView");
            this.f1669e = (TextView) view7.findViewById(animebestapp.com.a.tvType);
            View view8 = this.itemView;
            f.a((Object) view8, "itemView");
            this.f1670f = (TextView) view8.findViewById(animebestapp.com.a.tvParentComment);
            View view9 = this.itemView;
            f.a((Object) view9, "itemView");
            this.f1671g = (LinearLayout) view9.findViewById(animebestapp.com.a.llParentComment);
            View view10 = this.itemView;
            f.a((Object) view10, "itemView");
            this.f1672h = (TextView) view10.findViewById(animebestapp.com.a.tvParentCommentName);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        private final int a(String str) {
            if (str != null) {
                int iHashCode = str.hashCode();
                if (iHashCode != 55) {
                    if (iHashCode != 56) {
                        if (iHashCode != 1629) {
                            switch (iHashCode) {
                                case 49:
                                    if (str.equals("1")) {
                                        return R.color.red;
                                    }
                                    break;
                                case 50:
                                    if (str.equals("2")) {
                                        return R.color.blue;
                                    }
                                    break;
                                case 51:
                                    if (str.equals("3")) {
                                        return R.color.brown;
                                    }
                                    break;
                                default:
                                    switch (iHashCode) {
                                        case 1571:
                                            if (str.equals("14")) {
                                                return R.color.yellow;
                                            }
                                            break;
                                        case 1572:
                                            if (str.equals("15")) {
                                                return R.color.green;
                                            }
                                            break;
                                        case 1573:
                                            if (str.equals("16")) {
                                                return R.color.beruz;
                                            }
                                            break;
                                        case 1574:
                                            if (str.equals("17")) {
                                                return R.color.class1;
                                            }
                                            break;
                                        case 1575:
                                            if (str.equals("18")) {
                                                return R.color.class2;
                                            }
                                            break;
                                        case 1576:
                                            if (str.equals("19")) {
                                                return R.color.class3;
                                            }
                                            break;
                                        default:
                                            switch (iHashCode) {
                                                case 1598:
                                                    if (str.equals("20")) {
                                                        return R.color.class4;
                                                    }
                                                    break;
                                                case 1599:
                                                    if (str.equals("21")) {
                                                        return R.color.class5;
                                                    }
                                                    break;
                                                case 1600:
                                                    if (str.equals("22")) {
                                                        return R.color.class6;
                                                    }
                                                    break;
                                                case 1601:
                                                    if (str.equals("23")) {
                                                        return R.color.class7;
                                                    }
                                                    break;
                                                case 1602:
                                                    if (str.equals("24")) {
                                                        return R.color.class8;
                                                    }
                                                    break;
                                                case 1603:
                                                    if (str.equals("25")) {
                                                        return R.color.class9;
                                                    }
                                                    break;
                                                case 1604:
                                                    if (str.equals("26")) {
                                                        return R.color.class10;
                                                    }
                                                    break;
                                                case 1605:
                                                    if (str.equals("27")) {
                                                        return R.color.class11;
                                                    }
                                                    break;
                                                case 1606:
                                                    if (str.equals("28")) {
                                                        return R.color.yellow;
                                                    }
                                                    break;
                                                case 1607:
                                                    if (str.equals("29")) {
                                                        return R.color.yellow;
                                                    }
                                                    break;
                                            }
                                            break;
                                    }
                                    break;
                            }
                        } else if (str.equals("30")) {
                            return R.color.yellow;
                        }
                    } else if (str.equals("8")) {
                        return R.color.orange;
                    }
                } else if (str.equals("7")) {
                    return R.color.purple;
                }
            }
            return R.color.textSeries;
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        private final String b(String str) {
            if (str == null) {
                return "Прохожий";
            }
            int iHashCode = str.hashCode();
            if (iHashCode == 55) {
                return str.equals("7") ? "Даббер" : "Прохожий";
            }
            if (iHashCode == 56) {
                return str.equals("8") ? "Технарь" : "Прохожий";
            }
            if (iHashCode == 1629) {
                return str.equals("30") ? "VIP+++" : "Прохожий";
            }
            switch (iHashCode) {
                case 49:
                    if (str.equals("1")) {
                    }
                    break;
                case 50:
                    if (str.equals("2")) {
                    }
                    break;
                case 51:
                    if (str.equals("3")) {
                    }
                    break;
                case 52:
                    if (str.equals("4")) {
                    }
                    break;
                case 53:
                    str.equals("5");
                    break;
                default:
                    switch (iHashCode) {
                        case 1571:
                            if (str.equals("14")) {
                            }
                            break;
                        case 1572:
                            if (str.equals("15")) {
                            }
                            break;
                        case 1573:
                            if (str.equals("16")) {
                            }
                            break;
                        case 1574:
                            if (str.equals("17")) {
                            }
                            break;
                        case 1575:
                            if (str.equals("18")) {
                            }
                            break;
                        case 1576:
                            if (str.equals("19")) {
                            }
                            break;
                        default:
                            switch (iHashCode) {
                                case 1598:
                                    if (str.equals("20")) {
                                    }
                                    break;
                                case 1599:
                                    if (str.equals("21")) {
                                    }
                                    break;
                                case 1600:
                                    if (str.equals("22")) {
                                    }
                                    break;
                                case 1601:
                                    if (str.equals("23")) {
                                    }
                                    break;
                                case 1602:
                                    if (str.equals("24")) {
                                    }
                                    break;
                                case 1603:
                                    if (str.equals("25")) {
                                    }
                                    break;
                                case 1604:
                                    if (str.equals("26")) {
                                    }
                                    break;
                                case 1605:
                                    if (str.equals("27")) {
                                    }
                                    break;
                                case 1606:
                                    if (str.equals("28")) {
                                    }
                                    break;
                                case 1607:
                                    if (str.equals("29")) {
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
            return "Прохожий";
        }

        public final void a(c cVar) {
            TextView textView;
            Spanned spannedFromHtml;
            TextView textView2;
            Spanned spannedFromHtml2;
            String text;
            String text2;
            f.b(cVar, "item");
            TextView textView3 = this.f1669e;
            TextView textView4 = this.f1665a;
            f.a((Object) textView4, "tvName");
            Context context = textView4.getContext();
            Comment commentA = cVar.a();
            textView3.setTextColor(androidx.core.content.a.a(context, a(commentA != null ? commentA.getUserGroup() : null)));
            TextView textView5 = this.f1669e;
            f.a((Object) textView5, "tvType");
            Comment commentA2 = cVar.a();
            textView5.setText(b(commentA2 != null ? commentA2.getUserGroup() : null));
            TextView textView6 = this.f1665a;
            f.a((Object) textView6, "tvName");
            Comment commentA3 = cVar.a();
            if (commentA3 == null) {
                f.a();
                throw null;
            }
            textView6.setText(commentA3.getAutor());
            if (Build.VERSION.SDK_INT >= 24) {
                textView = this.f1666b;
                f.a((Object) textView, "tvModel");
                Comment commentA4 = cVar.a();
                if (commentA4 == null) {
                    f.a();
                    throw null;
                }
                spannedFromHtml = Html.fromHtml(commentA4.getText(), 0);
            } else {
                textView = this.f1666b;
                f.a((Object) textView, "tvModel");
                Comment commentA5 = cVar.a();
                if (commentA5 == null) {
                    f.a();
                    throw null;
                }
                spannedFromHtml = Html.fromHtml(commentA5.getText());
            }
            textView.setText(spannedFromHtml);
            LinearLayout linearLayout = this.f1671g;
            f.a((Object) linearLayout, "llParentComment");
            linearLayout.setVisibility(cVar.c() == null ? 8 : 0);
            String str = "";
            if (Build.VERSION.SDK_INT >= 24) {
                textView2 = this.f1670f;
                f.a((Object) textView2, "tvParentComment");
                Comment commentC = cVar.c();
                if (commentC != null && (text2 = commentC.getText()) != null) {
                    str = text2;
                }
                spannedFromHtml2 = Html.fromHtml(str, 0);
            } else {
                textView2 = this.f1670f;
                f.a((Object) textView2, "tvParentComment");
                Comment commentC2 = cVar.c();
                if (commentC2 != null && (text = commentC2.getText()) != null) {
                    str = text;
                }
                spannedFromHtml2 = Html.fromHtml(str);
            }
            textView2.setText(spannedFromHtml2);
            TextView textView7 = this.f1672h;
            f.a((Object) textView7, "tvParentCommentName");
            Comment commentC3 = cVar.c();
            textView7.setText(commentC3 != null ? commentC3.getAutor() : null);
            TextView textView8 = this.f1667c;
            f.a((Object) textView8, "tvDate");
            Comment commentA6 = cVar.a();
            if (commentA6 == null) {
                f.a();
                throw null;
            }
            textView8.setText(commentA6.getDate());
            String foto = cVar.a().getFoto();
            if (foto != null) {
                if (!n.a((CharSequence) foto, (CharSequence) "http", false, 2, (Object) null)) {
                    foto = "https://" + foto;
                }
                j<Drawable> jVarA = c.a.a.c.a(this.f1668d).a(foto).a((c.a.a.r.a<?>) c.a.a.r.f.K());
                jVarA.b((c.a.a.r.e<Drawable>) new C0043a());
                jVarA.a(this.f1668d);
            }
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Comment f1674a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Comment f1675b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f1676c;

        public c() {
            this(null, null, null, 7, null);
        }

        public c(Comment comment, Comment comment2, String str) {
            f.b(str, TtmlNode.ATTR_ID);
            this.f1674a = comment;
            this.f1675b = comment2;
            this.f1676c = str;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public /* synthetic */ c(Comment comment, Comment comment2, String str, int i2, g.p.b.d dVar) {
            comment = (i2 & 1) != 0 ? null : comment;
            comment2 = (i2 & 2) != 0 ? null : comment2;
            if ((i2 & 4) != 0 && (comment == null || (str = comment.getId()) == null)) {
                str = "progress";
            }
            this(comment, comment2, str);
        }

        public final Comment a() {
            return this.f1674a;
        }

        public final String b() {
            return this.f1676c;
        }

        public final Comment c() {
            return this.f1675b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return f.a(this.f1674a, cVar.f1674a) && f.a(this.f1675b, cVar.f1675b) && f.a((Object) this.f1676c, (Object) cVar.f1676c);
        }

        public int hashCode() {
            Comment comment = this.f1674a;
            int iHashCode = (comment != null ? comment.hashCode() : 0) * 31;
            Comment comment2 = this.f1675b;
            int iHashCode2 = (iHashCode + (comment2 != null ? comment2.hashCode() : 0)) * 31;
            String str = this.f1676c;
            return iHashCode2 + (str != null ? str.hashCode() : 0);
        }

        public String toString() {
            return "Model(comment=" + this.f1674a + ", parentComment=" + this.f1675b + ", id=" + this.f1676c + ")";
        }
    }

    public static final class d extends RecyclerView.d0 {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(View view) {
            super(view);
            f.b(view, "view");
        }
    }

    public enum e {
        /* JADX INFO: Fake field, exist only in values array */
        LOADING,
        FINISH,
        PROGRESS
    }

    public a() {
        super(new C0042a());
        this.f1664b = e.PROGRESS;
    }

    public final e a() {
        return this.f1664b;
    }

    public final void a(e eVar) {
        f.b(eVar, "<set-?>");
        this.f1664b = eVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int getItemViewType(int i2) {
        return a(i2).a() == null ? 1 : 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public void onBindViewHolder(RecyclerView.d0 d0Var, int i2) {
        f.b(d0Var, "holder");
        if (d0Var instanceof b) {
            c cVarA = a(i2);
            f.a((Object) cVarA, "getItem(position)");
            ((b) d0Var).a(cVarA);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public RecyclerView.d0 onCreateViewHolder(ViewGroup viewGroup, int i2) {
        f.b(viewGroup, "parent");
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(viewGroup.getContext());
        if (i2 == 1) {
            View viewInflate = layoutInflaterFrom.inflate(R.layout.li_progress, viewGroup, false);
            f.a((Object) viewInflate, "inflater.inflate(R.layou…_progress, parent, false)");
            return new d(viewInflate);
        }
        View viewInflate2 = layoutInflaterFrom.inflate(R.layout.li_comment, viewGroup, false);
        f.a((Object) viewInflate2, "inflater.inflate(R.layou…i_comment, parent, false)");
        return new b(viewInflate2);
    }
}
