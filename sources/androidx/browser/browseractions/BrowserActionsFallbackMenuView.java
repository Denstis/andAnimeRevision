package androidx.browser.browseractions;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import b.c.a;

/* JADX INFO: loaded from: classes.dex */
public class BrowserActionsFallbackMenuView extends LinearLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f723b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f724c;

    public BrowserActionsFallbackMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f723b = getResources().getDimensionPixelOffset(a.browser_actions_context_menu_min_padding);
        this.f724c = getResources().getDimensionPixelOffset(a.browser_actions_context_menu_max_width);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i2, int i3) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.min(getResources().getDisplayMetrics().widthPixels - (this.f723b * 2), this.f724c), 1073741824), i3);
    }
}
