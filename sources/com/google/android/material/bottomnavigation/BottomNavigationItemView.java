package com.google.android.material.bottomnavigation;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.view.menu.k;
import androidx.appcompat.view.menu.q;
import androidx.appcompat.widget.s0;
import androidx.core.graphics.drawable.a;
import androidx.core.widget.i;
import b.h.o.p;
import b.h.o.s;

/* JADX INFO: loaded from: classes.dex */
public class BottomNavigationItemView extends FrameLayout implements q.a {
    private static final int[] CHECKED_STATE_SET = {R.attr.state_checked};
    public static final int INVALID_ITEM_POSITION = -1;
    private final int defaultMargin;
    private ImageView icon;
    private ColorStateList iconTint;
    private boolean isShifting;
    private k itemData;
    private int itemPosition;
    private int labelVisibilityMode;
    private final TextView largeLabel;
    private float scaleDownFactor;
    private float scaleUpFactor;
    private float shiftAmount;
    private final TextView smallLabel;

    public BottomNavigationItemView(Context context) {
        this(context, null);
    }

    public BottomNavigationItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BottomNavigationItemView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.itemPosition = -1;
        Resources resources = getResources();
        LayoutInflater.from(context).inflate(com.google.android.material.R.layout.design_bottom_navigation_item, (ViewGroup) this, true);
        setBackgroundResource(com.google.android.material.R.drawable.design_bottom_navigation_item_background);
        this.defaultMargin = resources.getDimensionPixelSize(com.google.android.material.R.dimen.design_bottom_navigation_margin);
        this.icon = (ImageView) findViewById(com.google.android.material.R.id.icon);
        this.smallLabel = (TextView) findViewById(com.google.android.material.R.id.smallLabel);
        this.largeLabel = (TextView) findViewById(com.google.android.material.R.id.largeLabel);
        s.f(this.smallLabel, 2);
        s.f(this.largeLabel, 2);
        setFocusable(true);
        calculateTextScaleFactors(this.smallLabel.getTextSize(), this.largeLabel.getTextSize());
    }

    private void calculateTextScaleFactors(float f2, float f3) {
        this.shiftAmount = f2 - f3;
        this.scaleUpFactor = (f3 * 1.0f) / f2;
        this.scaleDownFactor = (f2 * 1.0f) / f3;
    }

    private void setViewLayoutParams(View view, int i2, int i3) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.topMargin = i2;
        layoutParams.gravity = i3;
        view.setLayoutParams(layoutParams);
    }

    private void setViewValues(View view, float f2, float f3, int i2) {
        view.setScaleX(f2);
        view.setScaleY(f3);
        view.setVisibility(i2);
    }

    @Override // androidx.appcompat.view.menu.q.a
    public k getItemData() {
        return this.itemData;
    }

    public int getItemPosition() {
        return this.itemPosition;
    }

    @Override // androidx.appcompat.view.menu.q.a
    public void initialize(k kVar, int i2) {
        this.itemData = kVar;
        setCheckable(kVar.isCheckable());
        setChecked(kVar.isChecked());
        setEnabled(kVar.isEnabled());
        setIcon(kVar.getIcon());
        setTitle(kVar.getTitle());
        setId(kVar.getItemId());
        if (!TextUtils.isEmpty(kVar.getContentDescription())) {
            setContentDescription(kVar.getContentDescription());
        }
        s0.a(this, kVar.getTooltipText());
        setVisibility(kVar.isVisible() ? 0 : 8);
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i2) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        k kVar = this.itemData;
        if (kVar != null && kVar.isCheckable() && this.itemData.isChecked()) {
            FrameLayout.mergeDrawableStates(iArrOnCreateDrawableState, CHECKED_STATE_SET);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // androidx.appcompat.view.menu.q.a
    public boolean prefersCondensedTitle() {
        return false;
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x008c A[PHI: r0 r1
      0x008c: PHI (r0v10 android.widget.ImageView) = (r0v6 android.widget.ImageView), (r0v18 android.widget.ImageView) binds: [B:21:0x00ab, B:14:0x008a] A[DONT_GENERATE, DONT_INLINE]
      0x008c: PHI (r1v13 int) = (r1v11 int), (r1v21 int) binds: [B:21:0x00ab, B:14:0x008a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0095 A[PHI: r0 r1
      0x0095: PHI (r0v7 android.widget.ImageView) = (r0v6 android.widget.ImageView), (r0v18 android.widget.ImageView) binds: [B:21:0x00ab, B:14:0x008a] A[DONT_GENERATE, DONT_INLINE]
      0x0095: PHI (r1v12 int) = (r1v11 int), (r1v21 int) binds: [B:21:0x00ab, B:14:0x008a] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void setChecked(boolean r10) {
        /*
            r9 = this;
            android.widget.TextView r0 = r9.largeLabel
            int r1 = r0.getWidth()
            r2 = 2
            int r1 = r1 / r2
            float r1 = (float) r1
            r0.setPivotX(r1)
            android.widget.TextView r0 = r9.largeLabel
            int r1 = r0.getBaseline()
            float r1 = (float) r1
            r0.setPivotY(r1)
            android.widget.TextView r0 = r9.smallLabel
            int r1 = r0.getWidth()
            int r1 = r1 / r2
            float r1 = (float) r1
            r0.setPivotX(r1)
            android.widget.TextView r0 = r9.smallLabel
            int r1 = r0.getBaseline()
            float r1 = (float) r1
            r0.setPivotY(r1)
            int r0 = r9.labelVisibilityMode
            r1 = -1
            r3 = 17
            r4 = 1056964608(0x3f000000, float:0.5)
            r5 = 0
            r6 = 49
            r7 = 4
            r8 = 1065353216(0x3f800000, float:1.0)
            if (r0 == r1) goto La3
            if (r0 == 0) goto L86
            r1 = 1
            if (r0 == r1) goto L57
            if (r0 == r2) goto L43
            goto Lb1
        L43:
            android.widget.ImageView r0 = r9.icon
            int r1 = r9.defaultMargin
            r9.setViewLayoutParams(r0, r1, r3)
            android.widget.TextView r0 = r9.largeLabel
            r1 = 8
            r0.setVisibility(r1)
            android.widget.TextView r0 = r9.smallLabel
            r0.setVisibility(r1)
            goto Lb1
        L57:
            if (r10 == 0) goto L72
        L59:
            android.widget.ImageView r0 = r9.icon
            int r1 = r9.defaultMargin
            float r1 = (float) r1
            float r2 = r9.shiftAmount
            float r1 = r1 + r2
            int r1 = (int) r1
            r9.setViewLayoutParams(r0, r1, r6)
            android.widget.TextView r0 = r9.largeLabel
            r9.setViewValues(r0, r8, r8, r5)
            android.widget.TextView r0 = r9.smallLabel
            float r1 = r9.scaleUpFactor
            r9.setViewValues(r0, r1, r1, r7)
            goto Lb1
        L72:
            android.widget.ImageView r0 = r9.icon
            int r1 = r9.defaultMargin
            r9.setViewLayoutParams(r0, r1, r6)
            android.widget.TextView r0 = r9.largeLabel
            float r1 = r9.scaleDownFactor
            r9.setViewValues(r0, r1, r1, r7)
            android.widget.TextView r0 = r9.smallLabel
            r9.setViewValues(r0, r8, r8, r5)
            goto Lb1
        L86:
            android.widget.ImageView r0 = r9.icon
            int r1 = r9.defaultMargin
            if (r10 == 0) goto L95
        L8c:
            r9.setViewLayoutParams(r0, r1, r6)
            android.widget.TextView r0 = r9.largeLabel
            r9.setViewValues(r0, r8, r8, r5)
            goto L9d
        L95:
            r9.setViewLayoutParams(r0, r1, r3)
            android.widget.TextView r0 = r9.largeLabel
            r9.setViewValues(r0, r4, r4, r7)
        L9d:
            android.widget.TextView r0 = r9.smallLabel
            r0.setVisibility(r7)
            goto Lb1
        La3:
            boolean r0 = r9.isShifting
            if (r0 == 0) goto Lae
            android.widget.ImageView r0 = r9.icon
            int r1 = r9.defaultMargin
            if (r10 == 0) goto L95
            goto L8c
        Lae:
            if (r10 == 0) goto L72
            goto L59
        Lb1:
            r9.refreshDrawableState()
            r9.setSelected(r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomnavigation.BottomNavigationItemView.setChecked(boolean):void");
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.smallLabel.setEnabled(z);
        this.largeLabel.setEnabled(z);
        this.icon.setEnabled(z);
        s.a(this, z ? p.a(getContext(), 1002) : null);
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                drawable = constantState.newDrawable();
            }
            drawable = a.i(drawable).mutate();
            a.a(drawable, this.iconTint);
        }
        this.icon.setImageDrawable(drawable);
    }

    public void setIconSize(int i2) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.icon.getLayoutParams();
        layoutParams.width = i2;
        layoutParams.height = i2;
        this.icon.setLayoutParams(layoutParams);
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.iconTint = colorStateList;
        k kVar = this.itemData;
        if (kVar != null) {
            setIcon(kVar.getIcon());
        }
    }

    public void setItemBackground(int i2) {
        setItemBackground(i2 == 0 ? null : androidx.core.content.a.c(getContext(), i2));
    }

    public void setItemBackground(Drawable drawable) {
        s.a(this, drawable);
    }

    public void setItemPosition(int i2) {
        this.itemPosition = i2;
    }

    public void setLabelVisibilityMode(int i2) {
        if (this.labelVisibilityMode != i2) {
            this.labelVisibilityMode = i2;
            if (this.itemData != null) {
                setChecked(this.itemData.isChecked());
            }
        }
    }

    public void setShifting(boolean z) {
        if (this.isShifting != z) {
            this.isShifting = z;
            if (this.itemData != null) {
                setChecked(this.itemData.isChecked());
            }
        }
    }

    public void setShortcut(boolean z, char c2) {
    }

    public void setTextAppearanceActive(int i2) {
        i.d(this.largeLabel, i2);
        calculateTextScaleFactors(this.smallLabel.getTextSize(), this.largeLabel.getTextSize());
    }

    public void setTextAppearanceInactive(int i2) {
        i.d(this.smallLabel, i2);
        calculateTextScaleFactors(this.smallLabel.getTextSize(), this.largeLabel.getTextSize());
    }

    public void setTextColor(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.smallLabel.setTextColor(colorStateList);
            this.largeLabel.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        this.smallLabel.setText(charSequence);
        this.largeLabel.setText(charSequence);
        k kVar = this.itemData;
        if (kVar == null || TextUtils.isEmpty(kVar.getContentDescription())) {
            setContentDescription(charSequence);
        }
    }

    public boolean showsIcon() {
        return true;
    }
}
