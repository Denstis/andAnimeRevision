package animebestapp.com.utils;

import android.content.Context;
import android.util.Log;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public final class WrapContentLinearLayoutManager extends LinearLayoutManager {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WrapContentLinearLayoutManager(Context context) {
        super(context);
        g.p.b.f.b(context, "context");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.o
    public void e(RecyclerView.v vVar, RecyclerView.a0 a0Var) {
        try {
            super.e(vVar, a0Var);
        } catch (IndexOutOfBoundsException unused) {
            Log.e("TAG", "meet a IOOBE in RecyclerView");
        }
    }
}
