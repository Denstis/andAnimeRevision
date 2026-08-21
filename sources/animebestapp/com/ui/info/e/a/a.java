package animebestapp.com.ui.info.e.a;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import animebestapp.com.R;
import g.j;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class a extends RecyclerView.g<RecyclerView.d0> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<animebestapp.com.models.a> f1729a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f1730b;

    /* JADX INFO: renamed from: animebestapp.com.ui.info.e.a.a$a, reason: collision with other inner class name */
    public static final class C0052a extends RecyclerView.d0 {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0052a(View view) {
            super(view);
            g.p.b.f.b(view, "itemView");
        }
    }

    static final class b implements View.OnClickListener {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f1732c;

        b(int i2) {
            this.f1732c = i2;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            a.this.a().a(((animebestapp.com.models.a) a.this.f1729a.get(this.f1732c)).a());
        }
    }

    public a(List<animebestapp.com.models.a> list, c cVar) {
        g.p.b.f.b(list, "list");
        g.p.b.f.b(cVar, "presenter");
        this.f1729a = list;
        this.f1730b = cVar;
    }

    public final c a() {
        return this.f1730b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int getItemCount() {
        return this.f1729a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public void onBindViewHolder(RecyclerView.d0 d0Var, int i2) {
        g.p.b.f.b(d0Var, "holder");
        View view = d0Var.itemView;
        if (view == null) {
            throw new j("null cannot be cast to non-null type android.widget.TextView");
        }
        ((TextView) view).setText(String.valueOf(i2 + 1) + ". " + this.f1729a.get(i2).b());
        if (this.f1729a.get(i2).a() > 0) {
            d0Var.itemView.setOnClickListener(new b(i2));
            return;
        }
        View view2 = d0Var.itemView;
        g.p.b.f.a((Object) view2, "holder.itemView");
        view2.setAlpha(0.5f);
        View view3 = d0Var.itemView;
        g.p.b.f.a((Object) view3, "holder.itemView");
        view3.setEnabled(false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public RecyclerView.d0 onCreateViewHolder(ViewGroup viewGroup, int i2) {
        g.p.b.f.b(viewGroup, "parent");
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.li_anime_consist, viewGroup, false);
        g.p.b.f.a((Object) viewInflate, "LayoutInflater.from(pare…e_consist, parent, false)");
        return new C0052a(viewInflate);
    }
}
