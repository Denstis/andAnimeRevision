package me.relex.circleindicator;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import androidx.viewpager.widget.ViewPager;

/* JADX INFO: loaded from: classes.dex */
public class CircleIndicator extends LinearLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ViewPager f5194b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f5195c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f5196d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f5197e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f5198f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f5199g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f5200h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f5201i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Animator f5202j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Animator f5203k;
    private Animator l;
    private Animator m;
    private int n;
    private final ViewPager.j o;
    private DataSetObserver p;

    class a implements ViewPager.j {
        a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.j
        public void onPageScrollStateChanged(int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.j
        public void onPageScrolled(int i2, float f2, int i3) {
        }

        @Override // androidx.viewpager.widget.ViewPager.j
        public void onPageSelected(int i2) {
            CircleIndicator circleIndicator;
            View childAt;
            if (CircleIndicator.this.f5194b.getAdapter() == null || CircleIndicator.this.f5194b.getAdapter().a() <= 0) {
                return;
            }
            if (CircleIndicator.this.f5203k.isRunning()) {
                CircleIndicator.this.f5203k.end();
                CircleIndicator.this.f5203k.cancel();
            }
            if (CircleIndicator.this.f5202j.isRunning()) {
                CircleIndicator.this.f5202j.end();
                CircleIndicator.this.f5202j.cancel();
            }
            if (CircleIndicator.this.n >= 0 && (childAt = (circleIndicator = CircleIndicator.this).getChildAt(circleIndicator.n)) != null) {
                childAt.setBackgroundResource(CircleIndicator.this.f5201i);
                CircleIndicator.this.f5203k.setTarget(childAt);
                CircleIndicator.this.f5203k.start();
            }
            View childAt2 = CircleIndicator.this.getChildAt(i2);
            if (childAt2 != null) {
                childAt2.setBackgroundResource(CircleIndicator.this.f5200h);
                CircleIndicator.this.f5202j.setTarget(childAt2);
                CircleIndicator.this.f5202j.start();
            }
            CircleIndicator.this.n = i2;
        }
    }

    class b extends DataSetObserver {
        b() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            int iA;
            CircleIndicator circleIndicator;
            int currentItem;
            super.onChanged();
            if (CircleIndicator.this.f5194b == null || (iA = CircleIndicator.this.f5194b.getAdapter().a()) == CircleIndicator.this.getChildCount()) {
                return;
            }
            if (CircleIndicator.this.n < iA) {
                circleIndicator = CircleIndicator.this;
                currentItem = circleIndicator.f5194b.getCurrentItem();
            } else {
                circleIndicator = CircleIndicator.this;
                currentItem = -1;
            }
            circleIndicator.n = currentItem;
            CircleIndicator.this.a();
        }
    }

    private class c implements Interpolator {
        private c(CircleIndicator circleIndicator) {
        }

        /* synthetic */ c(CircleIndicator circleIndicator, a aVar) {
            this(circleIndicator);
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f2) {
            return Math.abs(1.0f - f2);
        }
    }

    public CircleIndicator(Context context) {
        super(context);
        this.f5195c = -1;
        this.f5196d = -1;
        this.f5197e = -1;
        this.f5198f = me.relex.circleindicator.a.scale_with_alpha;
        this.f5199g = 0;
        int i2 = me.relex.circleindicator.b.white_radius;
        this.f5200h = i2;
        this.f5201i = i2;
        this.n = -1;
        this.o = new a();
        this.p = new b();
        b(context, null);
    }

    public CircleIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5195c = -1;
        this.f5196d = -1;
        this.f5197e = -1;
        this.f5198f = me.relex.circleindicator.a.scale_with_alpha;
        this.f5199g = 0;
        int i2 = me.relex.circleindicator.b.white_radius;
        this.f5200h = i2;
        this.f5201i = i2;
        this.n = -1;
        this.o = new a();
        this.p = new b();
        b(context, attributeSet);
    }

    public CircleIndicator(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f5195c = -1;
        this.f5196d = -1;
        this.f5197e = -1;
        this.f5198f = me.relex.circleindicator.a.scale_with_alpha;
        this.f5199g = 0;
        int i3 = me.relex.circleindicator.b.white_radius;
        this.f5200h = i3;
        this.f5201i = i3;
        this.n = -1;
        this.o = new a();
        this.p = new b();
        b(context, attributeSet);
    }

    @TargetApi(21)
    public CircleIndicator(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.f5195c = -1;
        this.f5196d = -1;
        this.f5197e = -1;
        this.f5198f = me.relex.circleindicator.a.scale_with_alpha;
        this.f5199g = 0;
        int i4 = me.relex.circleindicator.b.white_radius;
        this.f5200h = i4;
        this.f5201i = i4;
        this.n = -1;
        this.o = new a();
        this.p = new b();
        b(context, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        int i2;
        Animator animator;
        removeAllViews();
        int iA = this.f5194b.getAdapter().a();
        if (iA <= 0) {
            return;
        }
        int currentItem = this.f5194b.getCurrentItem();
        int orientation = getOrientation();
        for (int i3 = 0; i3 < iA; i3++) {
            if (currentItem == i3) {
                i2 = this.f5200h;
                animator = this.l;
            } else {
                i2 = this.f5201i;
                animator = this.m;
            }
            a(orientation, i2, animator);
        }
    }

    private void a(int i2, int i3, Animator animator) {
        if (animator.isRunning()) {
            animator.end();
            animator.cancel();
        }
        View view = new View(getContext());
        view.setBackgroundResource(i3);
        addView(view, this.f5196d, this.f5197e);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
        if (i2 == 0) {
            int i4 = this.f5195c;
            layoutParams.leftMargin = i4;
            layoutParams.rightMargin = i4;
        } else {
            int i5 = this.f5195c;
            layoutParams.topMargin = i5;
            layoutParams.bottomMargin = i5;
        }
        view.setLayoutParams(layoutParams);
        animator.setTarget(view);
        animator.start();
    }

    private void a(Context context) {
        int iA = this.f5196d;
        if (iA < 0) {
            iA = a(5.0f);
        }
        this.f5196d = iA;
        int iA2 = this.f5197e;
        if (iA2 < 0) {
            iA2 = a(5.0f);
        }
        this.f5197e = iA2;
        int iA3 = this.f5195c;
        if (iA3 < 0) {
            iA3 = a(5.0f);
        }
        this.f5195c = iA3;
        int i2 = this.f5198f;
        if (i2 == 0) {
            i2 = me.relex.circleindicator.a.scale_with_alpha;
        }
        this.f5198f = i2;
        this.f5202j = c(context);
        this.l = c(context);
        this.l.setDuration(0L);
        this.f5203k = b(context);
        this.m = b(context);
        this.m.setDuration(0L);
        int i3 = this.f5200h;
        if (i3 == 0) {
            i3 = me.relex.circleindicator.b.white_radius;
        }
        this.f5200h = i3;
        int i4 = this.f5201i;
        if (i4 == 0) {
            i4 = this.f5200h;
        }
        this.f5201i = i4;
    }

    private void a(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, me.relex.circleindicator.c.CircleIndicator);
        this.f5196d = typedArrayObtainStyledAttributes.getDimensionPixelSize(me.relex.circleindicator.c.CircleIndicator_ci_width, -1);
        this.f5197e = typedArrayObtainStyledAttributes.getDimensionPixelSize(me.relex.circleindicator.c.CircleIndicator_ci_height, -1);
        this.f5195c = typedArrayObtainStyledAttributes.getDimensionPixelSize(me.relex.circleindicator.c.CircleIndicator_ci_margin, -1);
        this.f5198f = typedArrayObtainStyledAttributes.getResourceId(me.relex.circleindicator.c.CircleIndicator_ci_animator, me.relex.circleindicator.a.scale_with_alpha);
        this.f5199g = typedArrayObtainStyledAttributes.getResourceId(me.relex.circleindicator.c.CircleIndicator_ci_animator_reverse, 0);
        this.f5200h = typedArrayObtainStyledAttributes.getResourceId(me.relex.circleindicator.c.CircleIndicator_ci_drawable, me.relex.circleindicator.b.white_radius);
        this.f5201i = typedArrayObtainStyledAttributes.getResourceId(me.relex.circleindicator.c.CircleIndicator_ci_drawable_unselected, this.f5200h);
        setOrientation(typedArrayObtainStyledAttributes.getInt(me.relex.circleindicator.c.CircleIndicator_ci_orientation, -1) == 1 ? 1 : 0);
        int i2 = typedArrayObtainStyledAttributes.getInt(me.relex.circleindicator.c.CircleIndicator_ci_gravity, -1);
        if (i2 < 0) {
            i2 = 17;
        }
        setGravity(i2);
        typedArrayObtainStyledAttributes.recycle();
    }

    private Animator b(Context context) {
        int i2 = this.f5199g;
        if (i2 != 0) {
            return AnimatorInflater.loadAnimator(context, i2);
        }
        Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(context, this.f5198f);
        animatorLoadAnimator.setInterpolator(new c(this, null));
        return animatorLoadAnimator;
    }

    private void b(Context context, AttributeSet attributeSet) {
        a(context, attributeSet);
        a(context);
    }

    private Animator c(Context context) {
        return AnimatorInflater.loadAnimator(context, this.f5198f);
    }

    public int a(float f2) {
        return (int) ((f2 * getResources().getDisplayMetrics().density) + 0.5f);
    }

    public DataSetObserver getDataSetObserver() {
        return this.p;
    }

    @Deprecated
    public void setOnPageChangeListener(ViewPager.j jVar) {
        ViewPager viewPager = this.f5194b;
        if (viewPager == null) {
            throw new NullPointerException("can not find Viewpager , setViewPager first");
        }
        viewPager.b(jVar);
        this.f5194b.a(jVar);
    }

    public void setViewPager(ViewPager viewPager) {
        this.f5194b = viewPager;
        ViewPager viewPager2 = this.f5194b;
        if (viewPager2 == null || viewPager2.getAdapter() == null) {
            return;
        }
        this.n = -1;
        a();
        this.f5194b.b(this.o);
        this.f5194b.a(this.o);
        this.o.onPageSelected(this.f5194b.getCurrentItem());
    }
}
