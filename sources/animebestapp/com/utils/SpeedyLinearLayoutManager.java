package animebestapp.com.utils;

import android.content.Context;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.m;

/* JADX INFO: loaded from: classes.dex */
public final class SpeedyLinearLayoutManager extends LinearLayoutManager {
    private static final float H;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(g.p.b.d dVar) {
            this();
        }
    }

    public static final class b extends m {
        b(RecyclerView recyclerView, Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.m
        protected float a(DisplayMetrics displayMetrics) {
            g.p.b.f.b(displayMetrics, "displayMetrics");
            return SpeedyLinearLayoutManager.H / displayMetrics.densityDpi;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.z
        public PointF a(int i2) {
            return super.a(i2);
        }
    }

    static {
        new a(null);
        H = 100.0f;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SpeedyLinearLayoutManager(Context context, int i2, boolean z) {
        super(context, i2, z);
        g.p.b.f.b(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SpeedyLinearLayoutManager(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        g.p.b.f.b(context, "context");
        g.p.b.f.b(attributeSet, "attrs");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public void a(RecyclerView recyclerView, RecyclerView.a0 a0Var, int i2) {
        g.p.b.f.b(recyclerView, "recyclerView");
        b bVar = new b(recyclerView, recyclerView.getContext());
        bVar.c(i2);
        b(bVar);
    }
}
