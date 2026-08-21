package animebestapp.com.ui.info;

import android.annotation.SuppressLint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import animebestapp.com.R;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import g.m.j;
import g.p.b.f;
import java.util.LinkedHashMap;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class d extends RecyclerView.g<a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f1723a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final LinkedHashMap<String, String> f1724b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final animebestapp.com.ui.a.f.c f1725c;

    public static final class a extends RecyclerView.d0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final TextView f1726a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(View view) {
            super(view);
            f.b(view, "itemView");
            TextView textView = (TextView) view.findViewById(animebestapp.com.a.tvTitle);
            if (textView == null) {
                f.a();
                throw null;
            }
            this.f1726a = textView;
            if (((ImageView) view.findViewById(animebestapp.com.a.ivVisible)) == null) {
                f.a();
                throw null;
            }
            if (view.findViewById(animebestapp.com.a.vBottom) == null) {
                f.a();
                throw null;
            }
            if (view.findViewById(animebestapp.com.a.vTop) != null) {
                return;
            }
            f.a();
            throw null;
        }

        public final TextView a() {
            return this.f1726a;
        }
    }

    static final class b implements View.OnClickListener {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ a f1728c;

        b(a aVar) {
            this.f1728c = aVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            f.a((Object) view, "it");
            view.setEnabled(false);
            d dVar = d.this;
            dVar.notifyItemChanged(dVar.a());
            d.this.a(this.f1728c.getAdapterPosition());
            d dVar2 = d.this;
            dVar2.notifyItemChanged(dVar2.a());
            d.this.f1725c.a(this.f1728c.getAdapterPosition(), null);
            view.setEnabled(true);
        }
    }

    public d(LinkedHashMap<String, String> linkedHashMap, animebestapp.com.ui.a.f.c cVar) {
        f.b(linkedHashMap, "series");
        f.b(cVar, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this.f1724b = linkedHashMap;
        this.f1725c = cVar;
    }

    public final int a() {
        return this.f1723a;
    }

    public final void a(int i2) {
        this.f1723a = i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onViewDetachedFromWindow(a aVar) {
        f.b(aVar, "holder");
        View view = aVar.itemView;
        f.a((Object) view, "holder.itemView");
        view.setSelected(false);
        super.onViewDetachedFromWindow(aVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    @SuppressLint({"SetTextI18n"})
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(a aVar, int i2) {
        f.b(aVar, "holder");
        TextView textViewA = aVar.a();
        StringBuilder sb = new StringBuilder();
        Set<String> setKeySet = this.f1724b.keySet();
        f.a((Object) setKeySet, "series.keys");
        sb.append((String) j.b(setKeySet, i2));
        sb.append(" серия");
        textViewA.setText(sb.toString());
        View view = aVar.itemView;
        f.a((Object) view, "holder.itemView");
        view.setSelected(i2 == this.f1723a);
        View view2 = aVar.itemView;
        f.a((Object) view2, "holder.itemView");
        view2.setActivated(i2 % 2 == 0);
        aVar.itemView.setOnClickListener(new b(aVar));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int getItemCount() {
        return this.f1724b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public long getItemId(int i2) {
        f.a((Object) this.f1724b.keySet(), "series.keys");
        return ((String) j.b(r0, i2)).hashCode();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public a onCreateViewHolder(ViewGroup viewGroup, int i2) {
        f.b(viewGroup, "parent");
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.li_series2, viewGroup, false);
        f.a((Object) viewInflate, "LayoutInflater.from(pare…i_series2, parent, false)");
        return new a(viewInflate);
    }
}
