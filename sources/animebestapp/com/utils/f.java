package animebestapp.com.utils;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.m;
import androidx.recyclerview.widget.s;

/* JADX INFO: loaded from: classes.dex */
public final class f extends s {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private RecyclerView f2128f;

    public static final class a extends m {
        a(f fVar, Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.m
        protected float a(DisplayMetrics displayMetrics) {
            g.p.b.f.b(displayMetrics, "displayMetrics");
            return g.f2129a / displayMetrics.densityDpi;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.z
        public PointF a(int i2) {
            return super.a(i2);
        }
    }

    @Override // androidx.recyclerview.widget.w
    public void a(RecyclerView recyclerView) {
        if (this.f2128f != null || recyclerView == null) {
            return;
        }
        this.f2128f = recyclerView;
        super.a(recyclerView);
    }

    @Override // androidx.recyclerview.widget.w
    protected m b(RecyclerView.o oVar) {
        RecyclerView recyclerView = this.f2128f;
        return new a(this, recyclerView != null ? recyclerView.getContext() : null);
    }
}
