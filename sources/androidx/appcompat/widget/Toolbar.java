package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.a;
import androidx.appcompat.view.menu.h;
import androidx.appcompat.view.menu.p;
import androidx.appcompat.widget.ActionMenuView;
import com.google.android.material.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Toolbar extends ViewGroup {
    private static final String TAG = "Toolbar";
    private p.a mActionMenuPresenterCallback;
    int mButtonGravity;
    ImageButton mCollapseButtonView;
    private CharSequence mCollapseDescription;
    private Drawable mCollapseIcon;
    private boolean mCollapsible;
    private int mContentInsetEndWithActions;
    private int mContentInsetStartWithNavigation;
    private i0 mContentInsets;
    private boolean mEatingHover;
    private boolean mEatingTouch;
    View mExpandedActionView;
    private d mExpandedMenuPresenter;
    private int mGravity;
    private final ArrayList<View> mHiddenViews;
    private ImageView mLogoView;
    private int mMaxButtonHeight;
    private h.a mMenuBuilderCallback;
    private ActionMenuView mMenuView;
    private final ActionMenuView.e mMenuViewItemClickListener;
    private ImageButton mNavButtonView;
    f mOnMenuItemClickListener;
    private androidx.appcompat.widget.c mOuterActionMenuPresenter;
    private Context mPopupContext;
    private int mPopupTheme;
    private final Runnable mShowOverflowMenuRunnable;
    private CharSequence mSubtitleText;
    private int mSubtitleTextAppearance;
    private int mSubtitleTextColor;
    private TextView mSubtitleTextView;
    private final int[] mTempMargins;
    private final ArrayList<View> mTempViews;
    private int mTitleMarginBottom;
    private int mTitleMarginEnd;
    private int mTitleMarginStart;
    private int mTitleMarginTop;
    private CharSequence mTitleText;
    private int mTitleTextAppearance;
    private int mTitleTextColor;
    private TextView mTitleTextView;
    private r0 mWrapper;

    class a implements ActionMenuView.e {
        a() {
        }

        @Override // androidx.appcompat.widget.ActionMenuView.e
        public boolean onMenuItemClick(MenuItem menuItem) {
            f fVar = Toolbar.this.mOnMenuItemClickListener;
            if (fVar != null) {
                return fVar.onMenuItemClick(menuItem);
            }
            return false;
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Toolbar.this.showOverflowMenu();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Toolbar.this.collapseActionView();
        }
    }

    private class d implements androidx.appcompat.view.menu.p {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        androidx.appcompat.view.menu.h f467b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        androidx.appcompat.view.menu.k f468c;

        d() {
        }

        @Override // androidx.appcompat.view.menu.p
        public boolean collapseItemActionView(androidx.appcompat.view.menu.h hVar, androidx.appcompat.view.menu.k kVar) {
            KeyEvent.Callback callback = Toolbar.this.mExpandedActionView;
            if (callback instanceof b.a.n.c) {
                ((b.a.n.c) callback).b();
            }
            Toolbar toolbar = Toolbar.this;
            toolbar.removeView(toolbar.mExpandedActionView);
            Toolbar toolbar2 = Toolbar.this;
            toolbar2.removeView(toolbar2.mCollapseButtonView);
            Toolbar toolbar3 = Toolbar.this;
            toolbar3.mExpandedActionView = null;
            toolbar3.addChildrenForExpandedActionView();
            this.f468c = null;
            Toolbar.this.requestLayout();
            kVar.a(false);
            return true;
        }

        @Override // androidx.appcompat.view.menu.p
        public boolean expandItemActionView(androidx.appcompat.view.menu.h hVar, androidx.appcompat.view.menu.k kVar) {
            Toolbar.this.ensureCollapseButtonView();
            ViewParent parent = Toolbar.this.mCollapseButtonView.getParent();
            Toolbar toolbar = Toolbar.this;
            if (parent != toolbar) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(toolbar.mCollapseButtonView);
                }
                Toolbar toolbar2 = Toolbar.this;
                toolbar2.addView(toolbar2.mCollapseButtonView);
            }
            Toolbar.this.mExpandedActionView = kVar.getActionView();
            this.f468c = kVar;
            ViewParent parent2 = Toolbar.this.mExpandedActionView.getParent();
            Toolbar toolbar3 = Toolbar.this;
            if (parent2 != toolbar3) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(toolbar3.mExpandedActionView);
                }
                e eVarGenerateDefaultLayoutParams = Toolbar.this.generateDefaultLayoutParams();
                Toolbar toolbar4 = Toolbar.this;
                eVarGenerateDefaultLayoutParams.f127a = 8388611 | (toolbar4.mButtonGravity & R.styleable.AppCompatTheme_windowActionBarOverlay);
                eVarGenerateDefaultLayoutParams.f470b = 2;
                toolbar4.mExpandedActionView.setLayoutParams(eVarGenerateDefaultLayoutParams);
                Toolbar toolbar5 = Toolbar.this;
                toolbar5.addView(toolbar5.mExpandedActionView);
            }
            Toolbar.this.removeChildrenForExpandedActionView();
            Toolbar.this.requestLayout();
            kVar.a(true);
            KeyEvent.Callback callback = Toolbar.this.mExpandedActionView;
            if (callback instanceof b.a.n.c) {
                ((b.a.n.c) callback).a();
            }
            return true;
        }

        @Override // androidx.appcompat.view.menu.p
        public boolean flagActionItems() {
            return false;
        }

        @Override // androidx.appcompat.view.menu.p
        public int getId() {
            return 0;
        }

        @Override // androidx.appcompat.view.menu.p
        public void initForMenu(Context context, androidx.appcompat.view.menu.h hVar) {
            androidx.appcompat.view.menu.k kVar;
            androidx.appcompat.view.menu.h hVar2 = this.f467b;
            if (hVar2 != null && (kVar = this.f468c) != null) {
                hVar2.collapseItemActionView(kVar);
            }
            this.f467b = hVar;
        }

        @Override // androidx.appcompat.view.menu.p
        public void onCloseMenu(androidx.appcompat.view.menu.h hVar, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.p
        public void onRestoreInstanceState(Parcelable parcelable) {
        }

        @Override // androidx.appcompat.view.menu.p
        public Parcelable onSaveInstanceState() {
            return null;
        }

        @Override // androidx.appcompat.view.menu.p
        public boolean onSubMenuSelected(androidx.appcompat.view.menu.v vVar) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.p
        public void updateMenuView(boolean z) {
            if (this.f468c != null) {
                androidx.appcompat.view.menu.h hVar = this.f467b;
                boolean z2 = false;
                if (hVar != null) {
                    int size = hVar.size();
                    int i2 = 0;
                    while (true) {
                        if (i2 >= size) {
                            break;
                        }
                        if (this.f467b.getItem(i2) == this.f468c) {
                            z2 = true;
                            break;
                        }
                        i2++;
                    }
                }
                if (z2) {
                    return;
                }
                collapseItemActionView(this.f467b, this.f468c);
            }
        }
    }

    public static class e extends a.C0008a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f470b;

        public e(int i2, int i3) {
            super(i2, i3);
            this.f470b = 0;
            this.f127a = 8388627;
        }

        public e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f470b = 0;
        }

        public e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f470b = 0;
        }

        public e(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f470b = 0;
            a(marginLayoutParams);
        }

        public e(a.C0008a c0008a) {
            super(c0008a);
            this.f470b = 0;
        }

        public e(e eVar) {
            super((a.C0008a) eVar);
            this.f470b = 0;
            this.f470b = eVar.f470b;
        }

        void a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            ((ViewGroup.MarginLayoutParams) this).leftMargin = marginLayoutParams.leftMargin;
            ((ViewGroup.MarginLayoutParams) this).topMargin = marginLayoutParams.topMargin;
            ((ViewGroup.MarginLayoutParams) this).rightMargin = marginLayoutParams.rightMargin;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = marginLayoutParams.bottomMargin;
        }
    }

    public interface f {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public static class g extends b.j.a.a {
        public static final Parcelable.Creator<g> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f471b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f472c;

        static class a implements Parcelable.ClassLoaderCreator<g> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            public g createFromParcel(Parcel parcel) {
                return new g(parcel, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public g createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new g(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public g[] newArray(int i2) {
                return new g[i2];
            }
        }

        public g(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f471b = parcel.readInt();
            this.f472c = parcel.readInt() != 0;
        }

        public g(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // b.j.a.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f471b);
            parcel.writeInt(this.f472c ? 1 : 0);
        }
    }

    public Toolbar(Context context) {
        this(context, null);
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, b.a.a.toolbarStyle);
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mGravity = 8388627;
        this.mTempViews = new ArrayList<>();
        this.mHiddenViews = new ArrayList<>();
        this.mTempMargins = new int[2];
        this.mMenuViewItemClickListener = new a();
        this.mShowOverflowMenuRunnable = new b();
        q0 q0VarA = q0.a(getContext(), attributeSet, b.a.j.Toolbar, i2, 0);
        this.mTitleTextAppearance = q0VarA.g(b.a.j.Toolbar_titleTextAppearance, 0);
        this.mSubtitleTextAppearance = q0VarA.g(b.a.j.Toolbar_subtitleTextAppearance, 0);
        this.mGravity = q0VarA.e(b.a.j.Toolbar_android_gravity, this.mGravity);
        this.mButtonGravity = q0VarA.e(b.a.j.Toolbar_buttonGravity, 48);
        int iB = q0VarA.b(b.a.j.Toolbar_titleMargin, 0);
        iB = q0VarA.g(b.a.j.Toolbar_titleMargins) ? q0VarA.b(b.a.j.Toolbar_titleMargins, iB) : iB;
        this.mTitleMarginBottom = iB;
        this.mTitleMarginTop = iB;
        this.mTitleMarginEnd = iB;
        this.mTitleMarginStart = iB;
        int iB2 = q0VarA.b(b.a.j.Toolbar_titleMarginStart, -1);
        if (iB2 >= 0) {
            this.mTitleMarginStart = iB2;
        }
        int iB3 = q0VarA.b(b.a.j.Toolbar_titleMarginEnd, -1);
        if (iB3 >= 0) {
            this.mTitleMarginEnd = iB3;
        }
        int iB4 = q0VarA.b(b.a.j.Toolbar_titleMarginTop, -1);
        if (iB4 >= 0) {
            this.mTitleMarginTop = iB4;
        }
        int iB5 = q0VarA.b(b.a.j.Toolbar_titleMarginBottom, -1);
        if (iB5 >= 0) {
            this.mTitleMarginBottom = iB5;
        }
        this.mMaxButtonHeight = q0VarA.c(b.a.j.Toolbar_maxButtonHeight, -1);
        int iB6 = q0VarA.b(b.a.j.Toolbar_contentInsetStart, Integer.MIN_VALUE);
        int iB7 = q0VarA.b(b.a.j.Toolbar_contentInsetEnd, Integer.MIN_VALUE);
        int iC = q0VarA.c(b.a.j.Toolbar_contentInsetLeft, 0);
        int iC2 = q0VarA.c(b.a.j.Toolbar_contentInsetRight, 0);
        ensureContentInsets();
        this.mContentInsets.a(iC, iC2);
        if (iB6 != Integer.MIN_VALUE || iB7 != Integer.MIN_VALUE) {
            this.mContentInsets.b(iB6, iB7);
        }
        this.mContentInsetStartWithNavigation = q0VarA.b(b.a.j.Toolbar_contentInsetStartWithNavigation, Integer.MIN_VALUE);
        this.mContentInsetEndWithActions = q0VarA.b(b.a.j.Toolbar_contentInsetEndWithActions, Integer.MIN_VALUE);
        this.mCollapseIcon = q0VarA.b(b.a.j.Toolbar_collapseIcon);
        this.mCollapseDescription = q0VarA.e(b.a.j.Toolbar_collapseContentDescription);
        CharSequence charSequenceE = q0VarA.e(b.a.j.Toolbar_title);
        if (!TextUtils.isEmpty(charSequenceE)) {
            setTitle(charSequenceE);
        }
        CharSequence charSequenceE2 = q0VarA.e(b.a.j.Toolbar_subtitle);
        if (!TextUtils.isEmpty(charSequenceE2)) {
            setSubtitle(charSequenceE2);
        }
        this.mPopupContext = getContext();
        setPopupTheme(q0VarA.g(b.a.j.Toolbar_popupTheme, 0));
        Drawable drawableB = q0VarA.b(b.a.j.Toolbar_navigationIcon);
        if (drawableB != null) {
            setNavigationIcon(drawableB);
        }
        CharSequence charSequenceE3 = q0VarA.e(b.a.j.Toolbar_navigationContentDescription);
        if (!TextUtils.isEmpty(charSequenceE3)) {
            setNavigationContentDescription(charSequenceE3);
        }
        Drawable drawableB2 = q0VarA.b(b.a.j.Toolbar_logo);
        if (drawableB2 != null) {
            setLogo(drawableB2);
        }
        CharSequence charSequenceE4 = q0VarA.e(b.a.j.Toolbar_logoDescription);
        if (!TextUtils.isEmpty(charSequenceE4)) {
            setLogoDescription(charSequenceE4);
        }
        if (q0VarA.g(b.a.j.Toolbar_titleTextColor)) {
            setTitleTextColor(q0VarA.a(b.a.j.Toolbar_titleTextColor, -1));
        }
        if (q0VarA.g(b.a.j.Toolbar_subtitleTextColor)) {
            setSubtitleTextColor(q0VarA.a(b.a.j.Toolbar_subtitleTextColor, -1));
        }
        q0VarA.a();
    }

    private void addCustomViewsWithGravity(List<View> list, int i2) {
        boolean z = b.h.o.s.k(this) == 1;
        int childCount = getChildCount();
        int iA = b.h.o.c.a(i2, b.h.o.s.k(this));
        list.clear();
        if (!z) {
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                e eVar = (e) childAt.getLayoutParams();
                if (eVar.f470b == 0 && shouldLayout(childAt) && getChildHorizontalGravity(eVar.f127a) == iA) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i4 = childCount - 1; i4 >= 0; i4--) {
            View childAt2 = getChildAt(i4);
            e eVar2 = (e) childAt2.getLayoutParams();
            if (eVar2.f470b == 0 && shouldLayout(childAt2) && getChildHorizontalGravity(eVar2.f127a) == iA) {
                list.add(childAt2);
            }
        }
    }

    private void addSystemView(View view, boolean z) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        e eVarGenerateDefaultLayoutParams = layoutParams == null ? generateDefaultLayoutParams() : !checkLayoutParams(layoutParams) ? generateLayoutParams(layoutParams) : (e) layoutParams;
        eVarGenerateDefaultLayoutParams.f470b = 1;
        if (!z || this.mExpandedActionView == null) {
            addView(view, eVarGenerateDefaultLayoutParams);
        } else {
            view.setLayoutParams(eVarGenerateDefaultLayoutParams);
            this.mHiddenViews.add(view);
        }
    }

    private void ensureContentInsets() {
        if (this.mContentInsets == null) {
            this.mContentInsets = new i0();
        }
    }

    private void ensureLogoView() {
        if (this.mLogoView == null) {
            this.mLogoView = new AppCompatImageView(getContext());
        }
    }

    private void ensureMenu() {
        ensureMenuView();
        if (this.mMenuView.i() == null) {
            androidx.appcompat.view.menu.h hVar = (androidx.appcompat.view.menu.h) this.mMenuView.getMenu();
            if (this.mExpandedMenuPresenter == null) {
                this.mExpandedMenuPresenter = new d();
            }
            this.mMenuView.setExpandedActionViewsExclusive(true);
            hVar.addMenuPresenter(this.mExpandedMenuPresenter, this.mPopupContext);
        }
    }

    private void ensureMenuView() {
        if (this.mMenuView == null) {
            this.mMenuView = new ActionMenuView(getContext());
            this.mMenuView.setPopupTheme(this.mPopupTheme);
            this.mMenuView.setOnMenuItemClickListener(this.mMenuViewItemClickListener);
            this.mMenuView.a(this.mActionMenuPresenterCallback, this.mMenuBuilderCallback);
            e eVarGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            eVarGenerateDefaultLayoutParams.f127a = 8388613 | (this.mButtonGravity & R.styleable.AppCompatTheme_windowActionBarOverlay);
            this.mMenuView.setLayoutParams(eVarGenerateDefaultLayoutParams);
            addSystemView(this.mMenuView, false);
        }
    }

    private void ensureNavButtonView() {
        if (this.mNavButtonView == null) {
            this.mNavButtonView = new AppCompatImageButton(getContext(), null, b.a.a.toolbarNavigationButtonStyle);
            e eVarGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            eVarGenerateDefaultLayoutParams.f127a = 8388611 | (this.mButtonGravity & R.styleable.AppCompatTheme_windowActionBarOverlay);
            this.mNavButtonView.setLayoutParams(eVarGenerateDefaultLayoutParams);
        }
    }

    private int getChildHorizontalGravity(int i2) {
        int iK = b.h.o.s.k(this);
        int iA = b.h.o.c.a(i2, iK) & 7;
        return (iA == 1 || iA == 3 || iA == 5) ? iA : iK == 1 ? 5 : 3;
    }

    private int getChildTop(View view, int i2) {
        e eVar = (e) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i3 = i2 > 0 ? (measuredHeight - i2) / 2 : 0;
        int childVerticalGravity = getChildVerticalGravity(eVar.f127a);
        if (childVerticalGravity == 48) {
            return getPaddingTop() - i3;
        }
        if (childVerticalGravity == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) eVar).bottomMargin) - i3;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int iMax = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        int i4 = ((ViewGroup.MarginLayoutParams) eVar).topMargin;
        if (iMax < i4) {
            iMax = i4;
        } else {
            int i5 = (((height - paddingBottom) - measuredHeight) - iMax) - paddingTop;
            int i6 = ((ViewGroup.MarginLayoutParams) eVar).bottomMargin;
            if (i5 < i6) {
                iMax = Math.max(0, iMax - (i6 - i5));
            }
        }
        return paddingTop + iMax;
    }

    private int getChildVerticalGravity(int i2) {
        int i3 = i2 & R.styleable.AppCompatTheme_windowActionBarOverlay;
        return (i3 == 16 || i3 == 48 || i3 == 80) ? i3 : this.mGravity & R.styleable.AppCompatTheme_windowActionBarOverlay;
    }

    private int getHorizontalMargins(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return b.h.o.f.b(marginLayoutParams) + b.h.o.f.a(marginLayoutParams);
    }

    private MenuInflater getMenuInflater() {
        return new b.a.n.g(getContext());
    }

    private int getVerticalMargins(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    private int getViewListMeasuredWidth(List<View> list, int[] iArr) {
        int i2 = iArr[0];
        int i3 = iArr[1];
        int size = list.size();
        int i4 = i3;
        int i5 = i2;
        int i6 = 0;
        int measuredWidth = 0;
        while (i6 < size) {
            View view = list.get(i6);
            e eVar = (e) view.getLayoutParams();
            int i7 = ((ViewGroup.MarginLayoutParams) eVar).leftMargin - i5;
            int i8 = ((ViewGroup.MarginLayoutParams) eVar).rightMargin - i4;
            int iMax = Math.max(0, i7);
            int iMax2 = Math.max(0, i8);
            int iMax3 = Math.max(0, -i7);
            int iMax4 = Math.max(0, -i8);
            measuredWidth += iMax + view.getMeasuredWidth() + iMax2;
            i6++;
            i4 = iMax4;
            i5 = iMax3;
        }
        return measuredWidth;
    }

    private boolean isChildOrHidden(View view) {
        return view.getParent() == this || this.mHiddenViews.contains(view);
    }

    private static boolean isCustomView(View view) {
        return ((e) view.getLayoutParams()).f470b == 0;
    }

    private int layoutChildLeft(View view, int i2, int[] iArr, int i3) {
        e eVar = (e) view.getLayoutParams();
        int i4 = ((ViewGroup.MarginLayoutParams) eVar).leftMargin - iArr[0];
        int iMax = i2 + Math.max(0, i4);
        iArr[0] = Math.max(0, -i4);
        int childTop = getChildTop(view, i3);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax, childTop, iMax + measuredWidth, view.getMeasuredHeight() + childTop);
        return iMax + measuredWidth + ((ViewGroup.MarginLayoutParams) eVar).rightMargin;
    }

    private int layoutChildRight(View view, int i2, int[] iArr, int i3) {
        e eVar = (e) view.getLayoutParams();
        int i4 = ((ViewGroup.MarginLayoutParams) eVar).rightMargin - iArr[1];
        int iMax = i2 - Math.max(0, i4);
        iArr[1] = Math.max(0, -i4);
        int childTop = getChildTop(view, i3);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax - measuredWidth, childTop, iMax, view.getMeasuredHeight() + childTop);
        return iMax - (measuredWidth + ((ViewGroup.MarginLayoutParams) eVar).leftMargin);
    }

    private int measureChildCollapseMargins(View view, int i2, int i3, int i4, int i5, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i6 = marginLayoutParams.leftMargin - iArr[0];
        int i7 = marginLayoutParams.rightMargin - iArr[1];
        int iMax = Math.max(0, i6) + Math.max(0, i7);
        iArr[0] = Math.max(0, -i6);
        iArr[1] = Math.max(0, -i7);
        view.measure(ViewGroup.getChildMeasureSpec(i2, getPaddingLeft() + getPaddingRight() + iMax + i3, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i4, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i5, marginLayoutParams.height));
        return view.getMeasuredWidth() + iMax;
    }

    private void measureChildConstrained(View view, int i2, int i3, int i4, int i5, int i6) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i3, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i4, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i5, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i6 >= 0) {
            if (mode != 0) {
                i6 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i6);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i6, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    private void postShowOverflowMenu() {
        removeCallbacks(this.mShowOverflowMenuRunnable);
        post(this.mShowOverflowMenuRunnable);
    }

    private boolean shouldCollapse() {
        if (!this.mCollapsible) {
            return false;
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (shouldLayout(childAt) && childAt.getMeasuredWidth() > 0 && childAt.getMeasuredHeight() > 0) {
                return false;
            }
        }
        return true;
    }

    private boolean shouldLayout(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    void addChildrenForExpandedActionView() {
        for (int size = this.mHiddenViews.size() - 1; size >= 0; size--) {
            addView(this.mHiddenViews.get(size));
        }
        this.mHiddenViews.clear();
    }

    public boolean canShowOverflowMenu() {
        ActionMenuView actionMenuView;
        return getVisibility() == 0 && (actionMenuView = this.mMenuView) != null && actionMenuView.h();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof e);
    }

    public void collapseActionView() {
        d dVar = this.mExpandedMenuPresenter;
        androidx.appcompat.view.menu.k kVar = dVar == null ? null : dVar.f468c;
        if (kVar != null) {
            kVar.collapseActionView();
        }
    }

    public void dismissPopupMenus() {
        ActionMenuView actionMenuView = this.mMenuView;
        if (actionMenuView != null) {
            actionMenuView.c();
        }
    }

    void ensureCollapseButtonView() {
        if (this.mCollapseButtonView == null) {
            this.mCollapseButtonView = new AppCompatImageButton(getContext(), null, b.a.a.toolbarNavigationButtonStyle);
            this.mCollapseButtonView.setImageDrawable(this.mCollapseIcon);
            this.mCollapseButtonView.setContentDescription(this.mCollapseDescription);
            e eVarGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            eVarGenerateDefaultLayoutParams.f127a = 8388611 | (this.mButtonGravity & R.styleable.AppCompatTheme_windowActionBarOverlay);
            eVarGenerateDefaultLayoutParams.f470b = 2;
            this.mCollapseButtonView.setLayoutParams(eVarGenerateDefaultLayoutParams);
            this.mCollapseButtonView.setOnClickListener(new c());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public e generateDefaultLayoutParams() {
        return new e(-2, -2);
    }

    @Override // android.view.ViewGroup
    public e generateLayoutParams(AttributeSet attributeSet) {
        return new e(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public e generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof e ? new e((e) layoutParams) : layoutParams instanceof a.C0008a ? new e((a.C0008a) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new e((ViewGroup.MarginLayoutParams) layoutParams) : new e(layoutParams);
    }

    public int getContentInsetEnd() {
        i0 i0Var = this.mContentInsets;
        if (i0Var != null) {
            return i0Var.a();
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i2 = this.mContentInsetEndWithActions;
        return i2 != Integer.MIN_VALUE ? i2 : getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        i0 i0Var = this.mContentInsets;
        if (i0Var != null) {
            return i0Var.b();
        }
        return 0;
    }

    public int getContentInsetRight() {
        i0 i0Var = this.mContentInsets;
        if (i0Var != null) {
            return i0Var.c();
        }
        return 0;
    }

    public int getContentInsetStart() {
        i0 i0Var = this.mContentInsets;
        if (i0Var != null) {
            return i0Var.d();
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i2 = this.mContentInsetStartWithNavigation;
        return i2 != Integer.MIN_VALUE ? i2 : getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        androidx.appcompat.view.menu.h hVarI;
        ActionMenuView actionMenuView = this.mMenuView;
        return actionMenuView != null && (hVarI = actionMenuView.i()) != null && hVarI.hasVisibleItems() ? Math.max(getContentInsetEnd(), Math.max(this.mContentInsetEndWithActions, 0)) : getContentInsetEnd();
    }

    public int getCurrentContentInsetLeft() {
        return b.h.o.s.k(this) == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        return b.h.o.s.k(this) == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.mContentInsetStartWithNavigation, 0)) : getContentInsetStart();
    }

    public Drawable getLogo() {
        ImageView imageView = this.mLogoView;
        if (imageView != null) {
            return imageView.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        ImageView imageView = this.mLogoView;
        if (imageView != null) {
            return imageView.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        ensureMenu();
        return this.mMenuView.getMenu();
    }

    public CharSequence getNavigationContentDescription() {
        ImageButton imageButton = this.mNavButtonView;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    public Drawable getNavigationIcon() {
        ImageButton imageButton = this.mNavButtonView;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    androidx.appcompat.widget.c getOuterActionMenuPresenter() {
        return this.mOuterActionMenuPresenter;
    }

    public Drawable getOverflowIcon() {
        ensureMenu();
        return this.mMenuView.getOverflowIcon();
    }

    Context getPopupContext() {
        return this.mPopupContext;
    }

    public int getPopupTheme() {
        return this.mPopupTheme;
    }

    public CharSequence getSubtitle() {
        return this.mSubtitleText;
    }

    public CharSequence getTitle() {
        return this.mTitleText;
    }

    public int getTitleMarginBottom() {
        return this.mTitleMarginBottom;
    }

    public int getTitleMarginEnd() {
        return this.mTitleMarginEnd;
    }

    public int getTitleMarginStart() {
        return this.mTitleMarginStart;
    }

    public int getTitleMarginTop() {
        return this.mTitleMarginTop;
    }

    public z getWrapper() {
        if (this.mWrapper == null) {
            this.mWrapper = new r0(this, true);
        }
        return this.mWrapper;
    }

    public boolean hasExpandedActionView() {
        d dVar = this.mExpandedMenuPresenter;
        return (dVar == null || dVar.f468c == null) ? false : true;
    }

    public boolean hideOverflowMenu() {
        ActionMenuView actionMenuView = this.mMenuView;
        return actionMenuView != null && actionMenuView.e();
    }

    public void inflateMenu(int i2) {
        getMenuInflater().inflate(i2, getMenu());
    }

    public boolean isOverflowMenuShowPending() {
        ActionMenuView actionMenuView = this.mMenuView;
        return actionMenuView != null && actionMenuView.f();
    }

    public boolean isOverflowMenuShowing() {
        ActionMenuView actionMenuView = this.mMenuView;
        return actionMenuView != null && actionMenuView.g();
    }

    public boolean isTitleTruncated() {
        Layout layout;
        TextView textView = this.mTitleTextView;
        if (textView == null || (layout = textView.getLayout()) == null) {
            return false;
        }
        int lineCount = layout.getLineCount();
        for (int i2 = 0; i2 < lineCount; i2++) {
            if (layout.getEllipsisCount(i2) > 0) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.mShowOverflowMenuRunnable);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.mEatingHover = false;
        }
        if (!this.mEatingHover) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.mEatingHover = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.mEatingHover = false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x029c A[LOOP:0: B:109:0x029a->B:110:0x029c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02be A[LOOP:1: B:112:0x02bc->B:113:0x02be, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x02e9  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x02f8 A[LOOP:2: B:121:0x02f6->B:122:0x02f8, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0222  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onLayout(boolean r20, int r21, int r22, int r23, int r24) {
        /*
            Method dump skipped, instruction units count: 781
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i3) {
        char c2;
        char c3;
        int measuredWidth;
        int iMax;
        int iCombineMeasuredStates;
        int measuredWidth2;
        int iCombineMeasuredStates2;
        int iMax2;
        int measuredHeight;
        int[] iArr = this.mTempMargins;
        if (w0.a(this)) {
            c2 = 1;
            c3 = 0;
        } else {
            c2 = 0;
            c3 = 1;
        }
        if (shouldLayout(this.mNavButtonView)) {
            measureChildConstrained(this.mNavButtonView, i2, 0, i3, 0, this.mMaxButtonHeight);
            measuredWidth = this.mNavButtonView.getMeasuredWidth() + getHorizontalMargins(this.mNavButtonView);
            iMax = Math.max(0, this.mNavButtonView.getMeasuredHeight() + getVerticalMargins(this.mNavButtonView));
            iCombineMeasuredStates = View.combineMeasuredStates(0, this.mNavButtonView.getMeasuredState());
        } else {
            measuredWidth = 0;
            iMax = 0;
            iCombineMeasuredStates = 0;
        }
        if (shouldLayout(this.mCollapseButtonView)) {
            measureChildConstrained(this.mCollapseButtonView, i2, 0, i3, 0, this.mMaxButtonHeight);
            measuredWidth = this.mCollapseButtonView.getMeasuredWidth() + getHorizontalMargins(this.mCollapseButtonView);
            iMax = Math.max(iMax, this.mCollapseButtonView.getMeasuredHeight() + getVerticalMargins(this.mCollapseButtonView));
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.mCollapseButtonView.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int iMax3 = 0 + Math.max(currentContentInsetStart, measuredWidth);
        iArr[c2] = Math.max(0, currentContentInsetStart - measuredWidth);
        if (shouldLayout(this.mMenuView)) {
            measureChildConstrained(this.mMenuView, i2, iMax3, i3, 0, this.mMaxButtonHeight);
            measuredWidth2 = this.mMenuView.getMeasuredWidth() + getHorizontalMargins(this.mMenuView);
            iMax = Math.max(iMax, this.mMenuView.getMeasuredHeight() + getVerticalMargins(this.mMenuView));
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.mMenuView.getMeasuredState());
        } else {
            measuredWidth2 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int iMax4 = iMax3 + Math.max(currentContentInsetEnd, measuredWidth2);
        iArr[c3] = Math.max(0, currentContentInsetEnd - measuredWidth2);
        if (shouldLayout(this.mExpandedActionView)) {
            iMax4 += measureChildCollapseMargins(this.mExpandedActionView, i2, iMax4, i3, 0, iArr);
            iMax = Math.max(iMax, this.mExpandedActionView.getMeasuredHeight() + getVerticalMargins(this.mExpandedActionView));
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.mExpandedActionView.getMeasuredState());
        }
        if (shouldLayout(this.mLogoView)) {
            iMax4 += measureChildCollapseMargins(this.mLogoView, i2, iMax4, i3, 0, iArr);
            iMax = Math.max(iMax, this.mLogoView.getMeasuredHeight() + getVerticalMargins(this.mLogoView));
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.mLogoView.getMeasuredState());
        }
        int childCount = getChildCount();
        int iMax5 = iMax;
        int iMeasureChildCollapseMargins = iMax4;
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (((e) childAt.getLayoutParams()).f470b == 0 && shouldLayout(childAt)) {
                iMeasureChildCollapseMargins += measureChildCollapseMargins(childAt, i2, iMeasureChildCollapseMargins, i3, 0, iArr);
                iMax5 = Math.max(iMax5, childAt.getMeasuredHeight() + getVerticalMargins(childAt));
                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, childAt.getMeasuredState());
            }
        }
        int i5 = this.mTitleMarginTop + this.mTitleMarginBottom;
        int i6 = this.mTitleMarginStart + this.mTitleMarginEnd;
        if (shouldLayout(this.mTitleTextView)) {
            measureChildCollapseMargins(this.mTitleTextView, i2, iMeasureChildCollapseMargins + i6, i3, i5, iArr);
            int measuredWidth3 = this.mTitleTextView.getMeasuredWidth() + getHorizontalMargins(this.mTitleTextView);
            measuredHeight = this.mTitleTextView.getMeasuredHeight() + getVerticalMargins(this.mTitleTextView);
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.mTitleTextView.getMeasuredState());
            iMax2 = measuredWidth3;
        } else {
            iCombineMeasuredStates2 = iCombineMeasuredStates;
            iMax2 = 0;
            measuredHeight = 0;
        }
        if (shouldLayout(this.mSubtitleTextView)) {
            iMax2 = Math.max(iMax2, measureChildCollapseMargins(this.mSubtitleTextView, i2, iMeasureChildCollapseMargins + i6, i3, measuredHeight + i5, iArr));
            measuredHeight += this.mSubtitleTextView.getMeasuredHeight() + getVerticalMargins(this.mSubtitleTextView);
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, this.mSubtitleTextView.getMeasuredState());
        }
        int iMax6 = Math.max(iMax5, measuredHeight);
        int paddingLeft = iMeasureChildCollapseMargins + iMax2 + getPaddingLeft() + getPaddingRight();
        int paddingTop = iMax6 + getPaddingTop() + getPaddingBottom();
        int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingLeft, getSuggestedMinimumWidth()), i2, (-16777216) & iCombineMeasuredStates2);
        int iResolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingTop, getSuggestedMinimumHeight()), i3, iCombineMeasuredStates2 << 16);
        if (shouldCollapse()) {
            iResolveSizeAndState2 = 0;
        }
        setMeasuredDimension(iResolveSizeAndState, iResolveSizeAndState2);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem menuItemFindItem;
        if (!(parcelable instanceof g)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        g gVar = (g) parcelable;
        super.onRestoreInstanceState(gVar.getSuperState());
        ActionMenuView actionMenuView = this.mMenuView;
        androidx.appcompat.view.menu.h hVarI = actionMenuView != null ? actionMenuView.i() : null;
        int i2 = gVar.f471b;
        if (i2 != 0 && this.mExpandedMenuPresenter != null && hVarI != null && (menuItemFindItem = hVarI.findItem(i2)) != null) {
            menuItemFindItem.expandActionView();
        }
        if (gVar.f472c) {
            postShowOverflowMenu();
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i2) {
        if (Build.VERSION.SDK_INT >= 17) {
            super.onRtlPropertiesChanged(i2);
        }
        ensureContentInsets();
        this.mContentInsets.a(i2 == 1);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        androidx.appcompat.view.menu.k kVar;
        g gVar = new g(super.onSaveInstanceState());
        d dVar = this.mExpandedMenuPresenter;
        if (dVar != null && (kVar = dVar.f468c) != null) {
            gVar.f471b = kVar.getItemId();
        }
        gVar.f472c = isOverflowMenuShowing();
        return gVar;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.mEatingTouch = false;
        }
        if (!this.mEatingTouch) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.mEatingTouch = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.mEatingTouch = false;
        }
        return true;
    }

    void removeChildrenForExpandedActionView() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (((e) childAt.getLayoutParams()).f470b != 2 && childAt != this.mMenuView) {
                removeViewAt(childCount);
                this.mHiddenViews.add(childAt);
            }
        }
    }

    public void setCollapsible(boolean z) {
        this.mCollapsible = z;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i2) {
        if (i2 < 0) {
            i2 = Integer.MIN_VALUE;
        }
        if (i2 != this.mContentInsetEndWithActions) {
            this.mContentInsetEndWithActions = i2;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i2) {
        if (i2 < 0) {
            i2 = Integer.MIN_VALUE;
        }
        if (i2 != this.mContentInsetStartWithNavigation) {
            this.mContentInsetStartWithNavigation = i2;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetsAbsolute(int i2, int i3) {
        ensureContentInsets();
        this.mContentInsets.a(i2, i3);
    }

    public void setContentInsetsRelative(int i2, int i3) {
        ensureContentInsets();
        this.mContentInsets.b(i2, i3);
    }

    public void setLogo(int i2) {
        setLogo(b.a.k.a.a.c(getContext(), i2));
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            ensureLogoView();
            if (!isChildOrHidden(this.mLogoView)) {
                addSystemView(this.mLogoView, true);
            }
        } else {
            ImageView imageView = this.mLogoView;
            if (imageView != null && isChildOrHidden(imageView)) {
                removeView(this.mLogoView);
                this.mHiddenViews.remove(this.mLogoView);
            }
        }
        ImageView imageView2 = this.mLogoView;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(int i2) {
        setLogoDescription(getContext().getText(i2));
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            ensureLogoView();
        }
        ImageView imageView = this.mLogoView;
        if (imageView != null) {
            imageView.setContentDescription(charSequence);
        }
    }

    public void setMenu(androidx.appcompat.view.menu.h hVar, androidx.appcompat.widget.c cVar) {
        if (hVar == null && this.mMenuView == null) {
            return;
        }
        ensureMenuView();
        androidx.appcompat.view.menu.h hVarI = this.mMenuView.i();
        if (hVarI == hVar) {
            return;
        }
        if (hVarI != null) {
            hVarI.removeMenuPresenter(this.mOuterActionMenuPresenter);
            hVarI.removeMenuPresenter(this.mExpandedMenuPresenter);
        }
        if (this.mExpandedMenuPresenter == null) {
            this.mExpandedMenuPresenter = new d();
        }
        cVar.a(true);
        if (hVar != null) {
            hVar.addMenuPresenter(cVar, this.mPopupContext);
            hVar.addMenuPresenter(this.mExpandedMenuPresenter, this.mPopupContext);
        } else {
            cVar.initForMenu(this.mPopupContext, null);
            this.mExpandedMenuPresenter.initForMenu(this.mPopupContext, null);
            cVar.updateMenuView(true);
            this.mExpandedMenuPresenter.updateMenuView(true);
        }
        this.mMenuView.setPopupTheme(this.mPopupTheme);
        this.mMenuView.setPresenter(cVar);
        this.mOuterActionMenuPresenter = cVar;
    }

    public void setMenuCallbacks(p.a aVar, h.a aVar2) {
        this.mActionMenuPresenterCallback = aVar;
        this.mMenuBuilderCallback = aVar2;
        ActionMenuView actionMenuView = this.mMenuView;
        if (actionMenuView != null) {
            actionMenuView.a(aVar, aVar2);
        }
    }

    public void setNavigationContentDescription(int i2) {
        setNavigationContentDescription(i2 != 0 ? getContext().getText(i2) : null);
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            ensureNavButtonView();
        }
        ImageButton imageButton = this.mNavButtonView;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setNavigationIcon(int i2) {
        setNavigationIcon(b.a.k.a.a.c(getContext(), i2));
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            ensureNavButtonView();
            if (!isChildOrHidden(this.mNavButtonView)) {
                addSystemView(this.mNavButtonView, true);
            }
        } else {
            ImageButton imageButton = this.mNavButtonView;
            if (imageButton != null && isChildOrHidden(imageButton)) {
                removeView(this.mNavButtonView);
                this.mHiddenViews.remove(this.mNavButtonView);
            }
        }
        ImageButton imageButton2 = this.mNavButtonView;
        if (imageButton2 != null) {
            imageButton2.setImageDrawable(drawable);
        }
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        ensureNavButtonView();
        this.mNavButtonView.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(f fVar) {
        this.mOnMenuItemClickListener = fVar;
    }

    public void setOverflowIcon(Drawable drawable) {
        ensureMenu();
        this.mMenuView.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i2) {
        if (this.mPopupTheme != i2) {
            this.mPopupTheme = i2;
            if (i2 == 0) {
                this.mPopupContext = getContext();
            } else {
                this.mPopupContext = new ContextThemeWrapper(getContext(), i2);
            }
        }
    }

    public void setSubtitle(int i2) {
        setSubtitle(getContext().getText(i2));
    }

    public void setSubtitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            TextView textView = this.mSubtitleTextView;
            if (textView != null && isChildOrHidden(textView)) {
                removeView(this.mSubtitleTextView);
                this.mHiddenViews.remove(this.mSubtitleTextView);
            }
        } else {
            if (this.mSubtitleTextView == null) {
                Context context = getContext();
                this.mSubtitleTextView = new w(context);
                this.mSubtitleTextView.setSingleLine();
                this.mSubtitleTextView.setEllipsize(TextUtils.TruncateAt.END);
                int i2 = this.mSubtitleTextAppearance;
                if (i2 != 0) {
                    this.mSubtitleTextView.setTextAppearance(context, i2);
                }
                int i3 = this.mSubtitleTextColor;
                if (i3 != 0) {
                    this.mSubtitleTextView.setTextColor(i3);
                }
            }
            if (!isChildOrHidden(this.mSubtitleTextView)) {
                addSystemView(this.mSubtitleTextView, true);
            }
        }
        TextView textView2 = this.mSubtitleTextView;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.mSubtitleText = charSequence;
    }

    public void setSubtitleTextAppearance(Context context, int i2) {
        this.mSubtitleTextAppearance = i2;
        TextView textView = this.mSubtitleTextView;
        if (textView != null) {
            textView.setTextAppearance(context, i2);
        }
    }

    public void setSubtitleTextColor(int i2) {
        this.mSubtitleTextColor = i2;
        TextView textView = this.mSubtitleTextView;
        if (textView != null) {
            textView.setTextColor(i2);
        }
    }

    public void setTitle(int i2) {
        setTitle(getContext().getText(i2));
    }

    public void setTitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            TextView textView = this.mTitleTextView;
            if (textView != null && isChildOrHidden(textView)) {
                removeView(this.mTitleTextView);
                this.mHiddenViews.remove(this.mTitleTextView);
            }
        } else {
            if (this.mTitleTextView == null) {
                Context context = getContext();
                this.mTitleTextView = new w(context);
                this.mTitleTextView.setSingleLine();
                this.mTitleTextView.setEllipsize(TextUtils.TruncateAt.END);
                int i2 = this.mTitleTextAppearance;
                if (i2 != 0) {
                    this.mTitleTextView.setTextAppearance(context, i2);
                }
                int i3 = this.mTitleTextColor;
                if (i3 != 0) {
                    this.mTitleTextView.setTextColor(i3);
                }
            }
            if (!isChildOrHidden(this.mTitleTextView)) {
                addSystemView(this.mTitleTextView, true);
            }
        }
        TextView textView2 = this.mTitleTextView;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.mTitleText = charSequence;
    }

    public void setTitleMargin(int i2, int i3, int i4, int i5) {
        this.mTitleMarginStart = i2;
        this.mTitleMarginTop = i3;
        this.mTitleMarginEnd = i4;
        this.mTitleMarginBottom = i5;
        requestLayout();
    }

    public void setTitleMarginBottom(int i2) {
        this.mTitleMarginBottom = i2;
        requestLayout();
    }

    public void setTitleMarginEnd(int i2) {
        this.mTitleMarginEnd = i2;
        requestLayout();
    }

    public void setTitleMarginStart(int i2) {
        this.mTitleMarginStart = i2;
        requestLayout();
    }

    public void setTitleMarginTop(int i2) {
        this.mTitleMarginTop = i2;
        requestLayout();
    }

    public void setTitleTextAppearance(Context context, int i2) {
        this.mTitleTextAppearance = i2;
        TextView textView = this.mTitleTextView;
        if (textView != null) {
            textView.setTextAppearance(context, i2);
        }
    }

    public void setTitleTextColor(int i2) {
        this.mTitleTextColor = i2;
        TextView textView = this.mTitleTextView;
        if (textView != null) {
            textView.setTextColor(i2);
        }
    }

    public boolean showOverflowMenu() {
        ActionMenuView actionMenuView = this.mMenuView;
        return actionMenuView != null && actionMenuView.j();
    }
}
