package androidx.appcompat.widget;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
class u0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f686a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final View f687b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final TextView f688c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final WindowManager.LayoutParams f689d = new WindowManager.LayoutParams();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Rect f690e = new Rect();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int[] f691f = new int[2];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int[] f692g = new int[2];

    u0(Context context) {
        this.f686a = context;
        this.f687b = LayoutInflater.from(this.f686a).inflate(b.a.g.abc_tooltip, (ViewGroup) null);
        this.f688c = (TextView) this.f687b.findViewById(b.a.f.message);
        this.f689d.setTitle(u0.class.getSimpleName());
        this.f689d.packageName = this.f686a.getPackageName();
        WindowManager.LayoutParams layoutParams = this.f689d;
        layoutParams.type = 1002;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = b.a.i.Animation_AppCompat_Tooltip;
        layoutParams.flags = 24;
    }

    private static View a(View view) {
        View rootView = view.getRootView();
        ViewGroup.LayoutParams layoutParams = rootView.getLayoutParams();
        if ((layoutParams instanceof WindowManager.LayoutParams) && ((WindowManager.LayoutParams) layoutParams).type == 2) {
            return rootView;
        }
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return ((Activity) context).getWindow().getDecorView();
            }
        }
        return rootView;
    }

    private void a(View view, int i2, int i3, boolean z, WindowManager.LayoutParams layoutParams) {
        int height;
        int i4;
        layoutParams.token = view.getApplicationWindowToken();
        int dimensionPixelOffset = this.f686a.getResources().getDimensionPixelOffset(b.a.d.tooltip_precise_anchor_threshold);
        if (view.getWidth() < dimensionPixelOffset) {
            i2 = view.getWidth() / 2;
        }
        if (view.getHeight() >= dimensionPixelOffset) {
            int dimensionPixelOffset2 = this.f686a.getResources().getDimensionPixelOffset(b.a.d.tooltip_precise_anchor_extra_offset);
            height = i3 + dimensionPixelOffset2;
            i4 = i3 - dimensionPixelOffset2;
        } else {
            height = view.getHeight();
            i4 = 0;
        }
        layoutParams.gravity = 49;
        int dimensionPixelOffset3 = this.f686a.getResources().getDimensionPixelOffset(z ? b.a.d.tooltip_y_offset_touch : b.a.d.tooltip_y_offset_non_touch);
        View viewA = a(view);
        if (viewA == null) {
            Log.e("TooltipPopup", "Cannot find app view");
            return;
        }
        viewA.getWindowVisibleDisplayFrame(this.f690e);
        Rect rect = this.f690e;
        if (rect.left < 0 && rect.top < 0) {
            Resources resources = this.f686a.getResources();
            int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
            int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            this.f690e.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        viewA.getLocationOnScreen(this.f692g);
        view.getLocationOnScreen(this.f691f);
        int[] iArr = this.f691f;
        int i5 = iArr[0];
        int[] iArr2 = this.f692g;
        iArr[0] = i5 - iArr2[0];
        iArr[1] = iArr[1] - iArr2[1];
        layoutParams.x = (iArr[0] + i2) - (viewA.getWidth() / 2);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.f687b.measure(iMakeMeasureSpec, iMakeMeasureSpec);
        int measuredHeight = this.f687b.getMeasuredHeight();
        int[] iArr3 = this.f691f;
        int i6 = ((iArr3[1] + i4) - dimensionPixelOffset3) - measuredHeight;
        int i7 = iArr3[1] + height + dimensionPixelOffset3;
        if (!z ? measuredHeight + i7 <= this.f690e.height() : i6 < 0) {
            layoutParams.y = i6;
        } else {
            layoutParams.y = i7;
        }
    }

    void a() {
        if (b()) {
            ((WindowManager) this.f686a.getSystemService("window")).removeView(this.f687b);
        }
    }

    void a(View view, int i2, int i3, boolean z, CharSequence charSequence) {
        if (b()) {
            a();
        }
        this.f688c.setText(charSequence);
        a(view, i2, i3, z, this.f689d);
        ((WindowManager) this.f686a.getSystemService("window")).addView(this.f687b, this.f689d);
    }

    boolean b() {
        return this.f687b.getParent() != null;
    }
}
