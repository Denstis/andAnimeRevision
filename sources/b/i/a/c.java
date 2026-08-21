package b.i.a;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public abstract class c extends a {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f2625j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f2626k;
    private LayoutInflater l;

    @Deprecated
    public c(Context context, int i2, Cursor cursor, boolean z) {
        super(context, cursor, z);
        this.f2626k = i2;
        this.f2625j = i2;
        this.l = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // b.i.a.a
    public View a(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.l.inflate(this.f2626k, viewGroup, false);
    }

    @Override // b.i.a.a
    public View b(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.l.inflate(this.f2625j, viewGroup, false);
    }
}
