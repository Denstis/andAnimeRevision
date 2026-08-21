package androidx.cardview.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes.dex */
public class CardView extends FrameLayout {
    private static final int[] COLOR_BACKGROUND_ATTR = {R.attr.colorBackground};
    private static final e IMPL;
    private final d mCardViewDelegate;
    private boolean mCompatPadding;
    final Rect mContentPadding;
    private boolean mPreventCornerOverlap;
    final Rect mShadowBounds;
    int mUserSetMinHeight;
    int mUserSetMinWidth;

    class a implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Drawable f725a;

        a() {
        }

        @Override // androidx.cardview.widget.d
        public void a(int i2, int i3) {
            CardView cardView = CardView.this;
            if (i2 > cardView.mUserSetMinWidth) {
                CardView.super.setMinimumWidth(i2);
            }
            CardView cardView2 = CardView.this;
            if (i3 > cardView2.mUserSetMinHeight) {
                CardView.super.setMinimumHeight(i3);
            }
        }

        @Override // androidx.cardview.widget.d
        public void a(Drawable drawable) {
            this.f725a = drawable;
            CardView.this.setBackgroundDrawable(drawable);
        }

        @Override // androidx.cardview.widget.d
        public boolean a() {
            return CardView.this.getPreventCornerOverlap();
        }

        @Override // androidx.cardview.widget.d
        public boolean b() {
            return CardView.this.getUseCompatPadding();
        }

        @Override // androidx.cardview.widget.d
        public Drawable c() {
            return this.f725a;
        }

        @Override // androidx.cardview.widget.d
        public View d() {
            return CardView.this;
        }

