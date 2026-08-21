package animebestapp.com.ui.nav.h.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import animebestapp.com.R;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class a extends RecyclerView.g<C0066a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<g.f<Integer, String>> f1941a;

    /* JADX INFO: renamed from: animebestapp.com.ui.nav.h.a.a$a, reason: collision with other inner class name */
    public static final class C0066a extends RecyclerView.d0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final TextView f1942a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0066a(View view) {
            super(view);
            g.p.b.f.b(view, "itemView");
            this.f1942a = (TextView) view;
        }

        public final TextView a() {
            return this.f1942a;
        }
    }

    static final class b implements View.OnClickListener {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f1944c;

        b(int i2) {
            this.f1944c = i2;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            a aVar = a.this;
            aVar.a((g.f<Integer, String>) aVar.f1941a.get(this.f1944c));
        }
    }

    public a(List<g.f<Integer, String>> list) {
        g.p.b.f.b(list, "items");
        this.f1941a = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(C0066a c0066a, int i2) {
        g.p.b.f.b(c0066a, "holder");
        c0066a.a().setText(this.f1941a.get(i2).d());
        c0066a.itemView.setOnClickListener(new b(i2));
    }

    public abstract void a(g.f<Integer, String> fVar);

    public final void a(boolean z) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int getItemCount() {
        return this.f1941a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public C0066a onCreateViewHolder(ViewGroup viewGroup, int i2) {
        g.p.b.f.b(viewGroup, "parent");
        Context context = viewGroup.getContext();
        if (context == null) {
            g.p.b.f.a();
            throw null;
        }
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.li_category, viewGroup, false);
        g.p.b.f.a((Object) viewInflate, "LayoutInflater.from(pare…_category, parent, false)");
        return new C0066a(viewInflate);
    }
}
