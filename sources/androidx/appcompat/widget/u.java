package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;

/* JADX INFO: loaded from: classes.dex */
public class u extends Spinner implements b.h.o.r {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int[] f670j = {R.attr.spinnerMode};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f671b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f672c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private d0 f673d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private SpinnerAdapter f674e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f675f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    c f676g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f677h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final Rect f678i;

    class a extends d0 {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        final /* synthetic */ c f679k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(View view, c cVar) {
            super(view);
            this.f679k = cVar;
        }

        @Override // androidx.appcompat.widget.d0
        public androidx.appcompat.view.menu.t a() {
            return this.f679k;
        }

        @Override // androidx.appcompat.widget.d0
        public boolean b() {
            if (u.this.f676g.a()) {
                return true;
            }
            u.this.f676g.show();
            return true;
        }
    }

    private static class b implements ListAdapter, SpinnerAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private SpinnerAdapter f680b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private ListAdapter f681c;

        public b(SpinnerAdapter spinnerAdapter, Resources.Theme theme) {
            this.f680b = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.f681c = (ListAdapter) spinnerAdapter;
            }
            if (theme != null) {
                if (Build.VERSION.SDK_INT >= 23 && (spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                    ThemedSpinnerAdapter themedSpinnerAdapter = (ThemedSpinnerAdapter) spinnerAdapter;
                    if (themedSpinnerAdapter.getDropDownViewTheme() != theme) {
                        themedSpinnerAdapter.setDropDownViewTheme(theme);
                        return;
                    }
                    return;
                }
                if (spinnerAdapter instanceof m0) {
                    m0 m0Var = (m0) spinnerAdapter;
                    if (m0Var.getDropDownViewTheme() == null) {
                        m0Var.setDropDownViewTheme(theme);
                    }
                }
            }
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.f681c;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            SpinnerAdapter spinnerAdapter = this.f680b;
            if (spinnerAdapter == null) {
                return 0;
            }
            return spinnerAdapter.getCount();
        }

