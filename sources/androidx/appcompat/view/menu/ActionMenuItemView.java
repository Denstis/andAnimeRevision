package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.view.menu.h;
import androidx.appcompat.view.menu.q;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.d0;
import androidx.appcompat.widget.s0;

/* JADX INFO: loaded from: classes.dex */
public class ActionMenuItemView extends androidx.appcompat.widget.w implements q.a, View.OnClickListener, ActionMenuView.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    k f229e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CharSequence f230f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Drawable f231g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    h.b f232h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private d0 f233i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    b f234j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f235k;
    private boolean l;
    private int m;
    private int n;
    private int o;

    private class a extends d0 {
        public a() {
            super(ActionMenuItemView.this);
        }

        @Override // androidx.appcompat.widget.d0
        public t a() {
            b bVar = ActionMenuItemView.this.f234j;
            if (bVar != null) {
                return bVar.a();
            }
            return null;
        }

        @Override // androidx.appcompat.widget.d0
        protected boolean b() {
            t tVarA;
            ActionMenuItemView actionMenuItemView = ActionMenuItemView.this;
            h.b bVar = actionMenuItemView.f232h;
            return bVar != null && bVar.a(actionMenuItemView.f229e) && (tVarA = a()) != null && tVarA.a();
        }
    }

    public static abstract class b {
        public abstract t a();
    }

    public ActionMenuItemView(Context context) {
        this(context, null);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        Resources resources = context.getResources();
        this.f235k = d();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b.a.j.ActionMenuItemView, i2, 0);
        this.m = typedArrayObtainStyledAttributes.getDimensionPixelSize(b.a.j.ActionMenuItemView_android_minWidth, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.o = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.n = -1;
        setSaveEnabled(false);
    }

    private boolean d() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i2 = configuration.screenWidthDp;
        return i2 >= 480 || (i2 >= 640 && configuration.screenHeightDp >= 480) || configuration.orientation == 2;
    }

    private void e() {
        boolean z = true;
        boolean z2 = !TextUtils.isEmpty(this.f230f);
        if (this.f231g != null && (!this.f229e.n() || (!this.f235k && !this.l))) {
            z = false;
        }
        boolean z3 = z2 & z;
        setText(z3 ? this.f230f : null);
        CharSequence contentDescription = this.f229e.getContentDescription();
        if (TextUtils.isEmpty(contentDescription)) {
            contentDescription = z3 ? null : this.f229e.getTitle();
        }
        setContentDescription(contentDescription);
        CharSequence tooltipText = this.f229e.getTooltipText();
        if (TextUtils.isEmpty(tooltipText)) {
            s0.a(this, z3 ? null : this.f229e.getTitle());
        } else {
            s0.a(this, tooltipText);
        }
    }

    @Override // androidx.appcompat.widget.ActionMenuView.a
    public boolean a() {
        return c();
    }

    @Override // androidx.appcompat.widget.ActionMenuView.a
    public boolean b() {
        return c() && this.f229e.getIcon() == null;
    }

    public boolean c() {
        return !TextUtils.isEmpty(getText());
    }

    @Override // androidx.appcompat.view.menu.q.a
    public k getItemData() {
        return this.f229e;
    }

    @Override // androidx.appcompat.view.menu.q.a
    public void initialize(k kVar, int i2) {
        this.f229e = kVar;
        setIcon(kVar.getIcon());
        setTitle(kVar.a(this));
        setId(kVar.getItemId());
        setVisibility(kVar.isVisible() ? 0 : 8);
        setEnabled(kVar.isEnabled());
        if (kVar.hasSubMenu() && this.f233i == null) {
            this.f233i = new a();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        h.b bVar = this.f232h;
        if (bVar != null) {
            bVar.a(this.f229e);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f235k = d();
        e();
    }

    @Override // androidx.appcompat.widget.w, android.widget.TextView, android.view.View
    protected void onMeasure(int i2, int i3) {
        int i4;
        boolean zC = c();
        if (zC && (i4 = this.n) >= 0) {
            super.setPadding(i4, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i2, i3);
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int measuredWidth = getMeasuredWidth();
        int iMin = mode == Integer.MIN_VALUE ? Math.min(size, this.m) : this.m;
        if (mode != 1073741824 && this.m > 0 && measuredWidth < iMin) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(iMin, 1073741824), i3);
        }
        if (zC || this.f231g == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.f231g.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        d0 d0Var;
        if (this.f229e.hasSubMenu() && (d0Var = this.f233i) != null && d0Var.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // androidx.appcompat.view.menu.q.a
    public boolean prefersCondensedTitle() {
        return true;
    }

    public void setCheckable(boolean z) {
    }

    public void setChecked(boolean z) {
    }

    public void setExpandedFormat(boolean z) {
        if (this.l != z) {
            this.l = z;
            k kVar = this.f229e;
            if (kVar != null) {
                kVar.b();
            }
        }
    }

    public void setIcon(Drawable drawable) {
        this.f231g = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i2 = this.o;
            if (intrinsicWidth > i2) {
                intrinsicHeight = (int) (intrinsicHeight * (i2 / intrinsicWidth));
                intrinsicWidth = i2;
            }
            int i3 = this.o;
            if (intrinsicHeight > i3) {
                intrinsicWidth = (int) (intrinsicWidth * (i3 / intrinsicHeight));
                intrinsicHeight = i3;
            }
            drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
        }
        setCompoundDrawables(drawable, null, null, null);
        e();
    }

    public void setItemInvoker(h.b bVar) {
        this.f232h = bVar;
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i2, int i3, int i4, int i5) {
        this.n = i2;
        super.setPadding(i2, i3, i4, i5);
    }

    public void setPopupCallback(b bVar) {
        this.f234j = bVar;
    }

    public void setTitle(CharSequence charSequence) {
        this.f230f = charSequence;
        e();
    }
}
