package animebestapp.com.utils;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public final class d {
    public static final View a(ViewGroup viewGroup, int i2) {
        g.p.b.f.b(viewGroup, "receiver$0");
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(i2, viewGroup, false);
        g.p.b.f.a((Object) viewInflate, "LayoutInflater.from(cont…late(layout, this, false)");
        return viewInflate;
    }
}
