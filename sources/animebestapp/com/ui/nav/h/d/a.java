package animebestapp.com.ui.nav.h.d;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import animebestapp.com.R;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import g.p.b.f;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class a extends RecyclerView.g<RecyclerView.d0> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Boolean f2045a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final animebestapp.com.ui.a.f.c f2046b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ArrayList<animebestapp.com.models.e> f2047c;

    /* JADX INFO: renamed from: animebestapp.com.ui.nav.h.d.a$a, reason: collision with other inner class name */
    public static final class C0081a extends RecyclerView.d0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ImageView f2048a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final TextView f2049b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final TextView f2050c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final CardView f2051d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0081a(View view) {
            super(view);
            f.b(view, "itemView");
            ImageView imageView = (ImageView) view.findViewById(animebestapp.com.a.ivPreview);
            f.a((Object) imageView, "itemView.ivPreview");
            this.f2048a = imageView;
            TextView textView = (TextView) view.findViewById(animebestapp.com.a.tvTitle);
            f.a((Object) textView, "itemView.tvTitle");
            this.f2049b = textView;
            TextView textView2 = (TextView) view.findViewById(animebestapp.com.a.tvDate);
            f.a((Object) textView2, "itemView.tvDate");
            this.f2050c = textView2;
            CardView cardView = (CardView) view.findViewById(animebestapp.com.a.card);
            f.a((Object) cardView, "itemView.card");
            this.f2051d = cardView;
        }

        public final CardView a() {
            return this.f2051d;
        }

        public final ImageView b() {
            return this.f2048a;
        }

        public final TextView c() {
            return this.f2050c;
        }

        public final TextView d() {
            return this.f2049b;
        }
    }

    static final class b implements View.OnClickListener {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f2053c;

        b(int i2) {
            this.f2053c = i2;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            a.this.f2046b.a(this.f2053c, null);
        }
    }

    public a(animebestapp.com.ui.a.f.c cVar, ArrayList<animebestapp.com.models.e> arrayList) {
        f.b(cVar, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        f.b(arrayList, "list");
        this.f2046b = cVar;
        this.f2047c = arrayList;
    }

    public final void a(boolean z) {
        this.f2045a = Boolean.valueOf(z);
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int getItemCount() {
        return this.f2047c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public void onBindViewHolder(RecyclerView.d0 d0Var, int i2) {
        TextView textViewC;
        String strB;
        f.b(d0Var, "holder");
        if (d0Var instanceof C0081a) {
            C0081a c0081a = (C0081a) d0Var;
            c.a.a.c.a(c0081a.b()).a(this.f2047c.get(c0081a.getAdapterPosition()).d()).a((c.a.a.r.a<?>) c.a.a.r.f.J()).a(c0081a.b());
            c0081a.d().setText(this.f2047c.get(c0081a.getAdapterPosition()).c());
            String strB2 = this.f2047c.get(i2).b();
            if (strB2 == null || strB2.length() == 0) {
                textViewC = c0081a.c();
                strB = "Не заданно";
            } else {
                textViewC = c0081a.c();
                strB = this.f2047c.get(i2).b();
            }
            textViewC.setText(strB);
            Boolean bool = this.f2045a;
            if (bool != null) {
                boolean zBooleanValue = bool.booleanValue();
                c0081a.d().setTextColor(androidx.core.content.a.a(c0081a.d().getContext(), zBooleanValue ? R.color.textItemShift : R.color.textItem));
                c0081a.a().setCardBackgroundColor(androidx.core.content.a.a(c0081a.d().getContext(), zBooleanValue ? R.color.backgroundItemShift : R.color.backgroundItem));
            }
            d0Var.itemView.setOnClickListener(new b(i2));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public RecyclerView.d0 onCreateViewHolder(ViewGroup viewGroup, int i2) {
        f.b(viewGroup, "parent");
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.li_schedule, viewGroup, false);
        f.a((Object) viewInflate, "LayoutInflater.from(pare…_schedule, parent, false)");
        return new C0081a(viewInflate);
    }
}
