package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.appcompat.app.a;
import androidx.appcompat.widget.LinearLayoutCompat;

/* JADX INFO: loaded from: classes.dex */
public class j0 extends HorizontalScrollView implements AdapterView.OnItemSelectedListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Runnable f577b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f578c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    LinearLayoutCompat f579d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Spinner f580e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f581f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f582g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f583h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f584i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f585j;

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f586b;

        a(View view) {
            this.f586b = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            j0.this.smoothScrollTo(this.f586b.getLeft() - ((j0.this.getWidth() - this.f586b.getWidth()) / 2), 0);
            j0.this.f577b = null;
        }
    }

    private class b extends BaseAdapter {
        b() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return j0.this.f579d.getChildCount();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            return ((d) j0.this.f579d.getChildAt(i2)).a();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            if (view == null) {
                return j0.this.a((a.c) getItem(i2), true);
            }
            ((d) view).a((a.c) getItem(i2));
            return view;
        }
    }

    private class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((d) view).a().e();
            int childCount = j0.this.f579d.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = j0.this.f579d.getChildAt(i2);
                childAt.setSelected(childAt == view);
            }
        }
    }

    private class d extends LinearLayout {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int[] f590b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private a.c f591c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private TextView f592d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private ImageView f593e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private View f594f;

        public d(Context context, a.c cVar, boolean z) {
            super(context, null, b.a.a.actionBarTabStyle);
            this.f590b = new int[]{R.attr.background};
            this.f591c = cVar;
            q0 q0VarA = q0.a(context, null, this.f590b, b.a.a.actionBarTabStyle, 0);
            if (q0VarA.g(0)) {
                setBackgroundDrawable(q0VarA.b(0));
            }
            q0VarA.a();
            if (z) {
                setGravity(8388627);
            }
            b();
        }

        public a.c a() {
            return this.f591c;
        }

        public void a(a.c cVar) {
            this.f591c = cVar;
            b();
        }

        public void b() {
            a.c cVar = this.f591c;
            View viewB = cVar.b();
            if (viewB != null) {
                ViewParent parent = viewB.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(viewB);
                    }
                    addView(viewB);
                }
                this.f594f = viewB;
                TextView textView = this.f592d;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f593e;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.f593e.setImageDrawable(null);
                    return;
                }
                return;
            }
            View view = this.f594f;
            if (view != null) {
                removeView(view);
                this.f594f = null;
            }
            Drawable drawableC = cVar.c();
            CharSequence charSequenceD = cVar.d();
            if (drawableC != null) {
                if (this.f593e == null) {
                    AppCompatImageView appCompatImageView = new AppCompatImageView(getContext());
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 16;
                    appCompatImageView.setLayoutParams(layoutParams);
                    addView(appCompatImageView, 0);
                    this.f593e = appCompatImageView;
                }
                this.f593e.setImageDrawable(drawableC);
                this.f593e.setVisibility(0);
            } else {
                ImageView imageView2 = this.f593e;
                if (imageView2 != null) {
                    imageView2.setVisibility(8);
                    this.f593e.setImageDrawable(null);
                }
            }
            boolean z = !TextUtils.isEmpty(charSequenceD);
            if (z) {
                if (this.f592d == null) {
                    w wVar = new w(getContext(), null, b.a.a.actionBarTabTextStyle);
                    wVar.setEllipsize(TextUtils.TruncateAt.END);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.gravity = 16;
                    wVar.setLayoutParams(layoutParams2);
                    addView(wVar);
                    this.f592d = wVar;
                }
                this.f592d.setText(charSequenceD);
                this.f592d.setVisibility(0);
            } else {
                TextView textView2 = this.f592d;
                if (textView2 != null) {
                    textView2.setVisibility(8);
                    this.f592d.setText((CharSequence) null);
                }
            }
            ImageView imageView3 = this.f593e;
            if (imageView3 != null) {
                imageView3.setContentDescription(cVar.a());
            }
            s0.a(this, z ? null : cVar.a());
        }

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName(a.c.class.getName());
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName(a.c.class.getName());
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i2, int i3) {
            super.onMeasure(i2, i3);
            if (j0.this.f582g > 0) {
                int measuredWidth = getMeasuredWidth();
                int i4 = j0.this.f582g;
                if (measuredWidth > i4) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(i4, 1073741824), i3);
                }
            }
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && z) {
                sendAccessibilityEvent(4);
            }
        }
    }

    static {
        new DecelerateInterpolator();
    }

    private Spinner a() {
        u uVar = new u(getContext(), null, b.a.a.actionDropDownStyle);
        uVar.setLayoutParams(new LinearLayoutCompat.a(-2, -1));
        uVar.setOnItemSelectedListener(this);
        return uVar;
    }

    private boolean b() {
        Spinner spinner = this.f580e;
        return spinner != null && spinner.getParent() == this;
    }

    private void c() {
        if (b()) {
            return;
        }
        if (this.f580e == null) {
            this.f580e = a();
        }
        removeView(this.f579d);
        addView(this.f580e, new ViewGroup.LayoutParams(-2, -1));
        if (this.f580e.getAdapter() == null) {
            this.f580e.setAdapter((SpinnerAdapter) new b());
        }
        Runnable runnable = this.f577b;
        if (runnable != null) {
            removeCallbacks(runnable);
            this.f577b = null;
        }
        this.f580e.setSelection(this.f585j);
    }

    private boolean d() {
        if (!b()) {
            return false;
        }
        removeView(this.f580e);
        addView(this.f579d, new ViewGroup.LayoutParams(-2, -1));
        setTabSelected(this.f580e.getSelectedItemPosition());
        return false;
    }

    d a(a.c cVar, boolean z) {
        d dVar = new d(getContext(), cVar, z);
        if (z) {
            dVar.setBackgroundDrawable(null);
            dVar.setLayoutParams(new AbsListView.LayoutParams(-1, this.f584i));
        } else {
            dVar.setFocusable(true);
            if (this.f578c == null) {
                this.f578c = new c();
            }
            dVar.setOnClickListener(this.f578c);
        }
        return dVar;
    }

    public void a(int i2) {
        View childAt = this.f579d.getChildAt(i2);
        Runnable runnable = this.f577b;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        this.f577b = new a(childAt);
        post(this.f577b);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f577b;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        b.a.n.a aVarA = b.a.n.a.a(getContext());
        setContentHeight(aVarA.e());
        this.f583h = aVarA.d();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f577b;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j2) {
        ((d) view).a().e();
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0067  */
    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onMeasure(int r7, int r8) {
        /*
            r6 = this;
            int r8 = android.view.View.MeasureSpec.getMode(r7)
            r0 = 1
            r1 = 0
            r2 = 1073741824(0x40000000, float:2.0)
            if (r8 != r2) goto Lc
            r3 = 1
            goto Ld
        Lc:
            r3 = 0
        Ld:
            r6.setFillViewport(r3)
            androidx.appcompat.widget.LinearLayoutCompat r4 = r6.f579d
            int r4 = r4.getChildCount()
            if (r4 <= r0) goto L3f
            if (r8 == r2) goto L1e
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r8 != r5) goto L3f
        L1e:
            r8 = 2
            if (r4 <= r8) goto L2f
            int r8 = android.view.View.MeasureSpec.getSize(r7)
            float r8 = (float) r8
            r4 = 1053609165(0x3ecccccd, float:0.4)
            float r8 = r8 * r4
            int r8 = (int) r8
            r6.f582g = r8
            goto L36
        L2f:
            int r4 = android.view.View.MeasureSpec.getSize(r7)
            int r4 = r4 / r8
            r6.f582g = r4
        L36:
            int r8 = r6.f582g
            int r4 = r6.f583h
            int r8 = java.lang.Math.min(r8, r4)
            goto L40
        L3f:
            r8 = -1
        L40:
            r6.f582g = r8
            int r8 = r6.f584i
            int r8 = android.view.View.MeasureSpec.makeMeasureSpec(r8, r2)
            if (r3 != 0) goto L4f
            boolean r2 = r6.f581f
            if (r2 == 0) goto L4f
            goto L50
        L4f:
            r0 = 0
        L50:
            if (r0 == 0) goto L67
            androidx.appcompat.widget.LinearLayoutCompat r0 = r6.f579d
            r0.measure(r1, r8)
            androidx.appcompat.widget.LinearLayoutCompat r0 = r6.f579d
            int r0 = r0.getMeasuredWidth()
            int r1 = android.view.View.MeasureSpec.getSize(r7)
            if (r0 <= r1) goto L67
            r6.c()
            goto L6a
        L67:
            r6.d()
        L6a:
            int r0 = r6.getMeasuredWidth()
            super.onMeasure(r7, r8)
            int r7 = r6.getMeasuredWidth()
            if (r3 == 0) goto L7e
            if (r0 == r7) goto L7e
            int r7 = r6.f585j
            r6.setTabSelected(r7)
        L7e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.j0.onMeasure(int, int):void");
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public void setAllowCollapse(boolean z) {
        this.f581f = z;
    }

    public void setContentHeight(int i2) {
        this.f584i = i2;
        requestLayout();
    }

    public void setTabSelected(int i2) {
        this.f585j = i2;
        int childCount = this.f579d.getChildCount();
        int i3 = 0;
        while (i3 < childCount) {
            View childAt = this.f579d.getChildAt(i3);
            boolean z = i3 == i2;
            childAt.setSelected(z);
            if (z) {
                a(i2);
            }
            i3++;
        }
        Spinner spinner = this.f580e;
        if (spinner == null || i2 < 0) {
            return;
        }
        spinner.setSelection(i2);
    }
}
