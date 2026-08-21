package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import androidx.appcompat.view.menu.h;
import androidx.appcompat.widget.q0;

/* JADX INFO: loaded from: classes.dex */
public final class ExpandedMenuView extends ListView implements h.b, q, AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f237d = {R.attr.background, R.attr.divider};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private h f238b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f239c;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listViewStyle);
    }

    public ExpandedMenuView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        q0 q0VarA = q0.a(context, attributeSet, f237d, i2, 0);
        if (q0VarA.g(0)) {
            setBackgroundDrawable(q0VarA.b(0));
        }
        if (q0VarA.g(1)) {
            setDivider(q0VarA.b(1));
        }
        q0VarA.a();
    }

    @Override // androidx.appcompat.view.menu.h.b
    public boolean a(k kVar) {
        return this.f238b.performItemAction(kVar, 0);
    }

    public int getWindowAnimations() {
        return this.f239c;
    }

    @Override // androidx.appcompat.view.menu.q
    public void initialize(h hVar) {
        this.f238b = hVar;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i2, long j2) {
        a((k) getAdapter().getItem(i2));
    }
}