        @Override // android.widget.SpinnerAdapter
        public View getDropDownView(int i2, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.f680b;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getDropDownView(i2, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            SpinnerAdapter spinnerAdapter = this.f680b;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getItem(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            SpinnerAdapter spinnerAdapter = this.f680b;
            if (spinnerAdapter == null) {
                return -1L;
            }
            return spinnerAdapter.getItemId(i2);
        }

        @Override // android.widget.Adapter
        public int getItemViewType(int i2) {
            return 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            return getDropDownView(i2, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            SpinnerAdapter spinnerAdapter = this.f680b;
            return spinnerAdapter != null && spinnerAdapter.hasStableIds();
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            return getCount() == 0;
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i2) {
            ListAdapter listAdapter = this.f681c;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i2);
            }
            return true;
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f680b;
            if (spinnerAdapter != null) {
                spinnerAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f680b;
            if (spinnerAdapter != null) {
                spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    private class c extends e0 {
        private CharSequence J;
        ListAdapter K;
        private final Rect L;

        class a implements AdapterView.OnItemClickListener {
            a(u uVar) {
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
                u.this.setSelection(i2);
                if (u.this.getOnItemClickListener() != null) {
                    c cVar = c.this;
                    u.this.performItemClick(view, i2, cVar.K.getItemId(i2));
                }
                c.this.dismiss();
            }
        }

        class b implements ViewTreeObserver.OnGlobalLayoutListener {
            b() {
            }

            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                c cVar = c.this;
                if (!cVar.b(u.this)) {
                    c.this.dismiss();
                } else {
                    c.this.k();
                    c.super.show();
                }
            }
        }

        /* JADX INFO: renamed from: androidx.appcompat.widget.u$c$c, reason: collision with other inner class name */
        class C0012c implements PopupWindow.OnDismissListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener f684b;

            C0012c(ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
                this.f684b = onGlobalLayoutListener;
            }

            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                ViewTreeObserver viewTreeObserver = u.this.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    viewTreeObserver.removeGlobalOnLayoutListener(this.f684b);
                }
            }
        }

        public c(Context context, AttributeSet attributeSet, int i2) {
            super(context, attributeSet, i2);
            this.L = new Rect();
            a(u.this);
            a(true);
            f(0);
            a(new a(u.this));
        }

        @Override // androidx.appcompat.widget.e0
        public void a(ListAdapter listAdapter) {
            super.a(listAdapter);
            this.K = listAdapter;
        }

        public void a(CharSequence charSequence) {
            this.J = charSequence;
        }

        boolean b(View view) {
            return b.h.o.s.y(view) && view.getGlobalVisibleRect(this.L);
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x008d  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0095  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void k() {
            /*
                r8 = this;
                android.graphics.drawable.Drawable r0 = r8.e()
                r1 = 0
                if (r0 == 0) goto L26
                androidx.appcompat.widget.u r1 = androidx.appcompat.widget.u.this
                android.graphics.Rect r1 = r1.f678i
                r0.getPadding(r1)
                androidx.appcompat.widget.u r0 = androidx.appcompat.widget.u.this
                boolean r0 = androidx.appcompat.widget.w0.a(r0)
                if (r0 == 0) goto L1d
                androidx.appcompat.widget.u r0 = androidx.appcompat.widget.u.this
                android.graphics.Rect r0 = r0.f678i
                int r0 = r0.right
                goto L24
            L1d:
                androidx.appcompat.widget.u r0 = androidx.appcompat.widget.u.this
                android.graphics.Rect r0 = r0.f678i
                int r0 = r0.left
                int r0 = -r0
            L24:
                r1 = r0
                goto L2e
            L26:
                androidx.appcompat.widget.u r0 = androidx.appcompat.widget.u.this
                android.graphics.Rect r0 = r0.f678i
                r0.right = r1
                r0.left = r1
            L2e:
                androidx.appcompat.widget.u r0 = androidx.appcompat.widget.u.this
                int r0 = r0.getPaddingLeft()
                androidx.appcompat.widget.u r2 = androidx.appcompat.widget.u.this
                int r2 = r2.getPaddingRight()
                androidx.appcompat.widget.u r3 = androidx.appcompat.widget.u.this
                int r3 = r3.getWidth()
                androidx.appcompat.widget.u r4 = androidx.appcompat.widget.u.this
                int r5 = r4.f677h
                r6 = -2
                if (r5 != r6) goto L78
                android.widget.ListAdapter r5 = r8.K
                android.widget.SpinnerAdapter r5 = (android.widget.SpinnerAdapter) r5
                android.graphics.drawable.Drawable r6 = r8.e()
                int r4 = r4.a(r5, r6)
                androidx.appcompat.widget.u r5 = androidx.appcompat.widget.u.this
                android.content.Context r5 = r5.getContext()
                android.content.res.Resources r5 = r5.getResources()
                android.util.DisplayMetrics r5 = r5.getDisplayMetrics()
                int r5 = r5.widthPixels
                androidx.appcompat.widget.u r6 = androidx.appcompat.widget.u.this
                android.graphics.Rect r6 = r6.f678i
                int r7 = r6.left
                int r5 = r5 - r7
                int r6 = r6.right
                int r5 = r5 - r6
                if (r4 <= r5) goto L70
                r4 = r5
            L70:
                int r5 = r3 - r0
                int r5 = r5 - r2
                int r4 = java.lang.Math.max(r4, r5)
                goto L7e
            L78:
                r4 = -1
                if (r5 != r4) goto L82
                int r4 = r3 - r0
                int r4 = r4 - r2
            L7e:
                r8.b(r4)
                goto L85
            L82:
                r8.b(r5)
            L85:
                androidx.appcompat.widget.u r4 = androidx.appcompat.widget.u.this
                boolean r4 = androidx.appcompat.widget.w0.a(r4)
                if (r4 == 0) goto L95
                int r3 = r3 - r2
                int r0 = r8.h()
                int r3 = r3 - r0
                int r1 = r1 + r3
                goto L96
            L95:
                int r1 = r1 + r0
            L96:
                r8.d(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.u.c.k():void");
        }

        public CharSequence l() {
            return this.J;
        }

        @Override // androidx.appcompat.widget.e0, androidx.appcompat.view.menu.t
        public void show() {
            ViewTreeObserver viewTreeObserver;
            boolean zA = a();
            k();
            e(2);
            super.show();
            b().setChoiceMode(1);
            g(u.this.getSelectedItemPosition());
            if (zA || (viewTreeObserver = u.this.getViewTreeObserver()) == null) {
                return;
            }
            b bVar = new b();
            viewTreeObserver.addOnGlobalLayoutListener(bVar);
            a(new C0012c(bVar));
        }
    }

    public u(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, b.a.a.spinnerStyle);
    }

    public u(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, -1);
    }

    public u(Context context, AttributeSet attributeSet, int i2, int i3) {
        this(context, attributeSet, i2, i3, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0056 A[PHI: r11 r12
      0x0056: PHI (r11v4 int) = (r11v0 int), (r11v6 int) binds: [B:31:0x0068, B:22:0x0054] A[DONT_GENERATE, DONT_INLINE]
      0x0056: PHI (r12v15 android.content.res.TypedArray) = (r12v14 android.content.res.TypedArray), (r12v17 android.content.res.TypedArray) binds: [B:31:0x0068, B:22:0x0054] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00cb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public u(android.content.Context r8, android.util.AttributeSet r9, int r10, int r11, android.content.res.Resources.Theme r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 214
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.u.<init>(android.content.Context, android.util.AttributeSet, int, int, android.content.res.Resources$Theme):void");
    }

    int a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i2 = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int iMax = Math.max(0, getSelectedItemPosition());
        int iMin = Math.min(spinnerAdapter.getCount(), iMax + 15);
        View view = null;
        int iMax2 = 0;
        for (int iMax3 = Math.max(0, iMax - (15 - (iMin - iMax))); iMax3 < iMin; iMax3++) {
            int itemViewType = spinnerAdapter.getItemViewType(iMax3);
            if (itemViewType != i2) {
                view = null;
                i2 = itemViewType;
            }
            view = spinnerAdapter.getView(iMax3, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            iMax2 = Math.max(iMax2, view.getMeasuredWidth());
        }
        if (drawable == null) {
            return iMax2;
        }
        drawable.getPadding(this.f678i);
        Rect rect = this.f678i;
        return iMax2 + rect.left + rect.right;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.f671b;
        if (eVar != null) {
            eVar.a();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        c cVar = this.f676g;
        if (cVar != null) {
            return cVar.f();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownHorizontalOffset();
        }
        return 0;
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        c cVar = this.f676g;
        if (cVar != null) {
            return cVar.g();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownVerticalOffset();
        }
        return 0;
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        if (this.f676g != null) {
            return this.f677h;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownWidth();
        }
        return 0;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        c cVar = this.f676g;
        if (cVar != null) {
            return cVar.e();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getPopupBackground();
        }
        return null;
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        if (this.f676g != null) {
            return this.f672c;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            return super.getPopupContext();
        }
        return null;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        c cVar = this.f676g;
        return cVar != null ? cVar.l() : super.getPrompt();
    }

    @Override // b.h.o.r
    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.f671b;
        if (eVar != null) {
            return eVar.b();
        }
        return null;
    }

    @Override // b.h.o.r
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.f671b;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        c cVar = this.f676g;
        if (cVar == null || !cVar.a()) {
            return;
        }
        this.f676g.dismiss();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    protected void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (this.f676g == null || View.MeasureSpec.getMode(i2) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i2)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        d0 d0Var = this.f673d;
        if (d0Var == null || !d0Var.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean performClick() {
        c cVar = this.f676g;
        if (cVar == null) {
            return super.performClick();
        }
        if (cVar.a()) {
            return true;
        }
        this.f676g.show();
        return true;
    }

    @Override // android.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f675f) {
            this.f674e = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.f676g != null) {
            Context context = this.f672c;
            if (context == null) {
                context = getContext();
            }
            this.f676g.a(new b(spinnerAdapter, context.getTheme()));
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.f671b;
        if (eVar != null) {
            eVar.a(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        e eVar = this.f671b;
        if (eVar != null) {
            eVar.a(i2);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i2) {
        c cVar = this.f676g;
        if (cVar != null) {
            cVar.d(i2);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownHorizontalOffset(i2);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i2) {
        c cVar = this.f676g;
        if (cVar != null) {
            cVar.h(i2);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownVerticalOffset(i2);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i2) {
        if (this.f676g != null) {
            this.f677h = i2;
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownWidth(i2);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        c cVar = this.f676g;
        if (cVar != null) {
            cVar.a(drawable);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i2) {
        setPopupBackgroundDrawable(b.a.k.a.a.c(getPopupContext(), i2));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        c cVar = this.f676g;
        if (cVar != null) {
            cVar.a(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    @Override // b.h.o.r
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.f671b;
        if (eVar != null) {
            eVar.b(colorStateList);
        }
    }

    @Override // b.h.o.r
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.f671b;
        if (eVar != null) {
            eVar.a(mode);
        }
    }
}