        @Override // androidx.cardview.widget.d
        public void setShadowPadding(int i2, int i3, int i4, int i5) {
            CardView.this.mShadowBounds.set(i2, i3, i4, i5);
            CardView cardView = CardView.this;
            Rect rect = cardView.mContentPadding;
            CardView.super.setPadding(i2 + rect.left, i3 + rect.top, i4 + rect.right, i5 + rect.bottom);
        }
    }

    static {
        int i2 = Build.VERSION.SDK_INT;
        IMPL = i2 >= 21 ? new b() : i2 >= 17 ? new androidx.cardview.widget.a() : new c();
        IMPL.a();
    }

    public CardView(Context context) {
        this(context, null);
    }

    public CardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, b.d.a.cardViewStyle);
    }

    public CardView(Context context, AttributeSet attributeSet, int i2) {
        Resources resources;
        int i3;
        ColorStateList colorStateListValueOf;
        super(context, attributeSet, i2);
        this.mContentPadding = new Rect();
        this.mShadowBounds = new Rect();
        this.mCardViewDelegate = new a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b.d.e.CardView, i2, b.d.d.CardView);
        if (typedArrayObtainStyledAttributes.hasValue(b.d.e.CardView_cardBackgroundColor)) {
            colorStateListValueOf = typedArrayObtainStyledAttributes.getColorStateList(b.d.e.CardView_cardBackgroundColor);
        } else {
            TypedArray typedArrayObtainStyledAttributes2 = getContext().obtainStyledAttributes(COLOR_BACKGROUND_ATTR);
            int color = typedArrayObtainStyledAttributes2.getColor(0, 0);
            typedArrayObtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color, fArr);
            if (fArr[2] > 0.5f) {
                resources = getResources();
                i3 = b.d.b.cardview_light_background;
            } else {
                resources = getResources();
                i3 = b.d.b.cardview_dark_background;
            }
            colorStateListValueOf = ColorStateList.valueOf(resources.getColor(i3));
        }
        ColorStateList colorStateList = colorStateListValueOf;
        float dimension = typedArrayObtainStyledAttributes.getDimension(b.d.e.CardView_cardCornerRadius, 0.0f);
        float dimension2 = typedArrayObtainStyledAttributes.getDimension(b.d.e.CardView_cardElevation, 0.0f);
        float dimension3 = typedArrayObtainStyledAttributes.getDimension(b.d.e.CardView_cardMaxElevation, 0.0f);
        this.mCompatPadding = typedArrayObtainStyledAttributes.getBoolean(b.d.e.CardView_cardUseCompatPadding, false);
        this.mPreventCornerOverlap = typedArrayObtainStyledAttributes.getBoolean(b.d.e.CardView_cardPreventCornerOverlap, true);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(b.d.e.CardView_contentPadding, 0);
        this.mContentPadding.left = typedArrayObtainStyledAttributes.getDimensionPixelSize(b.d.e.CardView_contentPaddingLeft, dimensionPixelSize);
        this.mContentPadding.top = typedArrayObtainStyledAttributes.getDimensionPixelSize(b.d.e.CardView_contentPaddingTop, dimensionPixelSize);
        this.mContentPadding.right = typedArrayObtainStyledAttributes.getDimensionPixelSize(b.d.e.CardView_contentPaddingRight, dimensionPixelSize);
        this.mContentPadding.bottom = typedArrayObtainStyledAttributes.getDimensionPixelSize(b.d.e.CardView_contentPaddingBottom, dimensionPixelSize);
        float f2 = dimension2 > dimension3 ? dimension2 : dimension3;
        this.mUserSetMinWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(b.d.e.CardView_android_minWidth, 0);
        this.mUserSetMinHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(b.d.e.CardView_android_minHeight, 0);
        typedArrayObtainStyledAttributes.recycle();
        IMPL.a(this.mCardViewDelegate, context, colorStateList, dimension, dimension2, f2);
    }

    public ColorStateList getCardBackgroundColor() {
        return IMPL.e(this.mCardViewDelegate);
    }

    public float getCardElevation() {
        return IMPL.a(this.mCardViewDelegate);
    }

    public int getContentPaddingBottom() {
        return this.mContentPadding.bottom;
    }

    public int getContentPaddingLeft() {
        return this.mContentPadding.left;
    }

    public int getContentPaddingRight() {
        return this.mContentPadding.right;
    }

    public int getContentPaddingTop() {
        return this.mContentPadding.top;
    }

    public float getMaxCardElevation() {
        return IMPL.d(this.mCardViewDelegate);
    }

    public boolean getPreventCornerOverlap() {
        return this.mPreventCornerOverlap;
    }

    public float getRadius() {
        return IMPL.b(this.mCardViewDelegate);
    }

    public boolean getUseCompatPadding() {
        return this.mCompatPadding;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i2, int i3) {
        if (!(IMPL instanceof b)) {
            int mode = View.MeasureSpec.getMode(i2);
            if (mode == Integer.MIN_VALUE || mode == 1073741824) {
                i2 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(IMPL.h(this.mCardViewDelegate)), View.MeasureSpec.getSize(i2)), mode);
            }
            int mode2 = View.MeasureSpec.getMode(i3);
            if (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) {
                i3 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(IMPL.g(this.mCardViewDelegate)), View.MeasureSpec.getSize(i3)), mode2);
            }
        }
        super.onMeasure(i2, i3);
    }

    public void setCardBackgroundColor(int i2) {
        IMPL.a(this.mCardViewDelegate, ColorStateList.valueOf(i2));
    }

    public void setCardBackgroundColor(ColorStateList colorStateList) {
        IMPL.a(this.mCardViewDelegate, colorStateList);
    }

    public void setCardElevation(float f2) {
        IMPL.b(this.mCardViewDelegate, f2);
    }

    public void setContentPadding(int i2, int i3, int i4, int i5) {
        this.mContentPadding.set(i2, i3, i4, i5);
        IMPL.f(this.mCardViewDelegate);
    }

    public void setMaxCardElevation(float f2) {
        IMPL.c(this.mCardViewDelegate, f2);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i2) {
        this.mUserSetMinHeight = i2;
        super.setMinimumHeight(i2);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i2) {
        this.mUserSetMinWidth = i2;
        super.setMinimumWidth(i2);
    }

    @Override // android.view.View
    public void setPadding(int i2, int i3, int i4, int i5) {
    }

    @Override // android.view.View
    public void setPaddingRelative(int i2, int i3, int i4, int i5) {
    }

    public void setPreventCornerOverlap(boolean z) {
        if (z != this.mPreventCornerOverlap) {
            this.mPreventCornerOverlap = z;
            IMPL.i(this.mCardViewDelegate);
        }
    }

    public void setRadius(float f2) {
        IMPL.a(this.mCardViewDelegate, f2);
    }

    public void setUseCompatPadding(boolean z) {
        if (this.mCompatPadding != z) {
            this.mCompatPadding = z;
            IMPL.c(this.mCardViewDelegate);
        }
    }
}
