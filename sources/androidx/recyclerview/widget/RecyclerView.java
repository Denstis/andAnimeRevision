package androidx.recyclerview.widget;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.recyclerview.widget.a;
import androidx.recyclerview.widget.f;
import androidx.recyclerview.widget.j;
import androidx.recyclerview.widget.x;
import androidx.recyclerview.widget.y;
import b.h.o.b0.c;
import com.google.android.exoplayer2.extractor.MpegAudioHeader;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class RecyclerView extends ViewGroup implements b.h.o.q, b.h.o.i {
    static final boolean ALLOW_SIZE_IN_UNSPECIFIED_SPEC;
    static final boolean ALLOW_THREAD_GAP_WORK;
    static final boolean DEBUG = false;
    static final int DEFAULT_ORIENTATION = 1;
    static final boolean DISPATCH_TEMP_DETACH = false;
    private static final boolean FORCE_ABS_FOCUS_SEARCH_DIRECTION;
    static final boolean FORCE_INVALIDATE_DISPLAY_LIST;
    static final long FOREVER_NS = Long.MAX_VALUE;
    public static final int HORIZONTAL = 0;
    private static final boolean IGNORE_DETACHED_FOCUSED_CHILD;
    private static final int INVALID_POINTER = -1;
    public static final int INVALID_TYPE = -1;
    private static final Class<?>[] LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE;
    static final int MAX_SCROLL_DURATION = 2000;
    public static final long NO_ID = -1;
    public static final int NO_POSITION = -1;
    static final boolean POST_UPDATES_ON_ANIMATION;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    static final String TAG = "RecyclerView";
    public static final int TOUCH_SLOP_DEFAULT = 0;
    public static final int TOUCH_SLOP_PAGING = 1;
    static final String TRACE_BIND_VIEW_TAG = "RV OnBindView";
    static final String TRACE_CREATE_VIEW_TAG = "RV CreateView";
    private static final String TRACE_HANDLE_ADAPTER_UPDATES_TAG = "RV PartialInvalidate";
    static final String TRACE_NESTED_PREFETCH_TAG = "RV Nested Prefetch";
    private static final String TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG = "RV FullInvalidate";
    private static final String TRACE_ON_LAYOUT_TAG = "RV OnLayout";
    static final String TRACE_PREFETCH_TAG = "RV Prefetch";
    static final String TRACE_SCROLL_TAG = "RV Scroll";
    static final boolean VERBOSE_TRACING = false;
    public static final int VERTICAL = 1;
    static final Interpolator sQuinticInterpolator;
    androidx.recyclerview.widget.t mAccessibilityDelegate;
    private final AccessibilityManager mAccessibilityManager;
    private s mActiveOnItemTouchListener;
    g mAdapter;
    androidx.recyclerview.widget.a mAdapterHelper;
    boolean mAdapterUpdateDuringMeasure;
    private EdgeEffect mBottomGlow;
    private j mChildDrawingOrderCallback;
    androidx.recyclerview.widget.f mChildHelper;
    boolean mClipToPadding;
    boolean mDataSetHasChangedAfterLayout;
    boolean mDispatchItemsChangedEvent;
    private int mDispatchScrollCounter;
    private int mEatenAccessibilityChangeFlags;
    private k mEdgeEffectFactory;
    boolean mEnableFastScroller;
    boolean mFirstLayoutComplete;
    androidx.recyclerview.widget.j mGapWorker;
    boolean mHasFixedSize;
    private boolean mIgnoreMotionEventTillDown;
    private int mInitialTouchX;
    private int mInitialTouchY;
    private int mInterceptRequestLayoutDepth;
    boolean mIsAttached;
    l mItemAnimator;
    private l.b mItemAnimatorListener;
    private Runnable mItemAnimatorRunner;
    final ArrayList<n> mItemDecorations;
    boolean mItemsAddedOrRemoved;
    boolean mItemsChanged;
    private int mLastTouchX;
    private int mLastTouchY;
    o mLayout;
    boolean mLayoutFrozen;
    private int mLayoutOrScrollCounter;
    boolean mLayoutWasDefered;
    private EdgeEffect mLeftGlow;
    private final int mMaxFlingVelocity;
    private final int mMinFlingVelocity;
    private final int[] mMinMaxLayoutPositions;
    private final int[] mNestedOffsets;
    private final x mObserver;
    private List<q> mOnChildAttachStateListeners;
    private r mOnFlingListener;
    private final ArrayList<s> mOnItemTouchListeners;
    final List<d0> mPendingAccessibilityImportanceChange;
    private y mPendingSavedState;
    boolean mPostedAnimatorRunner;
    j.b mPrefetchRegistry;
    private boolean mPreserveFocusAfterLayout;
    final v mRecycler;
    w mRecyclerListener;
    private EdgeEffect mRightGlow;
    private float mScaledHorizontalScrollFactor;
    private float mScaledVerticalScrollFactor;
    final int[] mScrollConsumed;
    private t mScrollListener;
    private List<t> mScrollListeners;
    private final int[] mScrollOffset;
    private int mScrollPointerId;
    private int mScrollState;
    final int[] mScrollStepConsumed;
    private b.h.o.k mScrollingChildHelper;
    final a0 mState;
    final Rect mTempRect;
    private final Rect mTempRect2;
    final RectF mTempRectF;
    private EdgeEffect mTopGlow;
    private int mTouchSlop;
    final Runnable mUpdateChildViewsRunnable;
    private VelocityTracker mVelocityTracker;
    final c0 mViewFlinger;
    private final y.b mViewInfoProcessCallback;
    final androidx.recyclerview.widget.y mViewInfoStore;
    private static final int[] NESTED_SCROLLING_ATTRS = {R.attr.nestedScrollingEnabled};
    private static final int[] CLIP_TO_PADDING_ATTR = {R.attr.clipToPadding};

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RecyclerView recyclerView = RecyclerView.this;
            if (!recyclerView.mFirstLayoutComplete || recyclerView.isLayoutRequested()) {
                return;
            }
            RecyclerView recyclerView2 = RecyclerView.this;
            if (!recyclerView2.mIsAttached) {
                recyclerView2.requestLayout();
            } else if (recyclerView2.mLayoutFrozen) {
                recyclerView2.mLayoutWasDefered = true;
            } else {
                recyclerView2.consumePendingUpdateOperations();
            }
        }
    }

    public static class a0 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private SparseArray<Object> f1120b;
        int m;
        long n;
        int o;
        int p;
        int q;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f1119a = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f1121c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1122d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f1123e = 1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f1124f = 0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        boolean f1125g = false;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        boolean f1126h = false;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        boolean f1127i = false;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        boolean f1128j = false;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        boolean f1129k = false;
        boolean l = false;

        public int a() {
            return this.f1126h ? this.f1121c - this.f1122d : this.f1124f;
        }

        void a(int i2) {
            if ((this.f1123e & i2) != 0) {
                return;
            }
            throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i2) + " but it is " + Integer.toBinaryString(this.f1123e));
        }

        void a(g gVar) {
            this.f1123e = 1;
            this.f1124f = gVar.getItemCount();
            this.f1126h = false;
            this.f1127i = false;
            this.f1128j = false;
        }

        public int b() {
            return this.f1119a;
        }

        public boolean c() {
            return this.f1119a != -1;
        }

        public boolean d() {
            return this.f1126h;
        }

        public boolean e() {
            return this.l;
        }

        public String toString() {
            return "State{mTargetPosition=" + this.f1119a + ", mData=" + this.f1120b + ", mItemCount=" + this.f1124f + ", mIsMeasuring=" + this.f1128j + ", mPreviousLayoutItemCount=" + this.f1121c + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f1122d + ", mStructureChanged=" + this.f1125g + ", mInPreLayout=" + this.f1126h + ", mRunSimpleAnimations=" + this.f1129k + ", mRunPredictiveAnimations=" + this.l + '}';
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l lVar = RecyclerView.this.mItemAnimator;
            if (lVar != null) {
                lVar.i();
            }
            RecyclerView.this.mPostedAnimatorRunner = false;
        }
    }

    public static abstract class b0 {
        public abstract View a(v vVar, int i2, int i3);
    }

    static class c implements Interpolator {
        c() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f2) {
            float f3 = f2 - 1.0f;
            return (f3 * f3 * f3 * f3 * f3) + 1.0f;
        }
    }

    class c0 implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f1131b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f1132c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        OverScroller f1133d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        Interpolator f1134e = RecyclerView.sQuinticInterpolator;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f1135f = false;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f1136g = false;

        c0() {
            this.f1133d = new OverScroller(RecyclerView.this.getContext(), RecyclerView.sQuinticInterpolator);
        }

        private float a(float f2) {
            return (float) Math.sin((f2 - 0.5f) * 0.47123894f);
        }

        private int b(int i2, int i3, int i4, int i5) {
            int iRound;
            int iAbs = Math.abs(i2);
            int iAbs2 = Math.abs(i3);
            boolean z = iAbs > iAbs2;
            int iSqrt = (int) Math.sqrt((i4 * i4) + (i5 * i5));
            int iSqrt2 = (int) Math.sqrt((i2 * i2) + (i3 * i3));
            RecyclerView recyclerView = RecyclerView.this;
            int width = z ? recyclerView.getWidth() : recyclerView.getHeight();
            int i6 = width / 2;
            float f2 = width;
            float f3 = i6;
            float fA = f3 + (a(Math.min(1.0f, (iSqrt2 * 1.0f) / f2)) * f3);
            if (iSqrt > 0) {
                iRound = Math.round(Math.abs(fA / iSqrt) * 1000.0f) * 4;
            } else {
                if (!z) {
                    iAbs = iAbs2;
                }
                iRound = (int) (((iAbs / f2) + 1.0f) * 300.0f);
            }
            return Math.min(iRound, 2000);
        }

        private void c() {
            this.f1136g = false;
            this.f1135f = true;
        }

        private void d() {
            this.f1135f = false;
            if (this.f1136g) {
                a();
            }
        }

        void a() {
            if (this.f1135f) {
                this.f1136g = true;
            } else {
                RecyclerView.this.removeCallbacks(this);
                b.h.o.s.a(RecyclerView.this, this);
            }
        }

        public void a(int i2, int i3) {
            RecyclerView.this.setScrollState(2);
            this.f1132c = 0;
            this.f1131b = 0;
            this.f1133d.fling(0, 0, i2, i3, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
            a();
        }

        public void a(int i2, int i3, int i4) {
            a(i2, i3, i4, RecyclerView.sQuinticInterpolator);
        }

        public void a(int i2, int i3, int i4, int i5) {
            a(i2, i3, b(i2, i3, i4, i5));
        }

        public void a(int i2, int i3, int i4, Interpolator interpolator) {
            if (this.f1134e != interpolator) {
                this.f1134e = interpolator;
                this.f1133d = new OverScroller(RecyclerView.this.getContext(), interpolator);
            }
            RecyclerView.this.setScrollState(2);
            this.f1132c = 0;
            this.f1131b = 0;
            this.f1133d.startScroll(0, 0, i2, i3, i4);
            if (Build.VERSION.SDK_INT < 23) {
                this.f1133d.computeScrollOffset();
            }
            a();
        }

        public void a(int i2, int i3, Interpolator interpolator) {
            int iB = b(i2, i3, 0, 0);
            if (interpolator == null) {
                interpolator = RecyclerView.sQuinticInterpolator;
            }
            a(i2, i3, iB, interpolator);
        }

        public void b() {
            RecyclerView.this.removeCallbacks(this);
            this.f1133d.abortAnimation();
        }

        public void b(int i2, int i3) {
            a(i2, i3, 0, 0);
        }

        /* JADX WARN: Removed duplicated region for block: B:43:0x00dc  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x00df  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x00e6  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x00ef  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void run() {
            /*
                Method dump skipped, instruction units count: 410
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.c0.run():void");
        }
    }

    class d implements y.b {
        d() {
        }

        @Override // androidx.recyclerview.widget.y.b
        public void a(d0 d0Var) {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.mLayout.a(d0Var.itemView, recyclerView.mRecycler);
        }

        @Override // androidx.recyclerview.widget.y.b
        public void a(d0 d0Var, l.c cVar, l.c cVar2) {
            RecyclerView.this.animateAppearance(d0Var, cVar, cVar2);
        }

        @Override // androidx.recyclerview.widget.y.b
        public void b(d0 d0Var, l.c cVar, l.c cVar2) {
            RecyclerView.this.mRecycler.c(d0Var);
            RecyclerView.this.animateDisappearance(d0Var, cVar, cVar2);
        }

        @Override // androidx.recyclerview.widget.y.b
        public void c(d0 d0Var, l.c cVar, l.c cVar2) {
            d0Var.setIsRecyclable(false);
            RecyclerView recyclerView = RecyclerView.this;
            boolean z = recyclerView.mDataSetHasChangedAfterLayout;
            l lVar = recyclerView.mItemAnimator;
            if (z) {
                if (!lVar.a(d0Var, d0Var, cVar, cVar2)) {
                    return;
                }
            } else if (!lVar.c(d0Var, cVar, cVar2)) {
                return;
            }
            RecyclerView.this.postAnimationRunner();
        }
    }

    public static abstract class d0 {
        static final int FLAG_ADAPTER_FULLUPDATE = 1024;
        static final int FLAG_ADAPTER_POSITION_UNKNOWN = 512;
        static final int FLAG_APPEARED_IN_PRE_LAYOUT = 4096;
        static final int FLAG_BOUNCED_FROM_HIDDEN_LIST = 8192;
        static final int FLAG_BOUND = 1;
        static final int FLAG_IGNORE = 128;
        static final int FLAG_INVALID = 4;
        static final int FLAG_MOVED = 2048;
        static final int FLAG_NOT_RECYCLABLE = 16;
        static final int FLAG_REMOVED = 8;
        static final int FLAG_RETURNED_FROM_SCRAP = 32;
        static final int FLAG_SET_A11Y_ITEM_DELEGATE = 16384;
        static final int FLAG_TMP_DETACHED = 256;
        static final int FLAG_UPDATE = 2;
        private static final List<Object> FULLUPDATE_PAYLOADS = Collections.emptyList();
        static final int PENDING_ACCESSIBILITY_STATE_NOT_SET = -1;
        public final View itemView;
        int mFlags;
        WeakReference<RecyclerView> mNestedRecyclerView;
        RecyclerView mOwnerRecyclerView;
        int mPosition = -1;
        int mOldPosition = -1;
        long mItemId = -1;
        int mItemViewType = -1;
        int mPreLayoutPosition = -1;
        d0 mShadowedHolder = null;
        d0 mShadowingHolder = null;
        List<Object> mPayloads = null;
        List<Object> mUnmodifiedPayloads = null;
        private int mIsRecyclableCount = 0;
        v mScrapContainer = null;
        boolean mInChangeScrap = false;
        private int mWasImportantForAccessibilityBeforeHidden = 0;
        int mPendingAccessibilityState = -1;

        public d0(View view) {
            if (view == null) {
                throw new IllegalArgumentException("itemView may not be null");
            }
            this.itemView = view;
        }

        private void createPayloadsIfNeeded() {
            if (this.mPayloads == null) {
                this.mPayloads = new ArrayList();
                this.mUnmodifiedPayloads = Collections.unmodifiableList(this.mPayloads);
            }
        }

        void addChangePayload(Object obj) {
            if (obj == null) {
                addFlags(FLAG_ADAPTER_FULLUPDATE);
            } else if ((FLAG_ADAPTER_FULLUPDATE & this.mFlags) == 0) {
                createPayloadsIfNeeded();
                this.mPayloads.add(obj);
            }
        }

        void addFlags(int i2) {
            this.mFlags = i2 | this.mFlags;
        }

        void clearOldPosition() {
            this.mOldPosition = -1;
            this.mPreLayoutPosition = -1;
        }

        void clearPayload() {
            List<Object> list = this.mPayloads;
            if (list != null) {
                list.clear();
            }
            this.mFlags &= -1025;
        }

        void clearReturnedFromScrapFlag() {
            this.mFlags &= -33;
        }

        void clearTmpDetachFlag() {
            this.mFlags &= -257;
        }

        boolean doesTransientStatePreventRecycling() {
            return (this.mFlags & 16) == 0 && b.h.o.s.x(this.itemView);
        }

        void flagRemovedAndOffsetPosition(int i2, int i3, boolean z) {
            addFlags(8);
            offsetPosition(i3, z);
            this.mPosition = i2;
        }

        public final int getAdapterPosition() {
            RecyclerView recyclerView = this.mOwnerRecyclerView;
            if (recyclerView == null) {
                return -1;
            }
            return recyclerView.getAdapterPositionFor(this);
        }

        public final long getItemId() {
            return this.mItemId;
        }

        public final int getItemViewType() {
            return this.mItemViewType;
        }

        public final int getLayoutPosition() {
            int i2 = this.mPreLayoutPosition;
            return i2 == -1 ? this.mPosition : i2;
        }

        public final int getOldPosition() {
            return this.mOldPosition;
        }

        @Deprecated
        public final int getPosition() {
            int i2 = this.mPreLayoutPosition;
            return i2 == -1 ? this.mPosition : i2;
        }

        List<Object> getUnmodifiedPayloads() {
            if ((this.mFlags & FLAG_ADAPTER_FULLUPDATE) != 0) {
                return FULLUPDATE_PAYLOADS;
            }
            List<Object> list = this.mPayloads;
            return (list == null || list.size() == 0) ? FULLUPDATE_PAYLOADS : this.mUnmodifiedPayloads;
        }

        boolean hasAnyOfTheFlags(int i2) {
            return (i2 & this.mFlags) != 0;
        }

        boolean isAdapterPositionUnknown() {
            return (this.mFlags & 512) != 0 || isInvalid();
        }

        boolean isBound() {
            return (this.mFlags & 1) != 0;
        }

        boolean isInvalid() {
            return (this.mFlags & 4) != 0;
        }

        public final boolean isRecyclable() {
            return (this.mFlags & 16) == 0 && !b.h.o.s.x(this.itemView);
        }

        boolean isRemoved() {
            return (this.mFlags & 8) != 0;
        }

        boolean isScrap() {
            return this.mScrapContainer != null;
        }

        boolean isTmpDetached() {
            return (this.mFlags & FLAG_TMP_DETACHED) != 0;
        }

        boolean isUpdated() {
            return (this.mFlags & 2) != 0;
        }

        boolean needsUpdate() {
            return (this.mFlags & 2) != 0;
        }

        void offsetPosition(int i2, boolean z) {
            if (this.mOldPosition == -1) {
                this.mOldPosition = this.mPosition;
            }
            if (this.mPreLayoutPosition == -1) {
                this.mPreLayoutPosition = this.mPosition;
            }
            if (z) {
                this.mPreLayoutPosition += i2;
            }
            this.mPosition += i2;
            if (this.itemView.getLayoutParams() != null) {
                ((p) this.itemView.getLayoutParams()).f1169c = true;
            }
        }

        void onEnteredHiddenState(RecyclerView recyclerView) {
            int i2 = this.mPendingAccessibilityState;
            if (i2 == -1) {
                i2 = b.h.o.s.i(this.itemView);
            }
            this.mWasImportantForAccessibilityBeforeHidden = i2;
            recyclerView.setChildImportantForAccessibilityInternal(this, 4);
        }

        void onLeftHiddenState(RecyclerView recyclerView) {
            recyclerView.setChildImportantForAccessibilityInternal(this, this.mWasImportantForAccessibilityBeforeHidden);
            this.mWasImportantForAccessibilityBeforeHidden = 0;
        }

        void resetInternal() {
            this.mFlags = 0;
            this.mPosition = -1;
            this.mOldPosition = -1;
            this.mItemId = -1L;
            this.mPreLayoutPosition = -1;
            this.mIsRecyclableCount = 0;
            this.mShadowedHolder = null;
            this.mShadowingHolder = null;
            clearPayload();
            this.mWasImportantForAccessibilityBeforeHidden = 0;
            this.mPendingAccessibilityState = -1;
            RecyclerView.clearNestedRecyclerViewIfNotNested(this);
        }

        void saveOldPosition() {
            if (this.mOldPosition == -1) {
                this.mOldPosition = this.mPosition;
            }
        }

        void setFlags(int i2, int i3) {
            this.mFlags = (i2 & i3) | (this.mFlags & (i3 ^ (-1)));
        }

        public final void setIsRecyclable(boolean z) {
            int i2;
            int i3 = this.mIsRecyclableCount;
            this.mIsRecyclableCount = z ? i3 - 1 : i3 + 1;
            int i4 = this.mIsRecyclableCount;
            if (i4 < 0) {
                this.mIsRecyclableCount = 0;
                Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
                return;
            }
            if (!z && i4 == 1) {
                i2 = this.mFlags | 16;
            } else if (!z || this.mIsRecyclableCount != 0) {
                return;
            } else {
                i2 = this.mFlags & (-17);
            }
            this.mFlags = i2;
        }

        void setScrapContainer(v vVar, boolean z) {
            this.mScrapContainer = vVar;
            this.mInChangeScrap = z;
        }

        boolean shouldBeKeptAsChild() {
            return (this.mFlags & 16) != 0;
        }

        boolean shouldIgnore() {
            return (this.mFlags & FLAG_IGNORE) != 0;
        }

        void stopIgnoring() {
            this.mFlags &= -129;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("ViewHolder{" + Integer.toHexString(hashCode()) + " position=" + this.mPosition + " id=" + this.mItemId + ", oldPos=" + this.mOldPosition + ", pLpos:" + this.mPreLayoutPosition);
            if (isScrap()) {
                sb.append(" scrap ");
                sb.append(this.mInChangeScrap ? "[changeScrap]" : "[attachedScrap]");
            }
            if (isInvalid()) {
                sb.append(" invalid");
            }
            if (!isBound()) {
                sb.append(" unbound");
            }
            if (needsUpdate()) {
                sb.append(" update");
            }
            if (isRemoved()) {
                sb.append(" removed");
            }
            if (shouldIgnore()) {
                sb.append(" ignored");
            }
            if (isTmpDetached()) {
                sb.append(" tmpDetached");
            }
            if (!isRecyclable()) {
                sb.append(" not recyclable(" + this.mIsRecyclableCount + ")");
            }
            if (isAdapterPositionUnknown()) {
                sb.append(" undefined adapter position");
            }
            if (this.itemView.getParent() == null) {
                sb.append(" no parent");
            }
            sb.append("}");
            return sb.toString();
        }

        void unScrap() {
            this.mScrapContainer.c(this);
        }

        boolean wasReturnedFromScrap() {
            return (this.mFlags & 32) != 0;
        }
    }

    class e implements f.b {
        e() {
        }

        @Override // androidx.recyclerview.widget.f.b
        public int a() {
            return RecyclerView.this.getChildCount();
        }

        @Override // androidx.recyclerview.widget.f.b
        public View a(int i2) {
            return RecyclerView.this.getChildAt(i2);
        }

        @Override // androidx.recyclerview.widget.f.b
        public void a(View view) {
            d0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt != null) {
                childViewHolderInt.onEnteredHiddenState(RecyclerView.this);
            }
        }

        @Override // androidx.recyclerview.widget.f.b
        public void a(View view, int i2) {
            RecyclerView.this.addView(view, i2);
            RecyclerView.this.dispatchChildAttached(view);
        }

        @Override // androidx.recyclerview.widget.f.b
        public void a(View view, int i2, ViewGroup.LayoutParams layoutParams) {
            d0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt != null) {
                if (!childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                    throw new IllegalArgumentException("Called attach on a child which is not detached: " + childViewHolderInt + RecyclerView.this.exceptionLabel());
                }
                childViewHolderInt.clearTmpDetachFlag();
            }
            RecyclerView.this.attachViewToParent(view, i2, layoutParams);
        }

        @Override // androidx.recyclerview.widget.f.b
        public int b(View view) {
            return RecyclerView.this.indexOfChild(view);
        }

        @Override // androidx.recyclerview.widget.f.b
        public void b() {
            int iA = a();
            for (int i2 = 0; i2 < iA; i2++) {
                View viewA = a(i2);
                RecyclerView.this.dispatchChildDetached(viewA);
                viewA.clearAnimation();
            }
            RecyclerView.this.removeAllViews();
        }

        @Override // androidx.recyclerview.widget.f.b
        public void b(int i2) {
            d0 childViewHolderInt;
            View viewA = a(i2);
            if (viewA != null && (childViewHolderInt = RecyclerView.getChildViewHolderInt(viewA)) != null) {
                if (childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                    throw new IllegalArgumentException("called detach on an already detached child " + childViewHolderInt + RecyclerView.this.exceptionLabel());
                }
                childViewHolderInt.addFlags(256);
            }
            RecyclerView.this.detachViewFromParent(i2);
        }

        @Override // androidx.recyclerview.widget.f.b
        public d0 c(View view) {
            return RecyclerView.getChildViewHolderInt(view);
        }

        @Override // androidx.recyclerview.widget.f.b
        public void c(int i2) {
            View childAt = RecyclerView.this.getChildAt(i2);
            if (childAt != null) {
                RecyclerView.this.dispatchChildDetached(childAt);
                childAt.clearAnimation();
            }
            RecyclerView.this.removeViewAt(i2);
        }

        @Override // androidx.recyclerview.widget.f.b
        public void d(View view) {
            d0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt != null) {
                childViewHolderInt.onLeftHiddenState(RecyclerView.this);
            }
        }
    }

    class f implements a.InterfaceC0022a {
        f() {
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0022a
        public d0 a(int i2) {
            d0 d0VarFindViewHolderForPosition = RecyclerView.this.findViewHolderForPosition(i2, true);
            if (d0VarFindViewHolderForPosition == null || RecyclerView.this.mChildHelper.c(d0VarFindViewHolderForPosition.itemView)) {
                return null;
            }
            return d0VarFindViewHolderForPosition;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0022a
        public void a(int i2, int i3) {
            RecyclerView.this.offsetPositionRecordsForMove(i2, i3);
            RecyclerView.this.mItemsAddedOrRemoved = true;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0022a
        public void a(int i2, int i3, Object obj) {
            RecyclerView.this.viewRangeUpdate(i2, i3, obj);
            RecyclerView.this.mItemsChanged = true;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0022a
        public void a(a.b bVar) {
            c(bVar);
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0022a
        public void b(int i2, int i3) {
            RecyclerView.this.offsetPositionRecordsForRemove(i2, i3, false);
            RecyclerView.this.mItemsAddedOrRemoved = true;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0022a
        public void b(a.b bVar) {
            c(bVar);
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0022a
        public void c(int i2, int i3) {
            RecyclerView.this.offsetPositionRecordsForInsert(i2, i3);
            RecyclerView.this.mItemsAddedOrRemoved = true;
        }

        void c(a.b bVar) {
            int i2 = bVar.f1243a;
            if (i2 == 1) {
                RecyclerView recyclerView = RecyclerView.this;
                recyclerView.mLayout.a(recyclerView, bVar.f1244b, bVar.f1246d);
                return;
            }
            if (i2 == 2) {
                RecyclerView recyclerView2 = RecyclerView.this;
                recyclerView2.mLayout.b(recyclerView2, bVar.f1244b, bVar.f1246d);
            } else if (i2 == 4) {
                RecyclerView recyclerView3 = RecyclerView.this;
                recyclerView3.mLayout.a(recyclerView3, bVar.f1244b, bVar.f1246d, bVar.f1245c);
            } else {
                if (i2 != 8) {
                    return;
                }
                RecyclerView recyclerView4 = RecyclerView.this;
                recyclerView4.mLayout.a(recyclerView4, bVar.f1244b, bVar.f1246d, 1);
            }
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0022a
        public void d(int i2, int i3) {
            RecyclerView.this.offsetPositionRecordsForRemove(i2, i3, true);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.mItemsAddedOrRemoved = true;
            recyclerView.mState.f1122d += i3;
        }
    }

    public static abstract class g<VH extends d0> {
        private final h mObservable = new h();
        private boolean mHasStableIds = false;

        public final void bindViewHolder(VH vh, int i2) {
            vh.mPosition = i2;
            if (hasStableIds()) {
                vh.mItemId = getItemId(i2);
            }
            vh.setFlags(1, 519);
            b.h.k.b.a(RecyclerView.TRACE_BIND_VIEW_TAG);
            onBindViewHolder(vh, i2, vh.getUnmodifiedPayloads());
            vh.clearPayload();
            ViewGroup.LayoutParams layoutParams = vh.itemView.getLayoutParams();
            if (layoutParams instanceof p) {
                ((p) layoutParams).f1169c = true;
            }
            b.h.k.b.a();
        }

        public final VH createViewHolder(ViewGroup viewGroup, int i2) {
            try {
                b.h.k.b.a(RecyclerView.TRACE_CREATE_VIEW_TAG);
                VH vh = (VH) onCreateViewHolder(viewGroup, i2);
                if (vh.itemView.getParent() != null) {
                    throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
                }
                vh.mItemViewType = i2;
                return vh;
            } finally {
                b.h.k.b.a();
            }
        }

        public abstract int getItemCount();

        public long getItemId(int i2) {
            return -1L;
        }

        public int getItemViewType(int i2) {
            return 0;
        }

        public final boolean hasObservers() {
            return this.mObservable.a();
        }

        public final boolean hasStableIds() {
            return this.mHasStableIds;
        }

        public final void notifyDataSetChanged() {
            this.mObservable.b();
        }

        public final void notifyItemChanged(int i2) {
            this.mObservable.b(i2, 1);
        }

        public final void notifyItemChanged(int i2, Object obj) {
            this.mObservable.a(i2, 1, obj);
        }

        public final void notifyItemInserted(int i2) {
            this.mObservable.c(i2, 1);
        }

        public final void notifyItemMoved(int i2, int i3) {
            this.mObservable.a(i2, i3);
        }

        public final void notifyItemRangeChanged(int i2, int i3) {
            this.mObservable.b(i2, i3);
        }

        public final void notifyItemRangeChanged(int i2, int i3, Object obj) {
            this.mObservable.a(i2, i3, obj);
        }

        public final void notifyItemRangeInserted(int i2, int i3) {
            this.mObservable.c(i2, i3);
        }

        public final void notifyItemRangeRemoved(int i2, int i3) {
            this.mObservable.d(i2, i3);
        }

        public final void notifyItemRemoved(int i2) {
            this.mObservable.d(i2, 1);
        }

        public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        }

        public abstract void onBindViewHolder(VH vh, int i2);

        public void onBindViewHolder(VH vh, int i2, List<Object> list) {
            onBindViewHolder(vh, i2);
        }

        public abstract VH onCreateViewHolder(ViewGroup viewGroup, int i2);

        public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        }

        public boolean onFailedToRecycleView(VH vh) {
            return false;
        }

        public void onViewAttachedToWindow(VH vh) {
        }

        public void onViewDetachedFromWindow(VH vh) {
        }

        public void onViewRecycled(VH vh) {
        }

        public void registerAdapterDataObserver(i iVar) {
            this.mObservable.registerObserver(iVar);
        }

        public void setHasStableIds(boolean z) {
            if (hasObservers()) {
                throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
            }
            this.mHasStableIds = z;
        }

        public void unregisterAdapterDataObserver(i iVar) {
            this.mObservable.unregisterObserver(iVar);
        }
    }

    static class h extends Observable<i> {
        h() {
        }

        public void a(int i2, int i3) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((i) ((Observable) this).mObservers.get(size)).a(i2, i3, 1);
            }
        }

        public void a(int i2, int i3, Object obj) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((i) ((Observable) this).mObservers.get(size)).a(i2, i3, obj);
            }
        }

        public boolean a() {
            return !((Observable) this).mObservers.isEmpty();
        }

        public void b() {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((i) ((Observable) this).mObservers.get(size)).a();
            }
        }

        public void b(int i2, int i3) {
            a(i2, i3, null);
        }

        public void c(int i2, int i3) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((i) ((Observable) this).mObservers.get(size)).b(i2, i3);
            }
        }

        public void d(int i2, int i3) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((i) ((Observable) this).mObservers.get(size)).c(i2, i3);
            }
        }
    }

    public static abstract class i {
        public void a() {
        }

        public void a(int i2, int i3) {
        }

        public void a(int i2, int i3, int i4) {
        }

        public void a(int i2, int i3, Object obj) {
            a(i2, i3);
        }

        public void b(int i2, int i3) {
        }

        public void c(int i2, int i3) {
        }
    }

    public interface j {
        int a(int i2, int i3);
    }

    public static class k {
        protected EdgeEffect a(RecyclerView recyclerView, int i2) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    public static abstract class l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private b f1141a = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ArrayList<a> f1142b = new ArrayList<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f1143c = 120;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f1144d = 120;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f1145e = 250;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f1146f = 250;

        public interface a {
            void a();
        }

        interface b {
            void a(d0 d0Var);
        }

        public static class c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f1147a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f1148b;

            public c a(d0 d0Var) {
                a(d0Var, 0);
                return this;
            }

            public c a(d0 d0Var, int i2) {
                View view = d0Var.itemView;
                this.f1147a = view.getLeft();
                this.f1148b = view.getTop();
                view.getRight();
                view.getBottom();
                return this;
            }
        }

        static int e(d0 d0Var) {
            int i2 = d0Var.mFlags & 14;
            if (d0Var.isInvalid()) {
                return 4;
            }
            if ((i2 & 4) != 0) {
                return i2;
            }
            int oldPosition = d0Var.getOldPosition();
            int adapterPosition = d0Var.getAdapterPosition();
            return (oldPosition == -1 || adapterPosition == -1 || oldPosition == adapterPosition) ? i2 : i2 | 2048;
        }

        public c a(a0 a0Var, d0 d0Var) {
            c cVarH = h();
            cVarH.a(d0Var);
            return cVarH;
        }

        public c a(a0 a0Var, d0 d0Var, int i2, List<Object> list) {
            c cVarH = h();
            cVarH.a(d0Var);
            return cVarH;
        }

        public final void a() {
            int size = this.f1142b.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f1142b.get(i2).a();
            }
            this.f1142b.clear();
        }

        void a(b bVar) {
            this.f1141a = bVar;
        }

        public abstract boolean a(d0 d0Var);

        public abstract boolean a(d0 d0Var, d0 d0Var2, c cVar, c cVar2);

        public abstract boolean a(d0 d0Var, c cVar, c cVar2);

        public boolean a(d0 d0Var, List<Object> list) {
            return a(d0Var);
        }

        public abstract void b();

        public final void b(d0 d0Var) {
            d(d0Var);
            b bVar = this.f1141a;
            if (bVar != null) {
                bVar.a(d0Var);
            }
        }

        public abstract boolean b(d0 d0Var, c cVar, c cVar2);

        public long c() {
            return this.f1143c;
        }

        public abstract void c(d0 d0Var);

        public abstract boolean c(d0 d0Var, c cVar, c cVar2);

        public long d() {
            return this.f1146f;
        }

        public void d(d0 d0Var) {
        }

        public long e() {
            return this.f1145e;
        }

        public long f() {
            return this.f1144d;
        }

        public abstract boolean g();

        public c h() {
            return new c();
        }

        public abstract void i();
    }

    private class m implements l.b {
        m() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.l.b
        public void a(d0 d0Var) {
            d0Var.setIsRecyclable(true);
            if (d0Var.mShadowedHolder != null && d0Var.mShadowingHolder == null) {
                d0Var.mShadowedHolder = null;
            }
            d0Var.mShadowingHolder = null;
            if (d0Var.shouldBeKeptAsChild() || RecyclerView.this.removeAnimatingView(d0Var.itemView) || !d0Var.isTmpDetached()) {
                return;
            }
            RecyclerView.this.removeDetachedView(d0Var.itemView, false);
        }
    }

    public static abstract class n {
        @Deprecated
        public void a(Canvas canvas, RecyclerView recyclerView) {
        }

        public void a(Canvas canvas, RecyclerView recyclerView, a0 a0Var) {
            a(canvas, recyclerView);
        }

        @Deprecated
        public void a(Rect rect, int i2, RecyclerView recyclerView) {
            rect.set(0, 0, 0, 0);
        }

        public void a(Rect rect, View view, RecyclerView recyclerView, a0 a0Var) {
            a(rect, ((p) view.getLayoutParams()).a(), recyclerView);
        }

        @Deprecated
        public void b(Canvas canvas, RecyclerView recyclerView) {
        }

        public void b(Canvas canvas, RecyclerView recyclerView, a0 a0Var) {
            b(canvas, recyclerView);
        }
    }

    public static abstract class o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        androidx.recyclerview.widget.f f1150a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        RecyclerView f1151b;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        z f1156g;
        int m;
        boolean n;
        private int o;
        private int p;
        private int q;
        private int r;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final x.b f1152c = new a();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final x.b f1153d = new b();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        androidx.recyclerview.widget.x f1154e = new androidx.recyclerview.widget.x(this.f1152c);

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        androidx.recyclerview.widget.x f1155f = new androidx.recyclerview.widget.x(this.f1153d);

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        boolean f1157h = false;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        boolean f1158i = false;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        boolean f1159j = false;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private boolean f1160k = true;
        private boolean l = true;

        class a implements x.b {
            a() {
            }

            @Override // androidx.recyclerview.widget.x.b
            public int a() {
                return o.this.o();
            }

            @Override // androidx.recyclerview.widget.x.b
            public int a(View view) {
                return o.this.f(view) - ((ViewGroup.MarginLayoutParams) ((p) view.getLayoutParams())).leftMargin;
            }

            @Override // androidx.recyclerview.widget.x.b
            public View a(int i2) {
                return o.this.d(i2);
            }

            @Override // androidx.recyclerview.widget.x.b
            public int b() {
                return o.this.r() - o.this.p();
            }

            @Override // androidx.recyclerview.widget.x.b
            public int b(View view) {
                return o.this.i(view) + ((ViewGroup.MarginLayoutParams) ((p) view.getLayoutParams())).rightMargin;
            }
        }

        class b implements x.b {
            b() {
            }

            @Override // androidx.recyclerview.widget.x.b
            public int a() {
                return o.this.q();
            }

            @Override // androidx.recyclerview.widget.x.b
            public int a(View view) {
                return o.this.j(view) - ((ViewGroup.MarginLayoutParams) ((p) view.getLayoutParams())).topMargin;
            }

            @Override // androidx.recyclerview.widget.x.b
            public View a(int i2) {
                return o.this.d(i2);
            }

            @Override // androidx.recyclerview.widget.x.b
            public int b() {
                return o.this.h() - o.this.n();
            }

            @Override // androidx.recyclerview.widget.x.b
            public int b(View view) {
                return o.this.e(view) + ((ViewGroup.MarginLayoutParams) ((p) view.getLayoutParams())).bottomMargin;
            }
        }

        public interface c {
            void a(int i2, int i3);
        }

        public static class d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f1163a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f1164b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public boolean f1165c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public boolean f1166d;
        }

        public static int a(int i2, int i3, int i4) {
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            return mode != Integer.MIN_VALUE ? mode != 1073741824 ? Math.max(i3, i4) : size : Math.min(size, Math.max(i3, i4));
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0022  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0033  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public static int a(int r4, int r5, int r6, int r7, boolean r8) {
            /*
                int r4 = r4 - r6
                r6 = 0
                int r4 = java.lang.Math.max(r6, r4)
                r0 = -2
                r1 = -1
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = 1073741824(0x40000000, float:2.0)
                if (r8 == 0) goto L20
                if (r7 < 0) goto L11
                goto L22
            L11:
                if (r7 != r1) goto L33
                if (r5 == r2) goto L1c
                if (r5 == 0) goto L19
                if (r5 == r3) goto L1c
            L19:
                r5 = 0
                r7 = 0
                goto L1d
            L1c:
                r7 = r4
            L1d:
                r6 = r5
                r4 = r7
                goto L34
            L20:
                if (r7 < 0) goto L26
            L22:
                r4 = r7
                r6 = 1073741824(0x40000000, float:2.0)
                goto L34
            L26:
                if (r7 != r1) goto L2a
                r6 = r5
                goto L34
            L2a:
                if (r7 != r0) goto L33
                if (r5 == r2) goto L30
                if (r5 != r3) goto L34
            L30:
                r6 = -2147483648(0xffffffff80000000, float:-0.0)
                goto L34
            L33:
                r4 = 0
            L34:
                int r4 = android.view.View.MeasureSpec.makeMeasureSpec(r4, r6)
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.o.a(int, int, int, int, boolean):int");
        }

        public static d a(Context context, AttributeSet attributeSet, int i2, int i3) {
            d dVar = new d();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b.p.b.RecyclerView, i2, i3);
            dVar.f1163a = typedArrayObtainStyledAttributes.getInt(b.p.b.RecyclerView_android_orientation, 1);
            dVar.f1164b = typedArrayObtainStyledAttributes.getInt(b.p.b.RecyclerView_spanCount, 1);
            dVar.f1165c = typedArrayObtainStyledAttributes.getBoolean(b.p.b.RecyclerView_reverseLayout, false);
            dVar.f1166d = typedArrayObtainStyledAttributes.getBoolean(b.p.b.RecyclerView_stackFromEnd, false);
            typedArrayObtainStyledAttributes.recycle();
            return dVar;
        }

        private void a(int i2, View view) {
            this.f1150a.a(i2);
        }

        private void a(View view, int i2, boolean z) {
            d0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (z || childViewHolderInt.isRemoved()) {
                this.f1151b.mViewInfoStore.a(childViewHolderInt);
            } else {
                this.f1151b.mViewInfoStore.g(childViewHolderInt);
            }
            p pVar = (p) view.getLayoutParams();
            if (childViewHolderInt.wasReturnedFromScrap() || childViewHolderInt.isScrap()) {
                if (childViewHolderInt.isScrap()) {
                    childViewHolderInt.unScrap();
                } else {
                    childViewHolderInt.clearReturnedFromScrapFlag();
                }
                this.f1150a.a(view, i2, view.getLayoutParams(), false);
            } else if (view.getParent() == this.f1151b) {
                int iB = this.f1150a.b(view);
                if (i2 == -1) {
                    i2 = this.f1150a.a();
                }
                if (iB == -1) {
                    throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.f1151b.indexOfChild(view) + this.f1151b.exceptionLabel());
                }
                if (iB != i2) {
                    this.f1151b.mLayout.a(iB, i2);
                }
            } else {
                this.f1150a.a(view, i2, false);
                pVar.f1169c = true;
                z zVar = this.f1156g;
                if (zVar != null && zVar.e()) {
                    this.f1156g.b(view);
                }
            }
            if (pVar.f1170d) {
                childViewHolderInt.itemView.invalidate();
                pVar.f1170d = false;
            }
        }

        private void a(v vVar, int i2, View view) {
            d0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt.shouldIgnore()) {
                return;
            }
            if (childViewHolderInt.isInvalid() && !childViewHolderInt.isRemoved() && !this.f1151b.mAdapter.hasStableIds()) {
                h(i2);
                vVar.b(childViewHolderInt);
            } else {
                b(i2);
                vVar.c(view);
                this.f1151b.mViewInfoStore.d(childViewHolderInt);
            }
        }

        private static boolean b(int i2, int i3, int i4) {
            int mode = View.MeasureSpec.getMode(i3);
            int size = View.MeasureSpec.getSize(i3);
            if (i4 > 0 && i2 != i4) {
                return false;
            }
            if (mode == Integer.MIN_VALUE) {
                return size >= i2;
            }
            if (mode != 0) {
                return mode == 1073741824 && size == i2;
            }
            return true;
        }

        private int[] b(RecyclerView recyclerView, View view, Rect rect, boolean z) {
            int[] iArr = new int[2];
            int iO = o();
            int iQ = q();
            int iR = r() - p();
            int iH = h() - n();
            int left = (view.getLeft() + rect.left) - view.getScrollX();
            int top = (view.getTop() + rect.top) - view.getScrollY();
            int iWidth = rect.width() + left;
            int iHeight = rect.height() + top;
            int i2 = left - iO;
            int iMin = Math.min(0, i2);
            int i3 = top - iQ;
            int iMin2 = Math.min(0, i3);
            int i4 = iWidth - iR;
            int iMax = Math.max(0, i4);
            int iMax2 = Math.max(0, iHeight - iH);
            if (k() != 1) {
                if (iMin == 0) {
                    iMin = Math.min(i2, iMax);
                }
                iMax = iMin;
            } else if (iMax == 0) {
                iMax = Math.max(iMin, i4);
            }
            if (iMin2 == 0) {
                iMin2 = Math.min(i3, iMax2);
            }
            iArr[0] = iMax;
            iArr[1] = iMin2;
            return iArr;
        }

        private boolean d(RecyclerView recyclerView, int i2, int i3) {
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild == null) {
                return false;
            }
            int iO = o();
            int iQ = q();
            int iR = r() - p();
            int iH = h() - n();
            Rect rect = this.f1151b.mTempRect;
            b(focusedChild, rect);
            return rect.left - i2 < iR && rect.right - i2 > iO && rect.top - i3 < iH && rect.bottom - i3 > iQ;
        }

        public void A() {
            this.f1157h = true;
        }

        boolean B() {
            return false;
        }

        void C() {
            z zVar = this.f1156g;
            if (zVar != null) {
                zVar.h();
            }
        }

        public boolean D() {
            return false;
        }

        public int a(int i2, v vVar, a0 a0Var) {
            return 0;
        }

        public int a(a0 a0Var) {
            return 0;
        }

        public int a(v vVar, a0 a0Var) {
            RecyclerView recyclerView = this.f1151b;
            if (recyclerView == null || recyclerView.mAdapter == null || !a()) {
                return 1;
            }
            return this.f1151b.mAdapter.getItemCount();
        }

        public View a(View view, int i2, v vVar, a0 a0Var) {
            return null;
        }

        public p a(Context context, AttributeSet attributeSet) {
            return new p(context, attributeSet);
        }

        public p a(ViewGroup.LayoutParams layoutParams) {
            return layoutParams instanceof p ? new p((p) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new p((ViewGroup.MarginLayoutParams) layoutParams) : new p(layoutParams);
        }

        public void a(int i2, int i3) {
            View viewD = d(i2);
            if (viewD != null) {
                b(i2);
                c(viewD, i3);
            } else {
                throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i2 + this.f1151b.toString());
            }
        }

        public void a(int i2, int i3, a0 a0Var, c cVar) {
        }

        public void a(int i2, c cVar) {
        }

        public void a(int i2, v vVar) {
            View viewD = d(i2);
            h(i2);
            vVar.b(viewD);
        }

        public void a(Rect rect, int i2, int i3) {
            c(a(i2, rect.width() + o() + p(), m()), a(i3, rect.height() + q() + n(), l()));
        }

        public void a(Parcelable parcelable) {
        }

        public void a(View view) {
            a(view, -1);
        }

        public void a(View view, int i2) {
            a(view, i2, true);
        }

        public void a(View view, int i2, int i3) {
            p pVar = (p) view.getLayoutParams();
            Rect itemDecorInsetsForChild = this.f1151b.getItemDecorInsetsForChild(view);
            int i4 = i2 + itemDecorInsetsForChild.left + itemDecorInsetsForChild.right;
            int i5 = i3 + itemDecorInsetsForChild.top + itemDecorInsetsForChild.bottom;
            int iA = a(r(), s(), o() + p() + ((ViewGroup.MarginLayoutParams) pVar).leftMargin + ((ViewGroup.MarginLayoutParams) pVar).rightMargin + i4, ((ViewGroup.MarginLayoutParams) pVar).width, a());
            int iA2 = a(h(), i(), q() + n() + ((ViewGroup.MarginLayoutParams) pVar).topMargin + ((ViewGroup.MarginLayoutParams) pVar).bottomMargin + i5, ((ViewGroup.MarginLayoutParams) pVar).height, b());
            if (a(view, iA, iA2, pVar)) {
                view.measure(iA, iA2);
            }
        }

        public void a(View view, int i2, int i3, int i4, int i5) {
            p pVar = (p) view.getLayoutParams();
            Rect rect = pVar.f1168b;
            view.layout(i2 + rect.left + ((ViewGroup.MarginLayoutParams) pVar).leftMargin, i3 + rect.top + ((ViewGroup.MarginLayoutParams) pVar).topMargin, (i4 - rect.right) - ((ViewGroup.MarginLayoutParams) pVar).rightMargin, (i5 - rect.bottom) - ((ViewGroup.MarginLayoutParams) pVar).bottomMargin);
        }

        public void a(View view, int i2, p pVar) {
            d0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt.isRemoved()) {
                this.f1151b.mViewInfoStore.a(childViewHolderInt);
            } else {
                this.f1151b.mViewInfoStore.g(childViewHolderInt);
            }
            this.f1150a.a(view, i2, pVar, childViewHolderInt.isRemoved());
        }

        public void a(View view, Rect rect) {
            RecyclerView recyclerView = this.f1151b;
            if (recyclerView == null) {
                rect.set(0, 0, 0, 0);
            } else {
                rect.set(recyclerView.getItemDecorInsetsForChild(view));
            }
        }

        public void a(View view, v vVar) {
            o(view);
            vVar.b(view);
        }

        void a(View view, b.h.o.b0.c cVar) {
            d0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt == null || childViewHolderInt.isRemoved() || this.f1150a.c(childViewHolderInt.itemView)) {
                return;
            }
            RecyclerView recyclerView = this.f1151b;
            a(recyclerView.mRecycler, recyclerView.mState, view, cVar);
        }

        public void a(View view, boolean z, Rect rect) {
            Matrix matrix;
            if (z) {
                Rect rect2 = ((p) view.getLayoutParams()).f1168b;
                rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            } else {
                rect.set(0, 0, view.getWidth(), view.getHeight());
            }
            if (this.f1151b != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
                RectF rectF = this.f1151b.mTempRectF;
                rectF.set(rect);
                matrix.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        public void a(AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.f1151b;
            a(recyclerView.mRecycler, recyclerView.mState, accessibilityEvent);
        }

        public void a(g gVar, g gVar2) {
        }

        public void a(v vVar) {
            for (int iE = e() - 1; iE >= 0; iE--) {
                a(vVar, iE, d(iE));
            }
        }

        public void a(v vVar, a0 a0Var, int i2, int i3) {
            this.f1151b.defaultOnMeasure(i2, i3);
        }

        public void a(v vVar, a0 a0Var, View view, b.h.o.b0.c cVar) {
            cVar.b(c.C0108c.a(b() ? l(view) : 0, 1, a() ? l(view) : 0, 1, false, false));
        }

        public void a(v vVar, a0 a0Var, AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.f1151b;
            if (recyclerView == null || accessibilityEvent == null) {
                return;
            }
            boolean z = true;
            if (!recyclerView.canScrollVertically(1) && !this.f1151b.canScrollVertically(-1) && !this.f1151b.canScrollHorizontally(-1) && !this.f1151b.canScrollHorizontally(1)) {
                z = false;
            }
            accessibilityEvent.setScrollable(z);
            g gVar = this.f1151b.mAdapter;
            if (gVar != null) {
                accessibilityEvent.setItemCount(gVar.getItemCount());
            }
        }

        public void a(v vVar, a0 a0Var, b.h.o.b0.c cVar) {
            if (this.f1151b.canScrollVertically(-1) || this.f1151b.canScrollHorizontally(-1)) {
                cVar.a(8192);
                cVar.k(true);
            }
            if (this.f1151b.canScrollVertically(1) || this.f1151b.canScrollHorizontally(1)) {
                cVar.a(MpegAudioHeader.MAX_FRAME_SIZE_BYTES);
                cVar.k(true);
            }
            cVar.a(c.b.a(b(vVar, a0Var), a(vVar, a0Var), d(vVar, a0Var), c(vVar, a0Var)));
        }

        void a(z zVar) {
            if (this.f1156g == zVar) {
                this.f1156g = null;
            }
        }

        void a(RecyclerView recyclerView) {
            this.f1158i = true;
            b(recyclerView);
        }

        public void a(RecyclerView recyclerView, int i2, int i3) {
        }

        public void a(RecyclerView recyclerView, int i2, int i3, int i4) {
        }

        public void a(RecyclerView recyclerView, int i2, int i3, Object obj) {
            c(recyclerView, i2, i3);
        }

        public void a(RecyclerView recyclerView, a0 a0Var, int i2) {
            Log.e(RecyclerView.TAG, "You must override smoothScrollToPosition to support smooth scrolling");
        }

        void a(RecyclerView recyclerView, v vVar) {
            this.f1158i = false;
            b(recyclerView, vVar);
        }

        void a(b.h.o.b0.c cVar) {
            RecyclerView recyclerView = this.f1151b;
            a(recyclerView.mRecycler, recyclerView.mState, cVar);
        }

        public void a(String str) {
            RecyclerView recyclerView = this.f1151b;
            if (recyclerView != null) {
                recyclerView.assertNotInLayoutOrScroll(str);
            }
        }

        public boolean a() {
            return false;
        }

        boolean a(int i2, Bundle bundle) {
            RecyclerView recyclerView = this.f1151b;
            return a(recyclerView.mRecycler, recyclerView.mState, i2, bundle);
        }

        boolean a(View view, int i2, int i3, p pVar) {
            return (!view.isLayoutRequested() && this.f1160k && b(view.getWidth(), i2, ((ViewGroup.MarginLayoutParams) pVar).width) && b(view.getHeight(), i3, ((ViewGroup.MarginLayoutParams) pVar).height)) ? false : true;
        }

        boolean a(View view, int i2, Bundle bundle) {
            RecyclerView recyclerView = this.f1151b;
            return a(recyclerView.mRecycler, recyclerView.mState, view, i2, bundle);
        }

        public boolean a(View view, boolean z, boolean z2) {
            boolean z3 = this.f1154e.a(view, 24579) && this.f1155f.a(view, 24579);
            return z ? z3 : !z3;
        }

        public boolean a(p pVar) {
            return pVar != null;
        }

        public boolean a(v vVar, a0 a0Var, int i2, Bundle bundle) {
            int iH;
            int iR;
            RecyclerView recyclerView = this.f1151b;
            if (recyclerView == null) {
                return false;
            }
            if (i2 != 4096) {
                if (i2 != 8192) {
                    iH = 0;
                } else {
                    iH = recyclerView.canScrollVertically(-1) ? -((h() - q()) - n()) : 0;
                    if (this.f1151b.canScrollHorizontally(-1)) {
                        iR = -((r() - o()) - p());
                    }
                }
            } else {
                iH = recyclerView.canScrollVertically(1) ? (h() - q()) - n() : 0;
                iR = this.f1151b.canScrollHorizontally(1) ? (r() - o()) - p() : 0;
            }
            if (iH == 0 && iR == 0) {
                return false;
            }
            this.f1151b.smoothScrollBy(iR, iH);
            return true;
        }

        public boolean a(v vVar, a0 a0Var, View view, int i2, Bundle bundle) {
            return false;
        }

        public boolean a(RecyclerView recyclerView, View view, Rect rect, boolean z) {
            return a(recyclerView, view, rect, z, false);
        }

        public boolean a(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
            int[] iArrB = b(recyclerView, view, rect, z);
            int i2 = iArrB[0];
            int i3 = iArrB[1];
            if ((z2 && !d(recyclerView, i2, i3)) || (i2 == 0 && i3 == 0)) {
                return false;
            }
            if (z) {
                recyclerView.scrollBy(i2, i3);
            } else {
                recyclerView.smoothScrollBy(i2, i3);
            }
            return true;
        }

        @Deprecated
        public boolean a(RecyclerView recyclerView, View view, View view2) {
            return x() || recyclerView.isComputingLayout();
        }

        public boolean a(RecyclerView recyclerView, a0 a0Var, View view, View view2) {
            return a(recyclerView, view, view2);
        }

        public boolean a(RecyclerView recyclerView, ArrayList<View> arrayList, int i2, int i3) {
            return false;
        }

        public boolean a(Runnable runnable) {
            RecyclerView recyclerView = this.f1151b;
            if (recyclerView != null) {
                return recyclerView.removeCallbacks(runnable);
            }
            return false;
        }

        public int b(int i2, v vVar, a0 a0Var) {
            return 0;
        }

        public int b(a0 a0Var) {
            return 0;
        }

        public int b(v vVar, a0 a0Var) {
            RecyclerView recyclerView = this.f1151b;
            if (recyclerView == null || recyclerView.mAdapter == null || !b()) {
                return 1;
            }
            return this.f1151b.mAdapter.getItemCount();
        }

        public void b(int i2) {
            a(i2, d(i2));
        }

        void b(int i2, int i3) {
            this.q = View.MeasureSpec.getSize(i2);
            this.o = View.MeasureSpec.getMode(i2);
            if (this.o == 0 && !RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
                this.q = 0;
            }
            this.r = View.MeasureSpec.getSize(i3);
            this.p = View.MeasureSpec.getMode(i3);
            if (this.p != 0 || RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
                return;
            }
            this.r = 0;
        }

        public void b(View view) {
            b(view, -1);
        }

        public void b(View view, int i2) {
            a(view, i2, false);
        }

        public void b(View view, Rect rect) {
            RecyclerView.getDecoratedBoundsWithMarginsInt(view, rect);
        }

        public void b(v vVar) {
            for (int iE = e() - 1; iE >= 0; iE--) {
                if (!RecyclerView.getChildViewHolderInt(d(iE)).shouldIgnore()) {
                    a(iE, vVar);
                }
            }
        }

        public void b(z zVar) {
            z zVar2 = this.f1156g;
            if (zVar2 != null && zVar != zVar2 && zVar2.e()) {
                this.f1156g.h();
            }
            this.f1156g = zVar;
            this.f1156g.a(this.f1151b, this);
        }

        public void b(RecyclerView recyclerView) {
        }

        public void b(RecyclerView recyclerView, int i2, int i3) {
        }

        public void b(RecyclerView recyclerView, v vVar) {
            c(recyclerView);
        }

        public boolean b() {
            return false;
        }

        boolean b(View view, int i2, int i3, p pVar) {
            return (this.f1160k && b(view.getMeasuredWidth(), i2, ((ViewGroup.MarginLayoutParams) pVar).width) && b(view.getMeasuredHeight(), i3, ((ViewGroup.MarginLayoutParams) pVar).height)) ? false : true;
        }

        public int c(a0 a0Var) {
            return 0;
        }

        public int c(v vVar, a0 a0Var) {
            return 0;
        }

        public View c(int i2) {
            int iE = e();
            for (int i3 = 0; i3 < iE; i3++) {
                View viewD = d(i3);
                d0 childViewHolderInt = RecyclerView.getChildViewHolderInt(viewD);
                if (childViewHolderInt != null && childViewHolderInt.getLayoutPosition() == i2 && !childViewHolderInt.shouldIgnore() && (this.f1151b.mState.d() || !childViewHolderInt.isRemoved())) {
                    return viewD;
                }
            }
            return null;
        }

        public View c(View view) {
            View viewFindContainingItemView;
            RecyclerView recyclerView = this.f1151b;
            if (recyclerView == null || (viewFindContainingItemView = recyclerView.findContainingItemView(view)) == null || this.f1150a.c(viewFindContainingItemView)) {
                return null;
            }
            return viewFindContainingItemView;
        }

        public abstract p c();

        public void c(int i2, int i3) {
            this.f1151b.setMeasuredDimension(i2, i3);
        }

        public void c(View view, int i2) {
            a(view, i2, (p) view.getLayoutParams());
        }

        void c(v vVar) {
            int iE = vVar.e();
            for (int i2 = iE - 1; i2 >= 0; i2--) {
                View viewC = vVar.c(i2);
                d0 childViewHolderInt = RecyclerView.getChildViewHolderInt(viewC);
                if (!childViewHolderInt.shouldIgnore()) {
                    childViewHolderInt.setIsRecyclable(false);
                    if (childViewHolderInt.isTmpDetached()) {
                        this.f1151b.removeDetachedView(viewC, false);
                    }
                    l lVar = this.f1151b.mItemAnimator;
                    if (lVar != null) {
                        lVar.c(childViewHolderInt);
                    }
                    childViewHolderInt.setIsRecyclable(true);
                    vVar.a(viewC);
                }
            }
            vVar.c();
            if (iE > 0) {
                this.f1151b.invalidate();
            }
        }

        @Deprecated
        public void c(RecyclerView recyclerView) {
        }

        public void c(RecyclerView recyclerView, int i2, int i3) {
        }

        public int d() {
            return -1;
        }

        public int d(View view) {
            return ((p) view.getLayoutParams()).f1168b.bottom;
        }

        public int d(a0 a0Var) {
            return 0;
        }

        public View d(int i2) {
            androidx.recyclerview.widget.f fVar = this.f1150a;
            if (fVar != null) {
                return fVar.c(i2);
            }
            return null;
        }

        public View d(View view, int i2) {
            return null;
        }

        void d(int i2, int i3) {
            int iE = e();
            if (iE == 0) {
                this.f1151b.defaultOnMeasure(i2, i3);
                return;
            }
            int i4 = Integer.MAX_VALUE;
            int i5 = Integer.MAX_VALUE;
            int i6 = Integer.MIN_VALUE;
            int i7 = Integer.MIN_VALUE;
            for (int i8 = 0; i8 < iE; i8++) {
                View viewD = d(i8);
                Rect rect = this.f1151b.mTempRect;
                b(viewD, rect);
                int i9 = rect.left;
                if (i9 < i4) {
                    i4 = i9;
                }
                int i10 = rect.right;
                if (i10 > i6) {
                    i6 = i10;
                }
                int i11 = rect.top;
                if (i11 < i5) {
                    i5 = i11;
                }
                int i12 = rect.bottom;
                if (i12 > i7) {
                    i7 = i12;
                }
            }
            this.f1151b.mTempRect.set(i4, i5, i6, i7);
            a(this.f1151b.mTempRect, i2, i3);
        }

        public void d(RecyclerView recyclerView) {
        }

        public boolean d(v vVar, a0 a0Var) {
            return false;
        }

        public int e() {
            androidx.recyclerview.widget.f fVar = this.f1150a;
            if (fVar != null) {
                return fVar.a();
            }
            return 0;
        }

        public int e(View view) {
            return view.getBottom() + d(view);
        }

        public int e(a0 a0Var) {
            return 0;
        }

        public void e(int i2) {
            RecyclerView recyclerView = this.f1151b;
            if (recyclerView != null) {
                recyclerView.offsetChildrenHorizontal(i2);
            }
        }

        public void e(v vVar, a0 a0Var) {
            Log.e(RecyclerView.TAG, "You must override onLayoutChildren(Recycler recycler, State state) ");
        }

        void e(RecyclerView recyclerView) {
            b(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
        }

        public int f(View view) {
            return view.getLeft() - k(view);
        }

        public int f(a0 a0Var) {
            return 0;
        }

        public void f(int i2) {
            RecyclerView recyclerView = this.f1151b;
            if (recyclerView != null) {
                recyclerView.offsetChildrenVertical(i2);
            }
        }

        void f(RecyclerView recyclerView) {
            int height;
            if (recyclerView == null) {
                this.f1151b = null;
                this.f1150a = null;
                height = 0;
                this.q = 0;
            } else {
                this.f1151b = recyclerView;
                this.f1150a = recyclerView.mChildHelper;
                this.q = recyclerView.getWidth();
                height = recyclerView.getHeight();
            }
            this.r = height;
            this.o = 1073741824;
            this.p = 1073741824;
        }

        public boolean f() {
            RecyclerView recyclerView = this.f1151b;
            return recyclerView != null && recyclerView.mClipToPadding;
        }

        public int g(View view) {
            Rect rect = ((p) view.getLayoutParams()).f1168b;
            return view.getMeasuredHeight() + rect.top + rect.bottom;
        }

        public View g() {
            View focusedChild;
            RecyclerView recyclerView = this.f1151b;
            if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.f1150a.c(focusedChild)) {
                return null;
            }
            return focusedChild;
        }

        public void g(int i2) {
        }

        public void g(a0 a0Var) {
        }

        public int h() {
            return this.r;
        }

        public int h(View view) {
            Rect rect = ((p) view.getLayoutParams()).f1168b;
            return view.getMeasuredWidth() + rect.left + rect.right;
        }

        public void h(int i2) {
            if (d(i2) != null) {
                this.f1150a.e(i2);
            }
        }

        public int i() {
            return this.p;
        }

        public int i(View view) {
            return view.getRight() + m(view);
        }

        public void i(int i2) {
        }

        public int j() {
            RecyclerView recyclerView = this.f1151b;
            g adapter = recyclerView != null ? recyclerView.getAdapter() : null;
            if (adapter != null) {
                return adapter.getItemCount();
            }
            return 0;
        }

        public int j(View view) {
            return view.getTop() - n(view);
        }

        public int k() {
            return b.h.o.s.k(this.f1151b);
        }

        public int k(View view) {
            return ((p) view.getLayoutParams()).f1168b.left;
        }

        public int l() {
            return b.h.o.s.l(this.f1151b);
        }

        public int l(View view) {
            return ((p) view.getLayoutParams()).a();
        }

        public int m() {
            return b.h.o.s.m(this.f1151b);
        }

        public int m(View view) {
            return ((p) view.getLayoutParams()).f1168b.right;
        }

        public int n() {
            RecyclerView recyclerView = this.f1151b;
            if (recyclerView != null) {
                return recyclerView.getPaddingBottom();
            }
            return 0;
        }

        public int n(View view) {
            return ((p) view.getLayoutParams()).f1168b.top;
        }

        public int o() {
            RecyclerView recyclerView = this.f1151b;
            if (recyclerView != null) {
                return recyclerView.getPaddingLeft();
            }
            return 0;
        }

        public void o(View view) {
            this.f1150a.d(view);
        }

        public int p() {
            RecyclerView recyclerView = this.f1151b;
            if (recyclerView != null) {
                return recyclerView.getPaddingRight();
            }
            return 0;
        }

        public int q() {
            RecyclerView recyclerView = this.f1151b;
            if (recyclerView != null) {
                return recyclerView.getPaddingTop();
            }
            return 0;
        }

        public int r() {
            return this.q;
        }

        public int s() {
            return this.o;
        }

        boolean t() {
            int iE = e();
            for (int i2 = 0; i2 < iE; i2++) {
                ViewGroup.LayoutParams layoutParams = d(i2).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
            return false;
        }

        public boolean u() {
            return this.f1158i;
        }

        public boolean v() {
            return this.f1159j;
        }

        public final boolean w() {
            return this.l;
        }

        public boolean x() {
            z zVar = this.f1156g;
            return zVar != null && zVar.e();
        }

        public Parcelable y() {
            return null;
        }

        public void z() {
            RecyclerView recyclerView = this.f1151b;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }
    }

    public static class p extends ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        d0 f1167a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Rect f1168b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f1169c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f1170d;

        public p(int i2, int i3) {
            super(i2, i3);
            this.f1168b = new Rect();
            this.f1169c = true;
            this.f1170d = false;
        }

        public p(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1168b = new Rect();
            this.f1169c = true;
            this.f1170d = false;
        }

        public p(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1168b = new Rect();
            this.f1169c = true;
            this.f1170d = false;
        }

        public p(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1168b = new Rect();
            this.f1169c = true;
            this.f1170d = false;
        }

        public p(p pVar) {
            super((ViewGroup.LayoutParams) pVar);
            this.f1168b = new Rect();
            this.f1169c = true;
            this.f1170d = false;
        }

        public int a() {
            return this.f1167a.getLayoutPosition();
        }

        public boolean b() {
            return this.f1167a.isUpdated();
        }

        public boolean c() {
            return this.f1167a.isRemoved();
        }

        public boolean d() {
            return this.f1167a.isInvalid();
        }
    }

    public interface q {
        void a(View view);

        void b(View view);
    }

    public static abstract class r {
        public abstract boolean a(int i2, int i3);
    }

    public interface s {
        void a(RecyclerView recyclerView, MotionEvent motionEvent);

        void a(boolean z);

        boolean b(RecyclerView recyclerView, MotionEvent motionEvent);
    }

    public static abstract class t {
        public void a(RecyclerView recyclerView, int i2) {
        }

        public void a(RecyclerView recyclerView, int i2, int i3) {
        }
    }

    public static class u {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        SparseArray<a> f1171a = new SparseArray<>();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f1172b = 0;

        static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final ArrayList<d0> f1173a = new ArrayList<>();

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            int f1174b = 5;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            long f1175c = 0;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            long f1176d = 0;

            a() {
            }
        }

        private a b(int i2) {
            a aVar = this.f1171a.get(i2);
            if (aVar != null) {
                return aVar;
            }
            a aVar2 = new a();
            this.f1171a.put(i2, aVar2);
            return aVar2;
        }

        long a(long j2, long j3) {
            return j2 == 0 ? j3 : ((j2 / 4) * 3) + (j3 / 4);
        }

        public d0 a(int i2) {
            a aVar = this.f1171a.get(i2);
            if (aVar == null || aVar.f1173a.isEmpty()) {
                return null;
            }
            return aVar.f1173a.remove(r2.size() - 1);
        }

        void a() {
            this.f1172b++;
        }

        void a(int i2, long j2) {
            a aVarB = b(i2);
            aVarB.f1176d = a(aVarB.f1176d, j2);
        }

        public void a(d0 d0Var) {
            int itemViewType = d0Var.getItemViewType();
            ArrayList<d0> arrayList = b(itemViewType).f1173a;
            if (this.f1171a.get(itemViewType).f1174b <= arrayList.size()) {
                return;
            }
            d0Var.resetInternal();
            arrayList.add(d0Var);
        }

        void a(g gVar, g gVar2, boolean z) {
            if (gVar != null) {
                c();
            }
            if (!z && this.f1172b == 0) {
                b();
            }
            if (gVar2 != null) {
                a();
            }
        }

        boolean a(int i2, long j2, long j3) {
            long j4 = b(i2).f1176d;
            return j4 == 0 || j2 + j4 < j3;
        }

        public void b() {
            for (int i2 = 0; i2 < this.f1171a.size(); i2++) {
                this.f1171a.valueAt(i2).f1173a.clear();
            }
        }

        void b(int i2, long j2) {
            a aVarB = b(i2);
            aVarB.f1175c = a(aVarB.f1175c, j2);
        }

        boolean b(int i2, long j2, long j3) {
            long j4 = b(i2).f1175c;
            return j4 == 0 || j2 + j4 < j3;
        }

        void c() {
            this.f1172b--;
        }
    }

    public final class v {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ArrayList<d0> f1177a = new ArrayList<>();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ArrayList<d0> f1178b = null;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final ArrayList<d0> f1179c = new ArrayList<>();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final List<d0> f1180d = Collections.unmodifiableList(this.f1177a);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f1181e = 2;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f1182f = 2;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        u f1183g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private b0 f1184h;

        public v() {
        }

        private void a(ViewGroup viewGroup, boolean z) {
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (childAt instanceof ViewGroup) {
                    a((ViewGroup) childAt, true);
                }
            }
            if (z) {
                if (viewGroup.getVisibility() == 4) {
                    viewGroup.setVisibility(0);
                    viewGroup.setVisibility(4);
                } else {
                    int visibility = viewGroup.getVisibility();
                    viewGroup.setVisibility(4);
                    viewGroup.setVisibility(visibility);
                }
            }
        }

        private boolean a(d0 d0Var, int i2, int i3, long j2) {
            d0Var.mOwnerRecyclerView = RecyclerView.this;
            int itemViewType = d0Var.getItemViewType();
            long nanoTime = RecyclerView.this.getNanoTime();
            if (j2 != Long.MAX_VALUE && !this.f1183g.a(itemViewType, nanoTime, j2)) {
                return false;
            }
            RecyclerView.this.mAdapter.bindViewHolder(d0Var, i2);
            this.f1183g.a(d0Var.getItemViewType(), RecyclerView.this.getNanoTime() - nanoTime);
            e(d0Var);
            if (!RecyclerView.this.mState.d()) {
                return true;
            }
            d0Var.mPreLayoutPosition = i3;
            return true;
        }

        private void e(d0 d0Var) {
            if (RecyclerView.this.isAccessibilityEnabled()) {
                View view = d0Var.itemView;
                if (b.h.o.s.i(view) == 0) {
                    b.h.o.s.f(view, 1);
                }
                if (b.h.o.s.u(view)) {
                    return;
                }
                d0Var.addFlags(16384);
                b.h.o.s.a(view, RecyclerView.this.mAccessibilityDelegate.a());
            }
        }

        private void f(d0 d0Var) {
            View view = d0Var.itemView;
            if (view instanceof ViewGroup) {
                a((ViewGroup) view, false);
            }
        }

        public int a(int i2) {
            if (i2 >= 0 && i2 < RecyclerView.this.mState.a()) {
                return !RecyclerView.this.mState.d() ? i2 : RecyclerView.this.mAdapterHelper.b(i2);
            }
            throw new IndexOutOfBoundsException("invalid position " + i2 + ". State item count is " + RecyclerView.this.mState.a() + RecyclerView.this.exceptionLabel());
        }

        d0 a(int i2, boolean z) {
            View viewB;
            int size = this.f1177a.size();
            for (int i3 = 0; i3 < size; i3++) {
                d0 d0Var = this.f1177a.get(i3);
                if (!d0Var.wasReturnedFromScrap() && d0Var.getLayoutPosition() == i2 && !d0Var.isInvalid() && (RecyclerView.this.mState.f1126h || !d0Var.isRemoved())) {
                    d0Var.addFlags(32);
                    return d0Var;
                }
            }
            if (z || (viewB = RecyclerView.this.mChildHelper.b(i2)) == null) {
                int size2 = this.f1179c.size();
                for (int i4 = 0; i4 < size2; i4++) {
                    d0 d0Var2 = this.f1179c.get(i4);
                    if (!d0Var2.isInvalid() && d0Var2.getLayoutPosition() == i2) {
                        if (!z) {
                            this.f1179c.remove(i4);
                        }
                        return d0Var2;
                    }
                }
                return null;
            }
            d0 childViewHolderInt = RecyclerView.getChildViewHolderInt(viewB);
            RecyclerView.this.mChildHelper.f(viewB);
            int iB = RecyclerView.this.mChildHelper.b(viewB);
            if (iB != -1) {
                RecyclerView.this.mChildHelper.a(iB);
                c(viewB);
                childViewHolderInt.addFlags(8224);
                return childViewHolderInt;
            }
            throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + childViewHolderInt + RecyclerView.this.exceptionLabel());
        }

        /* JADX WARN: Removed duplicated region for block: B:100:0x0210  */
        /* JADX WARN: Removed duplicated region for block: B:106:0x0225 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:108:0x0228  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x005c  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x005f  */
        /* JADX WARN: Removed duplicated region for block: B:72:0x0185 A[PHI: r1 r4
          0x0185: PHI (r1v12 androidx.recyclerview.widget.RecyclerView$d0) = (r1v11 androidx.recyclerview.widget.RecyclerView$d0), (r1v31 androidx.recyclerview.widget.RecyclerView$d0) binds: [B:28:0x005d, B:58:0x0101] A[DONT_GENERATE, DONT_INLINE]
          0x0185: PHI (r4v3 boolean) = (r4v2 boolean), (r4v7 boolean) binds: [B:28:0x005d, B:58:0x0101] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:81:0x01a6  */
        /* JADX WARN: Removed duplicated region for block: B:87:0x01d2  */
        /* JADX WARN: Removed duplicated region for block: B:98:0x0202  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        androidx.recyclerview.widget.RecyclerView.d0 a(int r17, boolean r18, long r19) {
            /*
                Method dump skipped, instruction units count: 614
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.v.a(int, boolean, long):androidx.recyclerview.widget.RecyclerView$d0");
        }

        d0 a(long j2, int i2, boolean z) {
            for (int size = this.f1177a.size() - 1; size >= 0; size--) {
                d0 d0Var = this.f1177a.get(size);
                if (d0Var.getItemId() == j2 && !d0Var.wasReturnedFromScrap()) {
                    if (i2 == d0Var.getItemViewType()) {
                        d0Var.addFlags(32);
                        if (d0Var.isRemoved() && !RecyclerView.this.mState.d()) {
                            d0Var.setFlags(2, 14);
                        }
                        return d0Var;
                    }
                    if (!z) {
                        this.f1177a.remove(size);
                        RecyclerView.this.removeDetachedView(d0Var.itemView, false);
                        a(d0Var.itemView);
                    }
                }
            }
            int size2 = this.f1179c.size();
            while (true) {
                size2--;
                if (size2 < 0) {
                    return null;
                }
                d0 d0Var2 = this.f1179c.get(size2);
                if (d0Var2.getItemId() == j2) {
                    if (i2 == d0Var2.getItemViewType()) {
                        if (!z) {
                            this.f1179c.remove(size2);
                        }
                        return d0Var2;
                    }
                    if (!z) {
                        e(size2);
                        return null;
                    }
                }
            }
        }

        public void a() {
            this.f1177a.clear();
            i();
        }

        void a(int i2, int i3) {
            int size = this.f1179c.size();
            for (int i4 = 0; i4 < size; i4++) {
                d0 d0Var = this.f1179c.get(i4);
                if (d0Var != null && d0Var.mPosition >= i2) {
                    d0Var.offsetPosition(i3, true);
                }
            }
        }

        void a(int i2, int i3, boolean z) {
            int i4 = i2 + i3;
            for (int size = this.f1179c.size() - 1; size >= 0; size--) {
                d0 d0Var = this.f1179c.get(size);
                if (d0Var != null) {
                    int i5 = d0Var.mPosition;
                    if (i5 >= i4) {
                        d0Var.offsetPosition(-i3, z);
                    } else if (i5 >= i2) {
                        d0Var.addFlags(8);
                        e(size);
                    }
                }
            }
        }

        void a(View view) {
            d0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            childViewHolderInt.mScrapContainer = null;
            childViewHolderInt.mInChangeScrap = false;
            childViewHolderInt.clearReturnedFromScrapFlag();
            b(childViewHolderInt);
        }

        void a(b0 b0Var) {
            this.f1184h = b0Var;
        }

        void a(d0 d0Var) {
            w wVar = RecyclerView.this.mRecyclerListener;
            if (wVar != null) {
                wVar.a(d0Var);
            }
            g gVar = RecyclerView.this.mAdapter;
            if (gVar != null) {
                gVar.onViewRecycled(d0Var);
            }
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.mState != null) {
                recyclerView.mViewInfoStore.h(d0Var);
            }
        }

        void a(d0 d0Var, boolean z) {
            RecyclerView.clearNestedRecyclerViewIfNotNested(d0Var);
            if (d0Var.hasAnyOfTheFlags(16384)) {
                d0Var.setFlags(0, 16384);
                b.h.o.s.a(d0Var.itemView, (b.h.o.a) null);
            }
            if (z) {
                a(d0Var);
            }
            d0Var.mOwnerRecyclerView = null;
            d().a(d0Var);
        }

        void a(g gVar, g gVar2, boolean z) {
            a();
            d().a(gVar, gVar2, z);
        }

        void a(u uVar) {
            u uVar2 = this.f1183g;
            if (uVar2 != null) {
                uVar2.c();
            }
            this.f1183g = uVar;
            if (this.f1183g == null || RecyclerView.this.getAdapter() == null) {
                return;
            }
            this.f1183g.a();
        }

        View b(int i2, boolean z) {
            return a(i2, z, Long.MAX_VALUE).itemView;
        }

        d0 b(int i2) {
            int size;
            int iB;
            ArrayList<d0> arrayList = this.f1178b;
            if (arrayList != null && (size = arrayList.size()) != 0) {
                for (int i3 = 0; i3 < size; i3++) {
                    d0 d0Var = this.f1178b.get(i3);
                    if (!d0Var.wasReturnedFromScrap() && d0Var.getLayoutPosition() == i2) {
                        d0Var.addFlags(32);
                        return d0Var;
                    }
                }
                if (RecyclerView.this.mAdapter.hasStableIds() && (iB = RecyclerView.this.mAdapterHelper.b(i2)) > 0 && iB < RecyclerView.this.mAdapter.getItemCount()) {
                    long itemId = RecyclerView.this.mAdapter.getItemId(iB);
                    for (int i4 = 0; i4 < size; i4++) {
                        d0 d0Var2 = this.f1178b.get(i4);
                        if (!d0Var2.wasReturnedFromScrap() && d0Var2.getItemId() == itemId) {
                            d0Var2.addFlags(32);
                            return d0Var2;
                        }
                    }
                }
            }
            return null;
        }

        void b() {
            int size = this.f1179c.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f1179c.get(i2).clearOldPosition();
            }
            int size2 = this.f1177a.size();
            for (int i3 = 0; i3 < size2; i3++) {
                this.f1177a.get(i3).clearOldPosition();
            }
            ArrayList<d0> arrayList = this.f1178b;
            if (arrayList != null) {
                int size3 = arrayList.size();
                for (int i4 = 0; i4 < size3; i4++) {
                    this.f1178b.get(i4).clearOldPosition();
                }
            }
        }

        void b(int i2, int i3) {
            int i4;
            int i5;
            int i6;
            int i7;
            if (i2 < i3) {
                i5 = i2;
                i4 = i3;
                i6 = -1;
            } else {
                i4 = i2;
                i5 = i3;
                i6 = 1;
            }
            int size = this.f1179c.size();
            for (int i8 = 0; i8 < size; i8++) {
                d0 d0Var = this.f1179c.get(i8);
                if (d0Var != null && (i7 = d0Var.mPosition) >= i5 && i7 <= i4) {
                    if (i7 == i2) {
                        d0Var.offsetPosition(i3 - i2, false);
                    } else {
                        d0Var.offsetPosition(i6, false);
                    }
                }
            }
        }

        public void b(View view) {
            d0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt.isTmpDetached()) {
                RecyclerView.this.removeDetachedView(view, false);
            }
            if (childViewHolderInt.isScrap()) {
                childViewHolderInt.unScrap();
            } else if (childViewHolderInt.wasReturnedFromScrap()) {
                childViewHolderInt.clearReturnedFromScrapFlag();
            }
            b(childViewHolderInt);
        }

        void b(d0 d0Var) {
            boolean z;
            if (d0Var.isScrap() || d0Var.itemView.getParent() != null) {
                StringBuilder sb = new StringBuilder();
                sb.append("Scrapped or attached views may not be recycled. isScrap:");
                sb.append(d0Var.isScrap());
                sb.append(" isAttached:");
                sb.append(d0Var.itemView.getParent() != null);
                sb.append(RecyclerView.this.exceptionLabel());
                throw new IllegalArgumentException(sb.toString());
            }
            if (d0Var.isTmpDetached()) {
                throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + d0Var + RecyclerView.this.exceptionLabel());
            }
            if (d0Var.shouldIgnore()) {
                throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle." + RecyclerView.this.exceptionLabel());
            }
            boolean zDoesTransientStatePreventRecycling = d0Var.doesTransientStatePreventRecycling();
            g gVar = RecyclerView.this.mAdapter;
            if ((gVar != null && zDoesTransientStatePreventRecycling && gVar.onFailedToRecycleView(d0Var)) || d0Var.isRecyclable()) {
                if (this.f1182f <= 0 || d0Var.hasAnyOfTheFlags(526)) {
                    z = false;
                } else {
                    int size = this.f1179c.size();
                    if (size >= this.f1182f && size > 0) {
                        e(0);
                        size--;
                    }
                    if (RecyclerView.ALLOW_THREAD_GAP_WORK && size > 0 && !RecyclerView.this.mPrefetchRegistry.a(d0Var.mPosition)) {
                        int i2 = size - 1;
                        while (i2 >= 0) {
                            if (!RecyclerView.this.mPrefetchRegistry.a(this.f1179c.get(i2).mPosition)) {
                                break;
                            } else {
                                i2--;
                            }
                        }
                        size = i2 + 1;
                    }
                    this.f1179c.add(size, d0Var);
                    z = true;
                }
                if (!z) {
                    a(d0Var, true);
                    z = true;
                }
            } else {
                z = false;
            }
            RecyclerView.this.mViewInfoStore.h(d0Var);
            if (z || z || !zDoesTransientStatePreventRecycling) {
                return;
            }
            d0Var.mOwnerRecyclerView = null;
        }

        View c(int i2) {
            return this.f1177a.get(i2).itemView;
        }

        void c() {
            this.f1177a.clear();
            ArrayList<d0> arrayList = this.f1178b;
            if (arrayList != null) {
                arrayList.clear();
            }
        }

        void c(int i2, int i3) {
            int i4;
            int i5 = i3 + i2;
            for (int size = this.f1179c.size() - 1; size >= 0; size--) {
                d0 d0Var = this.f1179c.get(size);
                if (d0Var != null && (i4 = d0Var.mPosition) >= i2 && i4 < i5) {
                    d0Var.addFlags(2);
                    e(size);
                }
            }
        }

        void c(View view) {
            ArrayList<d0> arrayList;
            d0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (!childViewHolderInt.hasAnyOfTheFlags(12) && childViewHolderInt.isUpdated() && !RecyclerView.this.canReuseUpdatedViewHolder(childViewHolderInt)) {
                if (this.f1178b == null) {
                    this.f1178b = new ArrayList<>();
                }
                childViewHolderInt.setScrapContainer(this, true);
                arrayList = this.f1178b;
            } else {
                if (childViewHolderInt.isInvalid() && !childViewHolderInt.isRemoved() && !RecyclerView.this.mAdapter.hasStableIds()) {
                    throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool." + RecyclerView.this.exceptionLabel());
                }
                childViewHolderInt.setScrapContainer(this, false);
                arrayList = this.f1177a;
            }
            arrayList.add(childViewHolderInt);
        }

        void c(d0 d0Var) {
            (d0Var.mInChangeScrap ? this.f1178b : this.f1177a).remove(d0Var);
            d0Var.mScrapContainer = null;
            d0Var.mInChangeScrap = false;
            d0Var.clearReturnedFromScrapFlag();
        }

        public View d(int i2) {
            return b(i2, false);
        }

        u d() {
            if (this.f1183g == null) {
                this.f1183g = new u();
            }
            return this.f1183g;
        }

        boolean d(d0 d0Var) {
            if (d0Var.isRemoved()) {
                return RecyclerView.this.mState.d();
            }
            int i2 = d0Var.mPosition;
            if (i2 >= 0 && i2 < RecyclerView.this.mAdapter.getItemCount()) {
                if (RecyclerView.this.mState.d() || RecyclerView.this.mAdapter.getItemViewType(d0Var.mPosition) == d0Var.getItemViewType()) {
                    return !RecyclerView.this.mAdapter.hasStableIds() || d0Var.getItemId() == RecyclerView.this.mAdapter.getItemId(d0Var.mPosition);
                }
                return false;
            }
            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + d0Var + RecyclerView.this.exceptionLabel());
        }

        int e() {
            return this.f1177a.size();
        }

        void e(int i2) {
            a(this.f1179c.get(i2), true);
            this.f1179c.remove(i2);
        }

        public List<d0> f() {
            return this.f1180d;
        }

        public void f(int i2) {
            this.f1181e = i2;
            j();
        }

        void g() {
            int size = this.f1179c.size();
            for (int i2 = 0; i2 < size; i2++) {
                p pVar = (p) this.f1179c.get(i2).itemView.getLayoutParams();
                if (pVar != null) {
                    pVar.f1169c = true;
                }
            }
        }

        void h() {
            int size = this.f1179c.size();
            for (int i2 = 0; i2 < size; i2++) {
                d0 d0Var = this.f1179c.get(i2);
                if (d0Var != null) {
                    d0Var.addFlags(6);
                    d0Var.addChangePayload(null);
                }
            }
            g gVar = RecyclerView.this.mAdapter;
            if (gVar == null || !gVar.hasStableIds()) {
                i();
            }
        }

        void i() {
            for (int size = this.f1179c.size() - 1; size >= 0; size--) {
                e(size);
            }
            this.f1179c.clear();
            if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                RecyclerView.this.mPrefetchRegistry.a();
            }
        }

        void j() {
            o oVar = RecyclerView.this.mLayout;
            this.f1182f = this.f1181e + (oVar != null ? oVar.m : 0);
            for (int size = this.f1179c.size() - 1; size >= 0 && this.f1179c.size() > this.f1182f; size--) {
                e(size);
            }
        }
    }

    public interface w {
        void a(d0 d0Var);
    }

    private class x extends i {
        x() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i
        public void a() {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.mState.f1125g = true;
            recyclerView.processDataSetCompletelyChanged(true);
            if (RecyclerView.this.mAdapterHelper.c()) {
                return;
            }
            RecyclerView.this.requestLayout();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i
        public void a(int i2, int i3, int i4) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.a(i2, i3, i4)) {
                b();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i
        public void a(int i2, int i3, Object obj) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.a(i2, i3, obj)) {
                b();
            }
        }

        void b() {
            if (RecyclerView.POST_UPDATES_ON_ANIMATION) {
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.mHasFixedSize && recyclerView.mIsAttached) {
                    b.h.o.s.a(recyclerView, recyclerView.mUpdateChildViewsRunnable);
                    return;
                }
            }
            RecyclerView recyclerView2 = RecyclerView.this;
            recyclerView2.mAdapterUpdateDuringMeasure = true;
            recyclerView2.requestLayout();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i
        public void b(int i2, int i3) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.b(i2, i3)) {
                b();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i
        public void c(int i2, int i3) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.c(i2, i3)) {
                b();
            }
        }
    }

    public static class y extends b.j.a.a {
        public static final Parcelable.Creator<y> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Parcelable f1187b;

        static class a implements Parcelable.ClassLoaderCreator<y> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            public y createFromParcel(Parcel parcel) {
                return new y(parcel, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public y createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new y(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public y[] newArray(int i2) {
                return new y[i2];
            }
        }

        y(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1187b = parcel.readParcelable(classLoader == null ? o.class.getClassLoader() : classLoader);
        }

        y(Parcelable parcelable) {
            super(parcelable);
        }

        void a(y yVar) {
            this.f1187b = yVar.f1187b;
        }

        @Override // b.j.a.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeParcelable(this.f1187b, 0);
        }
    }

    public static abstract class z {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private RecyclerView f1189b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private o f1190c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f1191d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f1192e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private View f1193f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f1195h;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f1188a = -1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final a f1194g = new a(0, 0);

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private int f1196a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private int f1197b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private int f1198c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f1199d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private Interpolator f1200e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private boolean f1201f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            private int f1202g;

            public a(int i2, int i3) {
                this(i2, i3, Integer.MIN_VALUE, null);
            }

            public a(int i2, int i3, int i4, Interpolator interpolator) {
                this.f1199d = -1;
                this.f1201f = false;
                this.f1202g = 0;
                this.f1196a = i2;
                this.f1197b = i3;
                this.f1198c = i4;
                this.f1200e = interpolator;
            }

            private void b() {
                if (this.f1200e != null && this.f1198c < 1) {
                    throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
                }
                if (this.f1198c < 1) {
                    throw new IllegalStateException("Scroll duration must be a positive number");
                }
            }

            public void a(int i2) {
                this.f1199d = i2;
            }

            public void a(int i2, int i3, int i4, Interpolator interpolator) {
                this.f1196a = i2;
                this.f1197b = i3;
                this.f1198c = i4;
                this.f1200e = interpolator;
                this.f1201f = true;
            }

            void a(RecyclerView recyclerView) {
                int i2 = this.f1199d;
                if (i2 >= 0) {
                    this.f1199d = -1;
                    recyclerView.jumpToPositionForSmoothScroller(i2);
                    this.f1201f = false;
                    return;
                }
                if (!this.f1201f) {
                    this.f1202g = 0;
                    return;
                }
                b();
                Interpolator interpolator = this.f1200e;
                if (interpolator == null) {
                    int i3 = this.f1198c;
                    c0 c0Var = recyclerView.mViewFlinger;
                    if (i3 == Integer.MIN_VALUE) {
                        c0Var.b(this.f1196a, this.f1197b);
                    } else {
                        c0Var.a(this.f1196a, this.f1197b, i3);
                    }
                } else {
                    recyclerView.mViewFlinger.a(this.f1196a, this.f1197b, this.f1198c, interpolator);
                }
                this.f1202g++;
                if (this.f1202g > 10) {
                    Log.e(RecyclerView.TAG, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                }
                this.f1201f = false;
            }

            boolean a() {
                return this.f1199d >= 0;
            }
        }

        public interface b {
            PointF a(int i2);
        }

        public int a() {
            return this.f1189b.mLayout.e();
        }

        public int a(View view) {
            return this.f1189b.getChildLayoutPosition(view);
        }

        public PointF a(int i2) {
            Object objB = b();
            if (objB instanceof b) {
                return ((b) objB).a(i2);
            }
            Log.w(RecyclerView.TAG, "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + b.class.getCanonicalName());
            return null;
        }

        void a(int i2, int i3) {
            PointF pointFA;
            RecyclerView recyclerView = this.f1189b;
            if (!this.f1192e || this.f1188a == -1 || recyclerView == null) {
                h();
            }
            if (this.f1191d && this.f1193f == null && this.f1190c != null && (pointFA = a(this.f1188a)) != null && (pointFA.x != 0.0f || pointFA.y != 0.0f)) {
                recyclerView.scrollStep((int) Math.signum(pointFA.x), (int) Math.signum(pointFA.y), null);
            }
            this.f1191d = false;
            View view = this.f1193f;
            if (view != null) {
                if (a(view) == this.f1188a) {
                    a(this.f1193f, recyclerView.mState, this.f1194g);
                    this.f1194g.a(recyclerView);
                    h();
                } else {
                    Log.e(RecyclerView.TAG, "Passed over target position while smooth scrolling.");
                    this.f1193f = null;
                }
            }
            if (this.f1192e) {
                a(i2, i3, recyclerView.mState, this.f1194g);
                boolean zA = this.f1194g.a();
                this.f1194g.a(recyclerView);
                if (zA) {
                    if (!this.f1192e) {
                        h();
                    } else {
                        this.f1191d = true;
                        recyclerView.mViewFlinger.a();
                    }
                }
            }
        }

        protected abstract void a(int i2, int i3, a0 a0Var, a aVar);

        protected void a(PointF pointF) {
            float f2 = pointF.x;
            float f3 = pointF.y;
            float fSqrt = (float) Math.sqrt((f2 * f2) + (f3 * f3));
            pointF.x /= fSqrt;
            pointF.y /= fSqrt;
        }

        protected abstract void a(View view, a0 a0Var, a aVar);

        void a(RecyclerView recyclerView, o oVar) {
            if (this.f1195h) {
                Log.w(RecyclerView.TAG, "An instance of " + getClass().getSimpleName() + " was started more than once. Each instance of" + getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.");
            }
            this.f1189b = recyclerView;
            this.f1190c = oVar;
            int i2 = this.f1188a;
            if (i2 == -1) {
                throw new IllegalArgumentException("Invalid target position");
            }
            this.f1189b.mState.f1119a = i2;
            this.f1192e = true;
            this.f1191d = true;
            this.f1193f = b(c());
            f();
            this.f1189b.mViewFlinger.a();
            this.f1195h = true;
        }

        public View b(int i2) {
            return this.f1189b.mLayout.c(i2);
        }

        public o b() {
            return this.f1190c;
        }

        protected void b(View view) {
            if (a(view) == c()) {
                this.f1193f = view;
            }
        }

        public int c() {
            return this.f1188a;
        }

        public void c(int i2) {
            this.f1188a = i2;
        }

        public boolean d() {
            return this.f1191d;
        }

        public boolean e() {
            return this.f1192e;
        }

        protected abstract void f();

        protected abstract void g();

        protected final void h() {
            if (this.f1192e) {
                this.f1192e = false;
                g();
                this.f1189b.mState.f1119a = -1;
                this.f1193f = null;
                this.f1188a = -1;
                this.f1191d = false;
                this.f1190c.a(this);
                this.f1190c = null;
                this.f1189b = null;
            }
        }
    }

    static {
        int i2 = Build.VERSION.SDK_INT;
        FORCE_INVALIDATE_DISPLAY_LIST = i2 == 18 || i2 == 19 || i2 == 20;
        ALLOW_SIZE_IN_UNSPECIFIED_SPEC = Build.VERSION.SDK_INT >= 23;
        POST_UPDATES_ON_ANIMATION = Build.VERSION.SDK_INT >= 16;
        ALLOW_THREAD_GAP_WORK = Build.VERSION.SDK_INT >= 21;
        FORCE_ABS_FOCUS_SEARCH_DIRECTION = Build.VERSION.SDK_INT <= 15;
        IGNORE_DETACHED_FOCUSED_CHILD = Build.VERSION.SDK_INT <= 15;
        Class<?> cls = Integer.TYPE;
        LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE = new Class[]{Context.class, AttributeSet.class, cls, cls};
        sQuinticInterpolator = new c();
    }

    public RecyclerView(Context context) {
        this(context, null);
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RecyclerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mObserver = new x();
        this.mRecycler = new v();
        this.mViewInfoStore = new androidx.recyclerview.widget.y();
        this.mUpdateChildViewsRunnable = new a();
        this.mTempRect = new Rect();
        this.mTempRect2 = new Rect();
        this.mTempRectF = new RectF();
        this.mItemDecorations = new ArrayList<>();
        this.mOnItemTouchListeners = new ArrayList<>();
        this.mInterceptRequestLayoutDepth = 0;
        this.mDataSetHasChangedAfterLayout = false;
        this.mDispatchItemsChangedEvent = false;
        this.mLayoutOrScrollCounter = 0;
        this.mDispatchScrollCounter = 0;
        this.mEdgeEffectFactory = new k();
        this.mItemAnimator = new androidx.recyclerview.widget.g();
        this.mScrollState = 0;
        this.mScrollPointerId = -1;
        this.mScaledHorizontalScrollFactor = Float.MIN_VALUE;
        this.mScaledVerticalScrollFactor = Float.MIN_VALUE;
        boolean z2 = true;
        this.mPreserveFocusAfterLayout = true;
        this.mViewFlinger = new c0();
        this.mPrefetchRegistry = ALLOW_THREAD_GAP_WORK ? new j.b() : null;
        this.mState = new a0();
        this.mItemsAddedOrRemoved = false;
        this.mItemsChanged = false;
        this.mItemAnimatorListener = new m();
        this.mPostedAnimatorRunner = false;
        this.mMinMaxLayoutPositions = new int[2];
        this.mScrollOffset = new int[2];
        this.mScrollConsumed = new int[2];
        this.mNestedOffsets = new int[2];
        this.mScrollStepConsumed = new int[2];
        this.mPendingAccessibilityImportanceChange = new ArrayList();
        this.mItemAnimatorRunner = new b();
        this.mViewInfoProcessCallback = new d();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, CLIP_TO_PADDING_ATTR, i2, 0);
            this.mClipToPadding = typedArrayObtainStyledAttributes.getBoolean(0, true);
            typedArrayObtainStyledAttributes.recycle();
        } else {
            this.mClipToPadding = true;
        }
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mScaledHorizontalScrollFactor = b.h.o.t.b(viewConfiguration, context);
        this.mScaledVerticalScrollFactor = b.h.o.t.c(viewConfiguration, context);
        this.mMinFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mMaxFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.mItemAnimator.a(this.mItemAnimatorListener);
        initAdapterManager();
        initChildrenHelper();
        initAutofill();
        if (b.h.o.s.i(this) == 0) {
            b.h.o.s.f(this, 1);
        }
        this.mAccessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new androidx.recyclerview.widget.t(this));
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, b.p.b.RecyclerView, i2, 0);
            String string = typedArrayObtainStyledAttributes2.getString(b.p.b.RecyclerView_layoutManager);
            if (typedArrayObtainStyledAttributes2.getInt(b.p.b.RecyclerView_android_descendantFocusability, -1) == -1) {
                setDescendantFocusability(262144);
            }
            this.mEnableFastScroller = typedArrayObtainStyledAttributes2.getBoolean(b.p.b.RecyclerView_fastScrollEnabled, false);
            if (this.mEnableFastScroller) {
                initFastScroller((StateListDrawable) typedArrayObtainStyledAttributes2.getDrawable(b.p.b.RecyclerView_fastScrollVerticalThumbDrawable), typedArrayObtainStyledAttributes2.getDrawable(b.p.b.RecyclerView_fastScrollVerticalTrackDrawable), (StateListDrawable) typedArrayObtainStyledAttributes2.getDrawable(b.p.b.RecyclerView_fastScrollHorizontalThumbDrawable), typedArrayObtainStyledAttributes2.getDrawable(b.p.b.RecyclerView_fastScrollHorizontalTrackDrawable));
            }
            typedArrayObtainStyledAttributes2.recycle();
            createLayoutManager(context, string, attributeSet, i2, 0);
            if (Build.VERSION.SDK_INT >= 21) {
                TypedArray typedArrayObtainStyledAttributes3 = context.obtainStyledAttributes(attributeSet, NESTED_SCROLLING_ATTRS, i2, 0);
                boolean z3 = typedArrayObtainStyledAttributes3.getBoolean(0, true);
                typedArrayObtainStyledAttributes3.recycle();
                z2 = z3;
            }
        } else {
            setDescendantFocusability(262144);
        }
        setNestedScrollingEnabled(z2);
    }

    private void addAnimatingView(d0 d0Var) {
        View view = d0Var.itemView;
        boolean z2 = view.getParent() == this;
        this.mRecycler.c(getChildViewHolder(view));
        if (d0Var.isTmpDetached()) {
            this.mChildHelper.a(view, -1, view.getLayoutParams(), true);
            return;
        }
        androidx.recyclerview.widget.f fVar = this.mChildHelper;
        if (z2) {
            fVar.a(view);
        } else {
            fVar.a(view, true);
        }
    }

    private void animateChange(d0 d0Var, d0 d0Var2, l.c cVar, l.c cVar2, boolean z2, boolean z3) {
        d0Var.setIsRecyclable(false);
        if (z2) {
            addAnimatingView(d0Var);
        }
        if (d0Var != d0Var2) {
            if (z3) {
                addAnimatingView(d0Var2);
            }
            d0Var.mShadowedHolder = d0Var2;
            addAnimatingView(d0Var);
            this.mRecycler.c(d0Var);
            d0Var2.setIsRecyclable(false);
            d0Var2.mShadowingHolder = d0Var;
        }
        if (this.mItemAnimator.a(d0Var, d0Var2, cVar, cVar2)) {
            postAnimationRunner();
        }
    }

    private void cancelTouch() {
        resetTouch();
        setScrollState(0);
    }

    static void clearNestedRecyclerViewIfNotNested(d0 d0Var) {
        WeakReference<RecyclerView> weakReference = d0Var.mNestedRecyclerView;
        if (weakReference != null) {
            Object parent = weakReference.get();
            while (true) {
                for (View view = (View) parent; view != null; view = null) {
                    if (view == d0Var.itemView) {
                        return;
                    }
                    parent = view.getParent();
                    if (parent instanceof View) {
                        break;
                    }
                }
                d0Var.mNestedRecyclerView = null;
                return;
            }
        }
    }

    private void createLayoutManager(Context context, String str, AttributeSet attributeSet, int i2, int i3) {
        Constructor constructor;
        if (str != null) {
            String strTrim = str.trim();
            if (strTrim.isEmpty()) {
                return;
            }
            String fullClassName = getFullClassName(context, strTrim);
            try {
                Class<? extends U> clsAsSubclass = (isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).loadClass(fullClassName).asSubclass(o.class);
                Object[] objArr = null;
                try {
                    constructor = clsAsSubclass.getConstructor(LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE);
                    objArr = new Object[]{context, attributeSet, Integer.valueOf(i2), Integer.valueOf(i3)};
                } catch (NoSuchMethodException e2) {
                    try {
                        constructor = clsAsSubclass.getConstructor(new Class[0]);
                    } catch (NoSuchMethodException e3) {
                        e3.initCause(e2);
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + fullClassName, e3);
                    }
                }
                constructor.setAccessible(true);
                setLayoutManager((o) constructor.newInstance(objArr));
            } catch (ClassCastException e4) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + fullClassName, e4);
            } catch (ClassNotFoundException e5) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + fullClassName, e5);
            } catch (IllegalAccessException e6) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + fullClassName, e6);
            } catch (InstantiationException e7) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + fullClassName, e7);
            } catch (InvocationTargetException e8) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + fullClassName, e8);
            }
        }
    }

    private boolean didChildRangeChange(int i2, int i3) {
        findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
        int[] iArr = this.mMinMaxLayoutPositions;
        return (iArr[0] == i2 && iArr[1] == i3) ? false : true;
    }

    private void dispatchContentChangedIfNecessary() {
        int i2 = this.mEatenAccessibilityChangeFlags;
        this.mEatenAccessibilityChangeFlags = 0;
        if (i2 == 0 || !isAccessibilityEnabled()) {
            return;
        }
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
        accessibilityEventObtain.setEventType(2048);
        b.h.o.b0.a.a(accessibilityEventObtain, i2);
        sendAccessibilityEventUnchecked(accessibilityEventObtain);
    }

    private void dispatchLayoutStep1() {
        this.mState.a(1);
        fillRemainingScrollValues(this.mState);
        this.mState.f1128j = false;
        startInterceptRequestLayout();
        this.mViewInfoStore.a();
        onEnterLayoutOrScroll();
        processAdapterUpdatesAndSetAnimationFlags();
        saveFocusInfo();
        a0 a0Var = this.mState;
        a0Var.f1127i = a0Var.f1129k && this.mItemsChanged;
        this.mItemsChanged = false;
        this.mItemsAddedOrRemoved = false;
        a0 a0Var2 = this.mState;
        a0Var2.f1126h = a0Var2.l;
        a0Var2.f1124f = this.mAdapter.getItemCount();
        findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
        if (this.mState.f1129k) {
            int iA = this.mChildHelper.a();
            for (int i2 = 0; i2 < iA; i2++) {
                d0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.c(i2));
                if (!childViewHolderInt.shouldIgnore() && (!childViewHolderInt.isInvalid() || this.mAdapter.hasStableIds())) {
                    this.mViewInfoStore.c(childViewHolderInt, this.mItemAnimator.a(this.mState, childViewHolderInt, l.e(childViewHolderInt), childViewHolderInt.getUnmodifiedPayloads()));
                    if (this.mState.f1127i && childViewHolderInt.isUpdated() && !childViewHolderInt.isRemoved() && !childViewHolderInt.shouldIgnore() && !childViewHolderInt.isInvalid()) {
                        this.mViewInfoStore.a(getChangedHolderKey(childViewHolderInt), childViewHolderInt);
                    }
                }
            }
        }
        if (this.mState.l) {
            saveOldPositions();
            a0 a0Var3 = this.mState;
            boolean z2 = a0Var3.f1125g;
            a0Var3.f1125g = false;
            this.mLayout.e(this.mRecycler, a0Var3);
            this.mState.f1125g = z2;
            for (int i3 = 0; i3 < this.mChildHelper.a(); i3++) {
                d0 childViewHolderInt2 = getChildViewHolderInt(this.mChildHelper.c(i3));
                if (!childViewHolderInt2.shouldIgnore() && !this.mViewInfoStore.c(childViewHolderInt2)) {
                    int iE = l.e(childViewHolderInt2);
                    boolean zHasAnyOfTheFlags = childViewHolderInt2.hasAnyOfTheFlags(8192);
                    if (!zHasAnyOfTheFlags) {
                        iE |= MpegAudioHeader.MAX_FRAME_SIZE_BYTES;
                    }
                    l.c cVarA = this.mItemAnimator.a(this.mState, childViewHolderInt2, iE, childViewHolderInt2.getUnmodifiedPayloads());
                    if (zHasAnyOfTheFlags) {
                        recordAnimationInfoIfBouncedHiddenView(childViewHolderInt2, cVarA);
                    } else {
                        this.mViewInfoStore.a(childViewHolderInt2, cVarA);
                    }
                }
            }
        }
        clearOldPositions();
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        this.mState.f1123e = 2;
    }

    private void dispatchLayoutStep2() {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        this.mState.a(6);
        this.mAdapterHelper.b();
        this.mState.f1124f = this.mAdapter.getItemCount();
        a0 a0Var = this.mState;
        a0Var.f1122d = 0;
        a0Var.f1126h = false;
        this.mLayout.e(this.mRecycler, a0Var);
        a0 a0Var2 = this.mState;
        a0Var2.f1125g = false;
        this.mPendingSavedState = null;
        a0Var2.f1129k = a0Var2.f1129k && this.mItemAnimator != null;
        this.mState.f1123e = 4;
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0079  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void dispatchLayoutStep3() {
        /*
            Method dump skipped, instruction units count: 226
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.dispatchLayoutStep3():void");
    }

    private boolean dispatchOnItemTouch(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        s sVar = this.mActiveOnItemTouchListener;
        if (sVar != null) {
            if (action != 0) {
                sVar.a(this, motionEvent);
                if (action == 3 || action == 1) {
                    this.mActiveOnItemTouchListener = null;
                }
                return true;
            }
            this.mActiveOnItemTouchListener = null;
        }
        if (action != 0) {
            int size = this.mOnItemTouchListeners.size();
            for (int i2 = 0; i2 < size; i2++) {
                s sVar2 = this.mOnItemTouchListeners.get(i2);
                if (sVar2.b(this, motionEvent)) {
                    this.mActiveOnItemTouchListener = sVar2;
                    return true;
                }
            }
        }
        return false;
    }

    private boolean dispatchOnItemTouchIntercept(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 3 || action == 0) {
            this.mActiveOnItemTouchListener = null;
        }
        int size = this.mOnItemTouchListeners.size();
        for (int i2 = 0; i2 < size; i2++) {
            s sVar = this.mOnItemTouchListeners.get(i2);
            if (sVar.b(this, motionEvent) && action != 3) {
                this.mActiveOnItemTouchListener = sVar;
                return true;
            }
        }
        return false;
    }

    private void findMinMaxChildLayoutPositions(int[] iArr) {
        int iA = this.mChildHelper.a();
        if (iA == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i2 = Integer.MAX_VALUE;
        int i3 = Integer.MIN_VALUE;
        for (int i4 = 0; i4 < iA; i4++) {
            d0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.c(i4));
            if (!childViewHolderInt.shouldIgnore()) {
                int layoutPosition = childViewHolderInt.getLayoutPosition();
                if (layoutPosition < i2) {
                    i2 = layoutPosition;
                }
                if (layoutPosition > i3) {
                    i3 = layoutPosition;
                }
            }
        }
        iArr[0] = i2;
        iArr[1] = i3;
    }

    static RecyclerView findNestedRecyclerView(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            RecyclerView recyclerViewFindNestedRecyclerView = findNestedRecyclerView(viewGroup.getChildAt(i2));
            if (recyclerViewFindNestedRecyclerView != null) {
                return recyclerViewFindNestedRecyclerView;
            }
        }
        return null;
    }

    private View findNextViewToFocus() {
        d0 d0VarFindViewHolderForAdapterPosition;
        int i2 = this.mState.m;
        if (i2 == -1) {
            i2 = 0;
        }
        int iA = this.mState.a();
        for (int i3 = i2; i3 < iA; i3++) {
            d0 d0VarFindViewHolderForAdapterPosition2 = findViewHolderForAdapterPosition(i3);
            if (d0VarFindViewHolderForAdapterPosition2 == null) {
                break;
            }
            if (d0VarFindViewHolderForAdapterPosition2.itemView.hasFocusable()) {
                return d0VarFindViewHolderForAdapterPosition2.itemView;
            }
        }
        int iMin = Math.min(iA, i2);
        do {
            iMin--;
            if (iMin < 0 || (d0VarFindViewHolderForAdapterPosition = findViewHolderForAdapterPosition(iMin)) == null) {
                return null;
            }
        } while (!d0VarFindViewHolderForAdapterPosition.itemView.hasFocusable());
        return d0VarFindViewHolderForAdapterPosition.itemView;
    }

    static d0 getChildViewHolderInt(View view) {
        if (view == null) {
            return null;
        }
        return ((p) view.getLayoutParams()).f1167a;
    }

    static void getDecoratedBoundsWithMarginsInt(View view, Rect rect) {
        p pVar = (p) view.getLayoutParams();
        Rect rect2 = pVar.f1168b;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) pVar).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) pVar).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) pVar).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) pVar).bottomMargin);
    }

    private int getDeepestFocusedViewWithId(View view) {
        int id;
        loop0: while (true) {
            id = view.getId();
            while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
                view = ((ViewGroup) view).getFocusedChild();
                if (view.getId() != -1) {
                    break;
                }
            }
        }
        return id;
    }

    private String getFullClassName(Context context, String str) {
        if (str.charAt(0) == '.') {
            return context.getPackageName() + str;
        }
        if (str.contains(".")) {
            return str;
        }
        return RecyclerView.class.getPackage().getName() + '.' + str;
    }

    private b.h.o.k getScrollingChildHelper() {
        if (this.mScrollingChildHelper == null) {
            this.mScrollingChildHelper = new b.h.o.k(this);
        }
        return this.mScrollingChildHelper;
    }

    private void handleMissingPreInfoForChangeError(long j2, d0 d0Var, d0 d0Var2) {
        int iA = this.mChildHelper.a();
        for (int i2 = 0; i2 < iA; i2++) {
            d0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.c(i2));
            if (childViewHolderInt != d0Var && getChangedHolderKey(childViewHolderInt) == j2) {
                g gVar = this.mAdapter;
                if (gVar == null || !gVar.hasStableIds()) {
                    throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + childViewHolderInt + " \n View Holder 2:" + d0Var + exceptionLabel());
                }
                throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + childViewHolderInt + " \n View Holder 2:" + d0Var + exceptionLabel());
            }
        }
        Log.e(TAG, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + d0Var2 + " cannot be found but it is necessary for " + d0Var + exceptionLabel());
    }

    private boolean hasUpdatedView() {
        int iA = this.mChildHelper.a();
        for (int i2 = 0; i2 < iA; i2++) {
            d0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.c(i2));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.isUpdated()) {
                return true;
            }
        }
        return false;
    }

    @SuppressLint({"InlinedApi"})
    private void initAutofill() {
        if (b.h.o.s.j(this) == 0) {
            b.h.o.s.g(this, 8);
        }
    }

    private void initChildrenHelper() {
        this.mChildHelper = new androidx.recyclerview.widget.f(new e());
    }

    private boolean isPreferredNextFocus(View view, View view2, int i2) {
        int i3;
        if (view2 == null || view2 == this || findContainingItemView(view2) == null) {
            return false;
        }
        if (view == null || findContainingItemView(view) == null) {
            return true;
        }
        this.mTempRect.set(0, 0, view.getWidth(), view.getHeight());
        this.mTempRect2.set(0, 0, view2.getWidth(), view2.getHeight());
        offsetDescendantRectToMyCoords(view, this.mTempRect);
        offsetDescendantRectToMyCoords(view2, this.mTempRect2);
        byte b2 = -1;
        int i4 = this.mLayout.k() == 1 ? -1 : 1;
        Rect rect = this.mTempRect;
        int i5 = rect.left;
        int i6 = this.mTempRect2.left;
        if ((i5 < i6 || rect.right <= i6) && this.mTempRect.right < this.mTempRect2.right) {
            i3 = 1;
        } else {
            Rect rect2 = this.mTempRect;
            int i7 = rect2.right;
            int i8 = this.mTempRect2.right;
            i3 = ((i7 > i8 || rect2.left >= i8) && this.mTempRect.left > this.mTempRect2.left) ? -1 : 0;
        }
        Rect rect3 = this.mTempRect;
        int i9 = rect3.top;
        int i10 = this.mTempRect2.top;
        if ((i9 < i10 || rect3.bottom <= i10) && this.mTempRect.bottom < this.mTempRect2.bottom) {
            b2 = 1;
        } else {
            Rect rect4 = this.mTempRect;
            int i11 = rect4.bottom;
            int i12 = this.mTempRect2.bottom;
            if ((i11 <= i12 && rect4.top < i12) || this.mTempRect.top <= this.mTempRect2.top) {
                b2 = 0;
            }
        }
        if (i2 == 1) {
            return b2 < 0 || (b2 == 0 && i3 * i4 <= 0);
        }
        if (i2 == 2) {
            return b2 > 0 || (b2 == 0 && i3 * i4 >= 0);
        }
        if (i2 == 17) {
            return i3 < 0;
        }
        if (i2 == 33) {
            return b2 < 0;
        }
        if (i2 == 66) {
            return i3 > 0;
        }
        if (i2 == 130) {
            return b2 > 0;
        }
        throw new IllegalArgumentException("Invalid direction: " + i2 + exceptionLabel());
    }

    private void onPointerUp(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.mScrollPointerId) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.mScrollPointerId = motionEvent.getPointerId(i2);
            int x2 = (int) (motionEvent.getX(i2) + 0.5f);
            this.mLastTouchX = x2;
            this.mInitialTouchX = x2;
            int y2 = (int) (motionEvent.getY(i2) + 0.5f);
            this.mLastTouchY = y2;
            this.mInitialTouchY = y2;
        }
    }

    private boolean predictiveItemAnimationsEnabled() {
        return this.mItemAnimator != null && this.mLayout.D();
    }

    private void processAdapterUpdatesAndSetAnimationFlags() {
        if (this.mDataSetHasChangedAfterLayout) {
            this.mAdapterHelper.f();
            if (this.mDispatchItemsChangedEvent) {
                this.mLayout.d(this);
            }
        }
        if (predictiveItemAnimationsEnabled()) {
            this.mAdapterHelper.e();
        } else {
            this.mAdapterHelper.b();
        }
        boolean z2 = false;
        boolean z3 = this.mItemsAddedOrRemoved || this.mItemsChanged;
        this.mState.f1129k = this.mFirstLayoutComplete && this.mItemAnimator != null && (this.mDataSetHasChangedAfterLayout || z3 || this.mLayout.f1157h) && (!this.mDataSetHasChangedAfterLayout || this.mAdapter.hasStableIds());
        a0 a0Var = this.mState;
        if (a0Var.f1129k && z3 && !this.mDataSetHasChangedAfterLayout && predictiveItemAnimationsEnabled()) {
            z2 = true;
        }
        a0Var.l = z2;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0053  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void pullGlows(float r7, float r8, float r9, float r10) {
        /*
            r6 = this;
            r0 = 1065353216(0x3f800000, float:1.0)
            r1 = 1
            r2 = 0
            int r3 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r3 >= 0) goto L21
            r6.ensureLeftGlow()
            android.widget.EdgeEffect r3 = r6.mLeftGlow
            float r4 = -r8
            int r5 = r6.getWidth()
            float r5 = (float) r5
            float r4 = r4 / r5
            int r5 = r6.getHeight()
            float r5 = (float) r5
            float r9 = r9 / r5
            float r9 = r0 - r9
        L1c:
            androidx.core.widget.d.a(r3, r4, r9)
            r9 = 1
            goto L39
        L21:
            int r3 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r3 <= 0) goto L38
            r6.ensureRightGlow()
            android.widget.EdgeEffect r3 = r6.mRightGlow
            int r4 = r6.getWidth()
            float r4 = (float) r4
            float r4 = r8 / r4
            int r5 = r6.getHeight()
            float r5 = (float) r5
            float r9 = r9 / r5
            goto L1c
        L38:
            r9 = 0
        L39:
            int r3 = (r10 > r2 ? 1 : (r10 == r2 ? 0 : -1))
            if (r3 >= 0) goto L53
            r6.ensureTopGlow()
            android.widget.EdgeEffect r9 = r6.mTopGlow
            float r0 = -r10
            int r3 = r6.getHeight()
            float r3 = (float) r3
            float r0 = r0 / r3
            int r3 = r6.getWidth()
            float r3 = (float) r3
            float r7 = r7 / r3
            androidx.core.widget.d.a(r9, r0, r7)
            goto L6f
        L53:
            int r3 = (r10 > r2 ? 1 : (r10 == r2 ? 0 : -1))
            if (r3 <= 0) goto L6e
            r6.ensureBottomGlow()
            android.widget.EdgeEffect r9 = r6.mBottomGlow
            int r3 = r6.getHeight()
            float r3 = (float) r3
            float r3 = r10 / r3
            int r4 = r6.getWidth()
            float r4 = (float) r4
            float r7 = r7 / r4
            float r0 = r0 - r7
            androidx.core.widget.d.a(r9, r3, r0)
            goto L6f
        L6e:
            r1 = r9
        L6f:
            if (r1 != 0) goto L79
            int r7 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r7 != 0) goto L79
            int r7 = (r10 > r2 ? 1 : (r10 == r2 ? 0 : -1))
            if (r7 == 0) goto L7c
        L79:
            b.h.o.s.C(r6)
        L7c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.pullGlows(float, float, float, float):void");
    }

    private void recoverFocusFromState() {
        View viewFindViewById;
        if (!this.mPreserveFocusAfterLayout || this.mAdapter == null || !hasFocus() || getDescendantFocusability() == 393216) {
            return;
        }
        if (getDescendantFocusability() == 131072 && isFocused()) {
            return;
        }
        if (!isFocused()) {
            View focusedChild = getFocusedChild();
            if (!IGNORE_DETACHED_FOCUSED_CHILD || (focusedChild.getParent() != null && focusedChild.hasFocus())) {
                if (!this.mChildHelper.c(focusedChild)) {
                    return;
                }
            } else if (this.mChildHelper.a() == 0) {
                requestFocus();
                return;
            }
        }
        View viewFindNextViewToFocus = null;
        d0 d0VarFindViewHolderForItemId = (this.mState.n == -1 || !this.mAdapter.hasStableIds()) ? null : findViewHolderForItemId(this.mState.n);
        if (d0VarFindViewHolderForItemId != null && !this.mChildHelper.c(d0VarFindViewHolderForItemId.itemView) && d0VarFindViewHolderForItemId.itemView.hasFocusable()) {
            viewFindNextViewToFocus = d0VarFindViewHolderForItemId.itemView;
        } else if (this.mChildHelper.a() > 0) {
            viewFindNextViewToFocus = findNextViewToFocus();
        }
        if (viewFindNextViewToFocus != null) {
            int i2 = this.mState.o;
            if (i2 == -1 || (viewFindViewById = viewFindNextViewToFocus.findViewById(i2)) == null || !viewFindViewById.isFocusable()) {
                viewFindViewById = viewFindNextViewToFocus;
            }
            viewFindViewById.requestFocus();
        }
    }

    private void releaseGlows() {
        boolean zIsFinished;
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            zIsFinished = this.mLeftGlow.isFinished();
        } else {
            zIsFinished = false;
        }
        EdgeEffect edgeEffect2 = this.mTopGlow;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            zIsFinished |= this.mTopGlow.isFinished();
        }
        EdgeEffect edgeEffect3 = this.mRightGlow;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            zIsFinished |= this.mRightGlow.isFinished();
        }
        EdgeEffect edgeEffect4 = this.mBottomGlow;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            zIsFinished |= this.mBottomGlow.isFinished();
        }
        if (zIsFinished) {
            b.h.o.s.C(this);
        }
    }

    private void requestChildOnScreen(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        this.mTempRect.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof p) {
            p pVar = (p) layoutParams;
            if (!pVar.f1169c) {
                Rect rect = pVar.f1168b;
                Rect rect2 = this.mTempRect;
                rect2.left -= rect.left;
                rect2.right += rect.right;
                rect2.top -= rect.top;
                rect2.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.mTempRect);
            offsetRectIntoDescendantCoords(view, this.mTempRect);
        }
        this.mLayout.a(this, view, this.mTempRect, !this.mFirstLayoutComplete, view2 == null);
    }

    private void resetFocusInfo() {
        a0 a0Var = this.mState;
        a0Var.n = -1L;
        a0Var.m = -1;
        a0Var.o = -1;
    }

    private void resetTouch() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        stopNestedScroll(0);
        releaseGlows();
    }

    private void saveFocusInfo() {
        View focusedChild = (this.mPreserveFocusAfterLayout && hasFocus() && this.mAdapter != null) ? getFocusedChild() : null;
        d0 d0VarFindContainingViewHolder = focusedChild != null ? findContainingViewHolder(focusedChild) : null;
        if (d0VarFindContainingViewHolder == null) {
            resetFocusInfo();
            return;
        }
        this.mState.n = this.mAdapter.hasStableIds() ? d0VarFindContainingViewHolder.getItemId() : -1L;
        this.mState.m = this.mDataSetHasChangedAfterLayout ? -1 : d0VarFindContainingViewHolder.isRemoved() ? d0VarFindContainingViewHolder.mOldPosition : d0VarFindContainingViewHolder.getAdapterPosition();
        this.mState.o = getDeepestFocusedViewWithId(d0VarFindContainingViewHolder.itemView);
    }

    private void setAdapterInternal(g gVar, boolean z2, boolean z3) {
        g gVar2 = this.mAdapter;
        if (gVar2 != null) {
            gVar2.unregisterAdapterDataObserver(this.mObserver);
            this.mAdapter.onDetachedFromRecyclerView(this);
        }
        if (!z2 || z3) {
            removeAndRecycleViews();
        }
        this.mAdapterHelper.f();
        g gVar3 = this.mAdapter;
        this.mAdapter = gVar;
        if (gVar != null) {
            gVar.registerAdapterDataObserver(this.mObserver);
            gVar.onAttachedToRecyclerView(this);
        }
        o oVar = this.mLayout;
        if (oVar != null) {
            oVar.a(gVar3, this.mAdapter);
        }
        this.mRecycler.a(gVar3, this.mAdapter, z2);
        this.mState.f1125g = true;
    }

    private void stopScrollersInternal() {
        this.mViewFlinger.b();
        o oVar = this.mLayout;
        if (oVar != null) {
            oVar.C();
        }
    }

    void absorbGlows(int i2, int i3) {
        if (i2 < 0) {
            ensureLeftGlow();
            this.mLeftGlow.onAbsorb(-i2);
        } else if (i2 > 0) {
            ensureRightGlow();
            this.mRightGlow.onAbsorb(i2);
        }
        if (i3 < 0) {
            ensureTopGlow();
            this.mTopGlow.onAbsorb(-i3);
        } else if (i3 > 0) {
            ensureBottomGlow();
            this.mBottomGlow.onAbsorb(i3);
        }
        if (i2 == 0 && i3 == 0) {
            return;
        }
        b.h.o.s.C(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        o oVar = this.mLayout;
        if (oVar == null || !oVar.a(this, arrayList, i2, i3)) {
            super.addFocusables(arrayList, i2, i3);
        }
    }

    public void addItemDecoration(n nVar) {
        addItemDecoration(nVar, -1);
    }

    public void addItemDecoration(n nVar, int i2) {
        o oVar = this.mLayout;
        if (oVar != null) {
            oVar.a("Cannot add item decoration during a scroll  or layout");
        }
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i2 < 0) {
            this.mItemDecorations.add(nVar);
        } else {
            this.mItemDecorations.add(i2, nVar);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public void addOnChildAttachStateChangeListener(q qVar) {
        if (this.mOnChildAttachStateListeners == null) {
            this.mOnChildAttachStateListeners = new ArrayList();
        }
        this.mOnChildAttachStateListeners.add(qVar);
    }

    public void addOnItemTouchListener(s sVar) {
        this.mOnItemTouchListeners.add(sVar);
    }

    public void addOnScrollListener(t tVar) {
        if (this.mScrollListeners == null) {
            this.mScrollListeners = new ArrayList();
        }
        this.mScrollListeners.add(tVar);
    }

    void animateAppearance(d0 d0Var, l.c cVar, l.c cVar2) {
        d0Var.setIsRecyclable(false);
        if (this.mItemAnimator.a(d0Var, cVar, cVar2)) {
            postAnimationRunner();
        }
    }

    void animateDisappearance(d0 d0Var, l.c cVar, l.c cVar2) {
        addAnimatingView(d0Var);
        d0Var.setIsRecyclable(false);
        if (this.mItemAnimator.b(d0Var, cVar, cVar2)) {
            postAnimationRunner();
        }
    }

    void assertInLayoutOrScroll(String str) {
        if (isComputingLayout()) {
            return;
        }
        if (str == null) {
            throw new IllegalStateException("Cannot call this method unless RecyclerView is computing a layout or scrolling" + exceptionLabel());
        }
        throw new IllegalStateException(str + exceptionLabel());
    }

    void assertNotInLayoutOrScroll(String str) {
        if (isComputingLayout()) {
            if (str != null) {
                throw new IllegalStateException(str);
            }
            throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling" + exceptionLabel());
        }
        if (this.mDispatchScrollCounter > 0) {
            Log.w(TAG, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException("" + exceptionLabel()));
        }
    }

    boolean canReuseUpdatedViewHolder(d0 d0Var) {
        l lVar = this.mItemAnimator;
        return lVar == null || lVar.a(d0Var, d0Var.getUnmodifiedPayloads());
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof p) && this.mLayout.a((p) layoutParams);
    }

    void clearOldPositions() {
        int iB = this.mChildHelper.b();
        for (int i2 = 0; i2 < iB; i2++) {
            d0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i2));
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.clearOldPosition();
            }
        }
        this.mRecycler.b();
    }

    public void clearOnChildAttachStateChangeListeners() {
        List<q> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            list.clear();
        }
    }

    public void clearOnScrollListeners() {
        List<t> list = this.mScrollListeners;
        if (list != null) {
            list.clear();
        }
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        o oVar = this.mLayout;
        if (oVar != null && oVar.a()) {
            return this.mLayout.a(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        o oVar = this.mLayout;
        if (oVar != null && oVar.a()) {
            return this.mLayout.b(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        o oVar = this.mLayout;
        if (oVar != null && oVar.a()) {
            return this.mLayout.c(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        o oVar = this.mLayout;
        if (oVar != null && oVar.b()) {
            return this.mLayout.d(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        o oVar = this.mLayout;
        if (oVar != null && oVar.b()) {
            return this.mLayout.e(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        o oVar = this.mLayout;
        if (oVar != null && oVar.b()) {
            return this.mLayout.f(this.mState);
        }
        return 0;
    }

    void considerReleasingGlowsOnScroll(int i2, int i3) {
        boolean zIsFinished;
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect == null || edgeEffect.isFinished() || i2 <= 0) {
            zIsFinished = false;
        } else {
            this.mLeftGlow.onRelease();
            zIsFinished = this.mLeftGlow.isFinished();
        }
        EdgeEffect edgeEffect2 = this.mRightGlow;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i2 < 0) {
            this.mRightGlow.onRelease();
            zIsFinished |= this.mRightGlow.isFinished();
        }
        EdgeEffect edgeEffect3 = this.mTopGlow;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i3 > 0) {
            this.mTopGlow.onRelease();
            zIsFinished |= this.mTopGlow.isFinished();
        }
        EdgeEffect edgeEffect4 = this.mBottomGlow;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i3 < 0) {
            this.mBottomGlow.onRelease();
            zIsFinished |= this.mBottomGlow.isFinished();
        }
        if (zIsFinished) {
            b.h.o.s.C(this);
        }
    }

    void consumePendingUpdateOperations() {
        if (!this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout) {
            b.h.k.b.a(TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG);
            dispatchLayout();
            b.h.k.b.a();
            return;
        }
        if (this.mAdapterHelper.c()) {
            if (this.mAdapterHelper.c(4) && !this.mAdapterHelper.c(11)) {
                b.h.k.b.a(TRACE_HANDLE_ADAPTER_UPDATES_TAG);
                startInterceptRequestLayout();
                onEnterLayoutOrScroll();
                this.mAdapterHelper.e();
                if (!this.mLayoutWasDefered) {
                    if (hasUpdatedView()) {
                        dispatchLayout();
                    } else {
                        this.mAdapterHelper.a();
                    }
                }
                stopInterceptRequestLayout(true);
                onExitLayoutOrScroll();
            } else {
                if (!this.mAdapterHelper.c()) {
                    return;
                }
                b.h.k.b.a(TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG);
                dispatchLayout();
            }
            b.h.k.b.a();
        }
    }

    void defaultOnMeasure(int i2, int i3) {
        setMeasuredDimension(o.a(i2, getPaddingLeft() + getPaddingRight(), b.h.o.s.m(this)), o.a(i3, getPaddingTop() + getPaddingBottom(), b.h.o.s.l(this)));
    }

    void dispatchChildAttached(View view) {
        d0 childViewHolderInt = getChildViewHolderInt(view);
        onChildAttachedToWindow(view);
        g gVar = this.mAdapter;
        if (gVar != null && childViewHolderInt != null) {
            gVar.onViewAttachedToWindow(childViewHolderInt);
        }
        List<q> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mOnChildAttachStateListeners.get(size).b(view);
            }
        }
    }

    void dispatchChildDetached(View view) {
        d0 childViewHolderInt = getChildViewHolderInt(view);
        onChildDetachedFromWindow(view);
        g gVar = this.mAdapter;
        if (gVar != null && childViewHolderInt != null) {
            gVar.onViewDetachedFromWindow(childViewHolderInt);
        }
        List<q> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mOnChildAttachStateListeners.get(size).a(view);
            }
        }
    }

    void dispatchLayout() {
        String str;
        if (this.mAdapter == null) {
            str = "No adapter attached; skipping layout";
        } else {
            if (this.mLayout != null) {
                a0 a0Var = this.mState;
                a0Var.f1128j = false;
                if (a0Var.f1123e != 1) {
                    if (!this.mAdapterHelper.d() && this.mLayout.r() == getWidth() && this.mLayout.h() == getHeight()) {
                        this.mLayout.e(this);
                    }
                    dispatchLayoutStep3();
                    return;
                }
                dispatchLayoutStep1();
                this.mLayout.e(this);
                dispatchLayoutStep2();
                dispatchLayoutStep3();
                return;
            }
            str = "No layout manager attached; skipping layout";
        }
        Log.e(TAG, str);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f2, float f3, boolean z2) {
        return getScrollingChildHelper().a(f2, f3, z2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f2, float f3) {
        return getScrollingChildHelper().a(f2, f3);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i2, int i3, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().a(i2, i3, iArr, iArr2);
    }

    public boolean dispatchNestedPreScroll(int i2, int i3, int[] iArr, int[] iArr2, int i4) {
        return getScrollingChildHelper().a(i2, i3, iArr, iArr2, i4);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr) {
        return getScrollingChildHelper().a(i2, i3, i4, i5, iArr);
    }

    public boolean dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr, int i6) {
        return getScrollingChildHelper().a(i2, i3, i4, i5, iArr, i6);
    }

    void dispatchOnScrollStateChanged(int i2) {
        o oVar = this.mLayout;
        if (oVar != null) {
            oVar.g(i2);
        }
        onScrollStateChanged(i2);
        t tVar = this.mScrollListener;
        if (tVar != null) {
            tVar.a(this, i2);
        }
        List<t> list = this.mScrollListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mScrollListeners.get(size).a(this, i2);
            }
        }
    }

    void dispatchOnScrolled(int i2, int i3) {
        this.mDispatchScrollCounter++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX, scrollY);
        onScrolled(i2, i3);
        t tVar = this.mScrollListener;
        if (tVar != null) {
            tVar.a(this, i2, i3);
        }
        List<t> list = this.mScrollListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mScrollListeners.get(size).a(this, i2, i3);
            }
        }
        this.mDispatchScrollCounter--;
    }

    void dispatchPendingImportantForAccessibilityChanges() {
        int i2;
        for (int size = this.mPendingAccessibilityImportanceChange.size() - 1; size >= 0; size--) {
            d0 d0Var = this.mPendingAccessibilityImportanceChange.get(size);
            if (d0Var.itemView.getParent() == this && !d0Var.shouldIgnore() && (i2 = d0Var.mPendingAccessibilityState) != -1) {
                b.h.o.s.f(d0Var.itemView, i2);
                d0Var.mPendingAccessibilityState = -1;
            }
        }
        this.mPendingAccessibilityImportanceChange.clear();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z2;
        boolean z3;
        float paddingRight;
        int paddingBottom;
        super.draw(canvas);
        int size = this.mItemDecorations.size();
        boolean z4 = false;
        for (int i2 = 0; i2 < size; i2++) {
            this.mItemDecorations.get(i2).b(canvas, this, this.mState);
        }
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z2 = false;
        } else {
            int iSave = canvas.save();
            int paddingBottom2 = this.mClipToPadding ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom2, 0.0f);
            EdgeEffect edgeEffect2 = this.mLeftGlow;
            z2 = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(iSave);
        }
        EdgeEffect edgeEffect3 = this.mTopGlow;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int iSave2 = canvas.save();
            if (this.mClipToPadding) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.mTopGlow;
            z2 |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(iSave2);
        }
        EdgeEffect edgeEffect5 = this.mRightGlow;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int iSave3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.mClipToPadding ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(-paddingTop, -width);
            EdgeEffect edgeEffect6 = this.mRightGlow;
            z2 |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(iSave3);
        }
        EdgeEffect edgeEffect7 = this.mBottomGlow;
        if (edgeEffect7 == null || edgeEffect7.isFinished()) {
            z3 = z2;
        } else {
            int iSave4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.mClipToPadding) {
                paddingRight = (-getWidth()) + getPaddingRight();
                paddingBottom = (-getHeight()) + getPaddingBottom();
            } else {
                paddingRight = -getWidth();
                paddingBottom = -getHeight();
            }
            canvas.translate(paddingRight, paddingBottom);
            EdgeEffect edgeEffect8 = this.mBottomGlow;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z4 = true;
            }
            z3 = z4 | z2;
            canvas.restoreToCount(iSave4);
        }
        if (!z3 && this.mItemAnimator != null && this.mItemDecorations.size() > 0 && this.mItemAnimator.g()) {
            z3 = true;
        }
        if (z3) {
            b.h.o.s.C(this);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j2) {
        return super.drawChild(canvas, view, j2);
    }

    void ensureBottomGlow() {
        EdgeEffect edgeEffect;
        int measuredWidth;
        int measuredHeight;
        if (this.mBottomGlow != null) {
            return;
        }
        this.mBottomGlow = this.mEdgeEffectFactory.a(this, 3);
        if (this.mClipToPadding) {
            edgeEffect = this.mBottomGlow;
            measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        } else {
            edgeEffect = this.mBottomGlow;
            measuredWidth = getMeasuredWidth();
            measuredHeight = getMeasuredHeight();
        }
        edgeEffect.setSize(measuredWidth, measuredHeight);
    }

    void ensureLeftGlow() {
        EdgeEffect edgeEffect;
        int measuredHeight;
        int measuredWidth;
        if (this.mLeftGlow != null) {
            return;
        }
        this.mLeftGlow = this.mEdgeEffectFactory.a(this, 0);
        if (this.mClipToPadding) {
            edgeEffect = this.mLeftGlow;
            measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
            measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
        } else {
            edgeEffect = this.mLeftGlow;
            measuredHeight = getMeasuredHeight();
            measuredWidth = getMeasuredWidth();
        }
        edgeEffect.setSize(measuredHeight, measuredWidth);
    }

    void ensureRightGlow() {
        EdgeEffect edgeEffect;
        int measuredHeight;
        int measuredWidth;
        if (this.mRightGlow != null) {
            return;
        }
        this.mRightGlow = this.mEdgeEffectFactory.a(this, 2);
        if (this.mClipToPadding) {
            edgeEffect = this.mRightGlow;
            measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
            measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
        } else {
            edgeEffect = this.mRightGlow;
            measuredHeight = getMeasuredHeight();
            measuredWidth = getMeasuredWidth();
        }
        edgeEffect.setSize(measuredHeight, measuredWidth);
    }

    void ensureTopGlow() {
        EdgeEffect edgeEffect;
        int measuredWidth;
        int measuredHeight;
        if (this.mTopGlow != null) {
            return;
        }
        this.mTopGlow = this.mEdgeEffectFactory.a(this, 1);
        if (this.mClipToPadding) {
            edgeEffect = this.mTopGlow;
            measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        } else {
            edgeEffect = this.mTopGlow;
            measuredWidth = getMeasuredWidth();
            measuredHeight = getMeasuredHeight();
        }
        edgeEffect.setSize(measuredWidth, measuredHeight);
    }

    String exceptionLabel() {
        return " " + super.toString() + ", adapter:" + this.mAdapter + ", layout:" + this.mLayout + ", context:" + getContext();
    }

    final void fillRemainingScrollValues(a0 a0Var) {
        if (getScrollState() != 2) {
            a0Var.p = 0;
            a0Var.q = 0;
        } else {
            OverScroller overScroller = this.mViewFlinger.f1133d;
            a0Var.p = overScroller.getFinalX() - overScroller.getCurrX();
            a0Var.q = overScroller.getFinalY() - overScroller.getCurrY();
        }
    }

    public View findChildViewUnder(float f2, float f3) {
        for (int iA = this.mChildHelper.a() - 1; iA >= 0; iA--) {
            View viewC = this.mChildHelper.c(iA);
            float translationX = viewC.getTranslationX();
            float translationY = viewC.getTranslationY();
            if (f2 >= viewC.getLeft() + translationX && f2 <= viewC.getRight() + translationX && f3 >= viewC.getTop() + translationY && f3 <= viewC.getBottom() + translationY) {
                return viewC;
            }
        }
        return null;
    }

    public View findContainingItemView(View view) {
        Object parent;
        while (true) {
            parent = view.getParent();
            if (parent == null || parent == this || !(parent instanceof View)) {
                break;
            }
            view = (View) parent;
        }
        if (parent == this) {
            return view;
        }
        return null;
    }

    public d0 findContainingViewHolder(View view) {
        View viewFindContainingItemView = findContainingItemView(view);
        if (viewFindContainingItemView == null) {
            return null;
        }
        return getChildViewHolder(viewFindContainingItemView);
    }

    public d0 findViewHolderForAdapterPosition(int i2) {
        d0 d0Var = null;
        if (this.mDataSetHasChangedAfterLayout) {
            return null;
        }
        int iB = this.mChildHelper.b();
        for (int i3 = 0; i3 < iB; i3++) {
            d0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i3));
            if (childViewHolderInt != null && !childViewHolderInt.isRemoved() && getAdapterPositionFor(childViewHolderInt) == i2) {
                if (!this.mChildHelper.c(childViewHolderInt.itemView)) {
                    return childViewHolderInt;
                }
                d0Var = childViewHolderInt;
            }
        }
        return d0Var;
    }

    public d0 findViewHolderForItemId(long j2) {
        g gVar = this.mAdapter;
        d0 d0Var = null;
        if (gVar != null && gVar.hasStableIds()) {
            int iB = this.mChildHelper.b();
            for (int i2 = 0; i2 < iB; i2++) {
                d0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i2));
                if (childViewHolderInt != null && !childViewHolderInt.isRemoved() && childViewHolderInt.getItemId() == j2) {
                    if (!this.mChildHelper.c(childViewHolderInt.itemView)) {
                        return childViewHolderInt;
                    }
                    d0Var = childViewHolderInt;
                }
            }
        }
        return d0Var;
    }

    public d0 findViewHolderForLayoutPosition(int i2) {
        return findViewHolderForPosition(i2, false);
    }

    @Deprecated
    public d0 findViewHolderForPosition(int i2) {
        return findViewHolderForPosition(i2, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    androidx.recyclerview.widget.RecyclerView.d0 findViewHolderForPosition(int r6, boolean r7) {
        /*
            r5 = this;
            androidx.recyclerview.widget.f r0 = r5.mChildHelper
            int r0 = r0.b()
            r1 = 0
            r2 = 0
        L8:
            if (r2 >= r0) goto L3a
            androidx.recyclerview.widget.f r3 = r5.mChildHelper
            android.view.View r3 = r3.d(r2)
            androidx.recyclerview.widget.RecyclerView$d0 r3 = getChildViewHolderInt(r3)
            if (r3 == 0) goto L37
            boolean r4 = r3.isRemoved()
            if (r4 != 0) goto L37
            if (r7 == 0) goto L23
            int r4 = r3.mPosition
            if (r4 == r6) goto L2a
            goto L37
        L23:
            int r4 = r3.getLayoutPosition()
            if (r4 == r6) goto L2a
            goto L37
        L2a:
            androidx.recyclerview.widget.f r1 = r5.mChildHelper
            android.view.View r4 = r3.itemView
            boolean r1 = r1.c(r4)
            if (r1 == 0) goto L36
            r1 = r3
            goto L37
        L36:
            return r3
        L37:
            int r2 = r2 + 1
            goto L8
        L3a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.findViewHolderForPosition(int, boolean):androidx.recyclerview.widget.RecyclerView$d0");
    }

    public boolean fling(int i2, int i3) {
        o oVar = this.mLayout;
        if (oVar == null) {
            Log.e(TAG, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return false;
        }
        if (this.mLayoutFrozen) {
            return false;
        }
        boolean zA = oVar.a();
        boolean zB = this.mLayout.b();
        if (!zA || Math.abs(i2) < this.mMinFlingVelocity) {
            i2 = 0;
        }
        if (!zB || Math.abs(i3) < this.mMinFlingVelocity) {
            i3 = 0;
        }
        if (i2 == 0 && i3 == 0) {
            return false;
        }
        float f2 = i2;
        float f3 = i3;
        if (!dispatchNestedPreFling(f2, f3)) {
            boolean z2 = zA || zB;
            dispatchNestedFling(f2, f3, z2);
            r rVar = this.mOnFlingListener;
            if (rVar != null && rVar.a(i2, i3)) {
                return true;
            }
            if (z2) {
                int i4 = zA ? 1 : 0;
                if (zB) {
                    i4 |= 2;
                }
                startNestedScroll(i4, 1);
                int i5 = this.mMaxFlingVelocity;
                int iMax = Math.max(-i5, Math.min(i2, i5));
                int i6 = this.mMaxFlingVelocity;
                this.mViewFlinger.a(iMax, Math.max(-i6, Math.min(i3, i6)));
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public View focusSearch(View view, int i2) {
        View viewA;
        boolean z2;
        View viewD = this.mLayout.d(view, i2);
        if (viewD != null) {
            return viewD;
        }
        boolean z3 = (this.mAdapter == null || this.mLayout == null || isComputingLayout() || this.mLayoutFrozen) ? false : true;
        FocusFinder focusFinder = FocusFinder.getInstance();
        if (z3 && (i2 == 2 || i2 == 1)) {
            if (this.mLayout.b()) {
                int i3 = i2 == 2 ? TsExtractor.TS_STREAM_TYPE_HDMV_DTS : 33;
                z2 = focusFinder.findNextFocus(this, view, i3) == null;
                if (FORCE_ABS_FOCUS_SEARCH_DIRECTION) {
                    i2 = i3;
                }
            } else {
                z2 = false;
            }
            if (!z2 && this.mLayout.a()) {
                int i4 = (this.mLayout.k() == 1) ^ (i2 == 2) ? 66 : 17;
                z2 = focusFinder.findNextFocus(this, view, i4) == null;
                if (FORCE_ABS_FOCUS_SEARCH_DIRECTION) {
                    i2 = i4;
                }
            }
            if (z2) {
                consumePendingUpdateOperations();
                if (findContainingItemView(view) == null) {
                    return null;
                }
                startInterceptRequestLayout();
                this.mLayout.a(view, i2, this.mRecycler, this.mState);
                stopInterceptRequestLayout(false);
            }
            viewA = focusFinder.findNextFocus(this, view, i2);
        } else {
            View viewFindNextFocus = focusFinder.findNextFocus(this, view, i2);
            if (viewFindNextFocus == null && z3) {
                consumePendingUpdateOperations();
                if (findContainingItemView(view) == null) {
                    return null;
                }
                startInterceptRequestLayout();
                viewA = this.mLayout.a(view, i2, this.mRecycler, this.mState);
                stopInterceptRequestLayout(false);
            } else {
                viewA = viewFindNextFocus;
            }
        }
        if (viewA == null || viewA.hasFocusable()) {
            return isPreferredNextFocus(view, viewA, i2) ? viewA : super.focusSearch(view, i2);
        }
        if (getFocusedChild() == null) {
            return super.focusSearch(view, i2);
        }
        requestChildOnScreen(viewA, null);
        return view;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        o oVar = this.mLayout;
        if (oVar != null) {
            return oVar.c();
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + exceptionLabel());
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        o oVar = this.mLayout;
        if (oVar != null) {
            return oVar.a(getContext(), attributeSet);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + exceptionLabel());
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        o oVar = this.mLayout;
        if (oVar != null) {
            return oVar.a(layoutParams);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + exceptionLabel());
    }

    public g getAdapter() {
        return this.mAdapter;
    }

    int getAdapterPositionFor(d0 d0Var) {
        if (d0Var.hasAnyOfTheFlags(524) || !d0Var.isBound()) {
            return -1;
        }
        return this.mAdapterHelper.a(d0Var.mPosition);
    }

    @Override // android.view.View
    public int getBaseline() {
        o oVar = this.mLayout;
        return oVar != null ? oVar.d() : super.getBaseline();
    }

    long getChangedHolderKey(d0 d0Var) {
        return this.mAdapter.hasStableIds() ? d0Var.getItemId() : d0Var.mPosition;
    }

    public int getChildAdapterPosition(View view) {
        d0 childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            return childViewHolderInt.getAdapterPosition();
        }
        return -1;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i2, int i3) {
        j jVar = this.mChildDrawingOrderCallback;
        return jVar == null ? super.getChildDrawingOrder(i2, i3) : jVar.a(i2, i3);
    }

    public long getChildItemId(View view) {
        d0 childViewHolderInt;
        g gVar = this.mAdapter;
        if (gVar == null || !gVar.hasStableIds() || (childViewHolderInt = getChildViewHolderInt(view)) == null) {
            return -1L;
        }
        return childViewHolderInt.getItemId();
    }

    public int getChildLayoutPosition(View view) {
        d0 childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            return childViewHolderInt.getLayoutPosition();
        }
        return -1;
    }

    @Deprecated
    public int getChildPosition(View view) {
        return getChildAdapterPosition(view);
    }

    public d0 getChildViewHolder(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return getChildViewHolderInt(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.mClipToPadding;
    }

    public androidx.recyclerview.widget.t getCompatAccessibilityDelegate() {
        return this.mAccessibilityDelegate;
    }

    public void getDecoratedBoundsWithMargins(View view, Rect rect) {
        getDecoratedBoundsWithMarginsInt(view, rect);
    }

    public k getEdgeEffectFactory() {
        return this.mEdgeEffectFactory;
    }

    public l getItemAnimator() {
        return this.mItemAnimator;
    }

    Rect getItemDecorInsetsForChild(View view) {
        p pVar = (p) view.getLayoutParams();
        if (!pVar.f1169c) {
            return pVar.f1168b;
        }
        if (this.mState.d() && (pVar.b() || pVar.d())) {
            return pVar.f1168b;
        }
        Rect rect = pVar.f1168b;
        rect.set(0, 0, 0, 0);
        int size = this.mItemDecorations.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mTempRect.set(0, 0, 0, 0);
            this.mItemDecorations.get(i2).a(this.mTempRect, view, this, this.mState);
            int i3 = rect.left;
            Rect rect2 = this.mTempRect;
            rect.left = i3 + rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        pVar.f1169c = false;
        return rect;
    }

    public n getItemDecorationAt(int i2) {
        int itemDecorationCount = getItemDecorationCount();
        if (i2 >= 0 && i2 < itemDecorationCount) {
            return this.mItemDecorations.get(i2);
        }
        throw new IndexOutOfBoundsException(i2 + " is an invalid index for size " + itemDecorationCount);
    }

    public int getItemDecorationCount() {
        return this.mItemDecorations.size();
    }

    public o getLayoutManager() {
        return this.mLayout;
    }

    public int getMaxFlingVelocity() {
        return this.mMaxFlingVelocity;
    }

    public int getMinFlingVelocity() {
        return this.mMinFlingVelocity;
    }

    long getNanoTime() {
        if (ALLOW_THREAD_GAP_WORK) {
            return System.nanoTime();
        }
        return 0L;
    }

    public r getOnFlingListener() {
        return this.mOnFlingListener;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.mPreserveFocusAfterLayout;
    }

    public u getRecycledViewPool() {
        return this.mRecycler.d();
    }

    public int getScrollState() {
        return this.mScrollState;
    }

    public boolean hasFixedSize() {
        return this.mHasFixedSize;
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().a();
    }

    public boolean hasNestedScrollingParent(int i2) {
        return getScrollingChildHelper().a(i2);
    }

    public boolean hasPendingAdapterUpdates() {
        return !this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout || this.mAdapterHelper.c();
    }

    void initAdapterManager() {
        this.mAdapterHelper = new androidx.recyclerview.widget.a(new f());
    }

    void initFastScroller(StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2) {
        if (stateListDrawable != null && drawable != null && stateListDrawable2 != null && drawable2 != null) {
            Resources resources = getContext().getResources();
            new androidx.recyclerview.widget.i(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(b.p.a.fastscroll_default_thickness), resources.getDimensionPixelSize(b.p.a.fastscroll_minimum_range), resources.getDimensionPixelOffset(b.p.a.fastscroll_margin));
        } else {
            throw new IllegalArgumentException("Trying to set fast scroller without both required drawables." + exceptionLabel());
        }
    }

    void invalidateGlows() {
        this.mBottomGlow = null;
        this.mTopGlow = null;
        this.mRightGlow = null;
        this.mLeftGlow = null;
    }

    public void invalidateItemDecorations() {
        if (this.mItemDecorations.size() == 0) {
            return;
        }
        o oVar = this.mLayout;
        if (oVar != null) {
            oVar.a("Cannot invalidate item decorations during a scroll or layout");
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    boolean isAccessibilityEnabled() {
        AccessibilityManager accessibilityManager = this.mAccessibilityManager;
        return accessibilityManager != null && accessibilityManager.isEnabled();
    }

    public boolean isAnimating() {
        l lVar = this.mItemAnimator;
        return lVar != null && lVar.g();
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.mIsAttached;
    }

    public boolean isComputingLayout() {
        return this.mLayoutOrScrollCounter > 0;
    }

    public boolean isLayoutFrozen() {
        return this.mLayoutFrozen;
    }

    @Override // android.view.View, b.h.o.j
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().b();
    }

    void jumpToPositionForSmoothScroller(int i2) {
        o oVar = this.mLayout;
        if (oVar == null) {
            return;
        }
        oVar.i(i2);
        awakenScrollBars();
    }

    void markItemDecorInsetsDirty() {
        int iB = this.mChildHelper.b();
        for (int i2 = 0; i2 < iB; i2++) {
            ((p) this.mChildHelper.d(i2).getLayoutParams()).f1169c = true;
        }
        this.mRecycler.g();
    }

    void markKnownViewsInvalid() {
        int iB = this.mChildHelper.b();
        for (int i2 = 0; i2 < iB; i2++) {
            d0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i2));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.addFlags(6);
            }
        }
        markItemDecorInsetsDirty();
        this.mRecycler.h();
    }

    public void offsetChildrenHorizontal(int i2) {
        int iA = this.mChildHelper.a();
        for (int i3 = 0; i3 < iA; i3++) {
            this.mChildHelper.c(i3).offsetLeftAndRight(i2);
        }
    }

    public void offsetChildrenVertical(int i2) {
        int iA = this.mChildHelper.a();
        for (int i3 = 0; i3 < iA; i3++) {
            this.mChildHelper.c(i3).offsetTopAndBottom(i2);
        }
    }

    void offsetPositionRecordsForInsert(int i2, int i3) {
        int iB = this.mChildHelper.b();
        for (int i4 = 0; i4 < iB; i4++) {
            d0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i4));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.mPosition >= i2) {
                childViewHolderInt.offsetPosition(i3, false);
                this.mState.f1125g = true;
            }
        }
        this.mRecycler.a(i2, i3);
        requestLayout();
    }

    void offsetPositionRecordsForMove(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int iB = this.mChildHelper.b();
        if (i2 < i3) {
            i5 = i2;
            i4 = i3;
            i6 = -1;
        } else {
            i4 = i2;
            i5 = i3;
            i6 = 1;
        }
        for (int i8 = 0; i8 < iB; i8++) {
            d0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i8));
            if (childViewHolderInt != null && (i7 = childViewHolderInt.mPosition) >= i5 && i7 <= i4) {
                if (i7 == i2) {
                    childViewHolderInt.offsetPosition(i3 - i2, false);
                } else {
                    childViewHolderInt.offsetPosition(i6, false);
                }
                this.mState.f1125g = true;
            }
        }
        this.mRecycler.b(i2, i3);
        requestLayout();
    }

    void offsetPositionRecordsForRemove(int i2, int i3, boolean z2) {
        int i4 = i2 + i3;
        int iB = this.mChildHelper.b();
        for (int i5 = 0; i5 < iB; i5++) {
            d0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i5));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                int i6 = childViewHolderInt.mPosition;
                if (i6 >= i4) {
                    childViewHolderInt.offsetPosition(-i3, z2);
                } else if (i6 >= i2) {
                    childViewHolderInt.flagRemovedAndOffsetPosition(i2 - 1, -i3, z2);
                }
                this.mState.f1125g = true;
            }
        }
        this.mRecycler.a(i2, i3, z2);
        requestLayout();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0052  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onAttachedToWindow() {
        /*
            r4 = this;
            super.onAttachedToWindow()
            r0 = 0
            r4.mLayoutOrScrollCounter = r0
            r1 = 1
            r4.mIsAttached = r1
            boolean r2 = r4.mFirstLayoutComplete
            if (r2 == 0) goto L14
            boolean r2 = r4.isLayoutRequested()
            if (r2 != 0) goto L14
            goto L15
        L14:
            r1 = 0
        L15:
            r4.mFirstLayoutComplete = r1
            androidx.recyclerview.widget.RecyclerView$o r1 = r4.mLayout
            if (r1 == 0) goto L1e
            r1.a(r4)
        L1e:
            r4.mPostedAnimatorRunner = r0
            boolean r0 = androidx.recyclerview.widget.RecyclerView.ALLOW_THREAD_GAP_WORK
            if (r0 == 0) goto L67
            java.lang.ThreadLocal<androidx.recyclerview.widget.j> r0 = androidx.recyclerview.widget.j.f1360f
            java.lang.Object r0 = r0.get()
            androidx.recyclerview.widget.j r0 = (androidx.recyclerview.widget.j) r0
            r4.mGapWorker = r0
            androidx.recyclerview.widget.j r0 = r4.mGapWorker
            if (r0 != 0) goto L62
            androidx.recyclerview.widget.j r0 = new androidx.recyclerview.widget.j
            r0.<init>()
            r4.mGapWorker = r0
            android.view.Display r0 = b.h.o.s.f(r4)
            r1 = 1114636288(0x42700000, float:60.0)
            boolean r2 = r4.isInEditMode()
            if (r2 != 0) goto L52
            if (r0 == 0) goto L52
            float r0 = r0.getRefreshRate()
            r2 = 1106247680(0x41f00000, float:30.0)
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 < 0) goto L52
            goto L54
        L52:
            r0 = 1114636288(0x42700000, float:60.0)
        L54:
            androidx.recyclerview.widget.j r1 = r4.mGapWorker
            r2 = 1315859240(0x4e6e6b28, float:1.0E9)
            float r2 = r2 / r0
            long r2 = (long) r2
            r1.f1364d = r2
            java.lang.ThreadLocal<androidx.recyclerview.widget.j> r0 = androidx.recyclerview.widget.j.f1360f
            r0.set(r1)
        L62:
            androidx.recyclerview.widget.j r0 = r4.mGapWorker
            r0.a(r4)
        L67:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onAttachedToWindow():void");
    }

    public void onChildAttachedToWindow(View view) {
    }

    public void onChildDetachedFromWindow(View view) {
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        androidx.recyclerview.widget.j jVar;
        super.onDetachedFromWindow();
        l lVar = this.mItemAnimator;
        if (lVar != null) {
            lVar.b();
        }
        stopScroll();
        this.mIsAttached = false;
        o oVar = this.mLayout;
        if (oVar != null) {
            oVar.a(this, this.mRecycler);
        }
        this.mPendingAccessibilityImportanceChange.clear();
        removeCallbacks(this.mItemAnimatorRunner);
        this.mViewInfoStore.b();
        if (!ALLOW_THREAD_GAP_WORK || (jVar = this.mGapWorker) == null) {
            return;
        }
        jVar.b(this);
        this.mGapWorker = null;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.mItemDecorations.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mItemDecorations.get(i2).a(canvas, this, this.mState);
        }
    }

    void onEnterLayoutOrScroll() {
        this.mLayoutOrScrollCounter++;
    }

    void onExitLayoutOrScroll() {
        onExitLayoutOrScroll(true);
    }

    void onExitLayoutOrScroll(boolean z2) {
        this.mLayoutOrScrollCounter--;
        if (this.mLayoutOrScrollCounter < 1) {
            this.mLayoutOrScrollCounter = 0;
            if (z2) {
                dispatchContentChangedIfNecessary();
                dispatchPendingImportantForAccessibilityChanges();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006a  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onGenericMotionEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            androidx.recyclerview.widget.RecyclerView$o r0 = r5.mLayout
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            boolean r0 = r5.mLayoutFrozen
            if (r0 == 0) goto Lb
            return r1
        Lb:
            int r0 = r6.getAction()
            r2 = 8
            if (r0 != r2) goto L77
            int r0 = r6.getSource()
            r0 = r0 & 2
            r2 = 0
            if (r0 == 0) goto L3c
            androidx.recyclerview.widget.RecyclerView$o r0 = r5.mLayout
            boolean r0 = r0.b()
            if (r0 == 0) goto L2c
            r0 = 9
            float r0 = r6.getAxisValue(r0)
            float r0 = -r0
            goto L2d
        L2c:
            r0 = 0
        L2d:
            androidx.recyclerview.widget.RecyclerView$o r3 = r5.mLayout
            boolean r3 = r3.a()
            if (r3 == 0) goto L61
            r3 = 10
            float r3 = r6.getAxisValue(r3)
            goto L62
        L3c:
            int r0 = r6.getSource()
            r3 = 4194304(0x400000, float:5.877472E-39)
            r0 = r0 & r3
            if (r0 == 0) goto L60
            r0 = 26
            float r0 = r6.getAxisValue(r0)
            androidx.recyclerview.widget.RecyclerView$o r3 = r5.mLayout
            boolean r3 = r3.b()
            if (r3 == 0) goto L55
            float r0 = -r0
            goto L61
        L55:
            androidx.recyclerview.widget.RecyclerView$o r3 = r5.mLayout
            boolean r3 = r3.a()
            if (r3 == 0) goto L60
            r3 = r0
            r0 = 0
            goto L62
        L60:
            r0 = 0
        L61:
            r3 = 0
        L62:
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 != 0) goto L6a
            int r2 = (r3 > r2 ? 1 : (r3 == r2 ? 0 : -1))
            if (r2 == 0) goto L77
        L6a:
            float r2 = r5.mScaledHorizontalScrollFactor
            float r3 = r3 * r2
            int r2 = (int) r3
            float r3 = r5.mScaledVerticalScrollFactor
            float r0 = r0 * r3
            int r0 = (int) r0
            r5.scrollByInternal(r2, r0, r6)
        L77:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onGenericMotionEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        if (this.mLayoutFrozen) {
            return false;
        }
        if (dispatchOnItemTouchIntercept(motionEvent)) {
            cancelTouch();
            return true;
        }
        o oVar = this.mLayout;
        if (oVar == null) {
            return false;
        }
        boolean zA = oVar.a();
        boolean zB = this.mLayout.b();
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.mIgnoreMotionEventTillDown) {
                this.mIgnoreMotionEventTillDown = false;
            }
            this.mScrollPointerId = motionEvent.getPointerId(0);
            int x2 = (int) (motionEvent.getX() + 0.5f);
            this.mLastTouchX = x2;
            this.mInitialTouchX = x2;
            int y2 = (int) (motionEvent.getY() + 0.5f);
            this.mLastTouchY = y2;
            this.mInitialTouchY = y2;
            if (this.mScrollState == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
            }
            int[] iArr = this.mNestedOffsets;
            iArr[1] = 0;
            iArr[0] = 0;
            int i2 = zA ? 1 : 0;
            if (zB) {
                i2 |= 2;
            }
            startNestedScroll(i2, 0);
        } else if (actionMasked == 1) {
            this.mVelocityTracker.clear();
            stopNestedScroll(0);
        } else if (actionMasked == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.mScrollPointerId);
            if (iFindPointerIndex < 0) {
                Log.e(TAG, "Error processing scroll; pointer index for id " + this.mScrollPointerId + " not found. Did any MotionEvents get skipped?");
                return false;
            }
            int x3 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
            int y3 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
            if (this.mScrollState != 1) {
                int i3 = x3 - this.mInitialTouchX;
                int i4 = y3 - this.mInitialTouchY;
                if (!zA || Math.abs(i3) <= this.mTouchSlop) {
                    z2 = false;
                } else {
                    this.mLastTouchX = x3;
                    z2 = true;
                }
                if (zB && Math.abs(i4) > this.mTouchSlop) {
                    this.mLastTouchY = y3;
                    z2 = true;
                }
                if (z2) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            cancelTouch();
        } else if (actionMasked == 5) {
            this.mScrollPointerId = motionEvent.getPointerId(actionIndex);
            int x4 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.mLastTouchX = x4;
            this.mInitialTouchX = x4;
            int y4 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.mLastTouchY = y4;
            this.mInitialTouchY = y4;
        } else if (actionMasked == 6) {
            onPointerUp(motionEvent);
        }
        return this.mScrollState == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        b.h.k.b.a(TRACE_ON_LAYOUT_TAG);
        dispatchLayout();
        b.h.k.b.a();
        this.mFirstLayoutComplete = true;
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i3) {
        o oVar = this.mLayout;
        if (oVar == null) {
            defaultOnMeasure(i2, i3);
            return;
        }
        boolean z2 = false;
        if (oVar.v()) {
            int mode = View.MeasureSpec.getMode(i2);
            int mode2 = View.MeasureSpec.getMode(i3);
            this.mLayout.a(this.mRecycler, this.mState, i2, i3);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z2 = true;
            }
            if (z2 || this.mAdapter == null) {
                return;
            }
            if (this.mState.f1123e == 1) {
                dispatchLayoutStep1();
            }
            this.mLayout.b(i2, i3);
            this.mState.f1128j = true;
            dispatchLayoutStep2();
            this.mLayout.d(i2, i3);
            if (this.mLayout.B()) {
                this.mLayout.b(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                this.mState.f1128j = true;
                dispatchLayoutStep2();
                this.mLayout.d(i2, i3);
                return;
            }
            return;
        }
        if (this.mHasFixedSize) {
            this.mLayout.a(this.mRecycler, this.mState, i2, i3);
            return;
        }
        if (this.mAdapterUpdateDuringMeasure) {
            startInterceptRequestLayout();
            onEnterLayoutOrScroll();
            processAdapterUpdatesAndSetAnimationFlags();
            onExitLayoutOrScroll();
            a0 a0Var = this.mState;
            if (a0Var.l) {
                a0Var.f1126h = true;
            } else {
                this.mAdapterHelper.b();
                this.mState.f1126h = false;
            }
            this.mAdapterUpdateDuringMeasure = false;
            stopInterceptRequestLayout(false);
        } else if (this.mState.l) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        g gVar = this.mAdapter;
        if (gVar != null) {
            this.mState.f1124f = gVar.getItemCount();
        } else {
            this.mState.f1124f = 0;
        }
        startInterceptRequestLayout();
        this.mLayout.a(this.mRecycler, this.mState, i2, i3);
        stopInterceptRequestLayout(false);
        this.mState.f1126h = false;
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i2, Rect rect) {
        if (isComputingLayout()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i2, rect);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof y)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        this.mPendingSavedState = (y) parcelable;
        super.onRestoreInstanceState(this.mPendingSavedState.getSuperState());
        o oVar = this.mLayout;
        if (oVar == null || (parcelable2 = this.mPendingSavedState.f1187b) == null) {
            return;
        }
        oVar.a(parcelable2);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        y yVar = new y(super.onSaveInstanceState());
        y yVar2 = this.mPendingSavedState;
        if (yVar2 != null) {
            yVar.a(yVar2);
        } else {
            o oVar = this.mLayout;
            yVar.f1187b = oVar != null ? oVar.y() : null;
        }
        return yVar;
    }

    public void onScrollStateChanged(int i2) {
    }

    public void onScrolled(int i2, int i3) {
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 == i4 && i3 == i5) {
            return;
        }
        invalidateGlows();
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0109  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r15) {
        /*
            Method dump skipped, instruction units count: 456
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    void postAnimationRunner() {
        if (this.mPostedAnimatorRunner || !this.mIsAttached) {
            return;
        }
        b.h.o.s.a(this, this.mItemAnimatorRunner);
        this.mPostedAnimatorRunner = true;
    }

    void processDataSetCompletelyChanged(boolean z2) {
        this.mDispatchItemsChangedEvent = z2 | this.mDispatchItemsChangedEvent;
        this.mDataSetHasChangedAfterLayout = true;
        markKnownViewsInvalid();
    }

    void recordAnimationInfoIfBouncedHiddenView(d0 d0Var, l.c cVar) {
        d0Var.setFlags(0, 8192);
        if (this.mState.f1127i && d0Var.isUpdated() && !d0Var.isRemoved() && !d0Var.shouldIgnore()) {
            this.mViewInfoStore.a(getChangedHolderKey(d0Var), d0Var);
        }
        this.mViewInfoStore.c(d0Var, cVar);
    }

    void removeAndRecycleViews() {
        l lVar = this.mItemAnimator;
        if (lVar != null) {
            lVar.b();
        }
        o oVar = this.mLayout;
        if (oVar != null) {
            oVar.b(this.mRecycler);
            this.mLayout.c(this.mRecycler);
        }
        this.mRecycler.a();
    }

    boolean removeAnimatingView(View view) {
        startInterceptRequestLayout();
        boolean zE = this.mChildHelper.e(view);
        if (zE) {
            d0 childViewHolderInt = getChildViewHolderInt(view);
            this.mRecycler.c(childViewHolderInt);
            this.mRecycler.b(childViewHolderInt);
        }
        stopInterceptRequestLayout(!zE);
        return zE;
    }

    @Override // android.view.ViewGroup
    protected void removeDetachedView(View view, boolean z2) {
        d0 childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            if (childViewHolderInt.isTmpDetached()) {
                childViewHolderInt.clearTmpDetachFlag();
            } else if (!childViewHolderInt.shouldIgnore()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + childViewHolderInt + exceptionLabel());
            }
        }
        view.clearAnimation();
        dispatchChildDetached(view);
        super.removeDetachedView(view, z2);
    }

    public void removeItemDecoration(n nVar) {
        o oVar = this.mLayout;
        if (oVar != null) {
            oVar.a("Cannot remove item decoration during a scroll  or layout");
        }
        this.mItemDecorations.remove(nVar);
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public void removeItemDecorationAt(int i2) {
        int itemDecorationCount = getItemDecorationCount();
        if (i2 >= 0 && i2 < itemDecorationCount) {
            removeItemDecoration(getItemDecorationAt(i2));
            return;
        }
        throw new IndexOutOfBoundsException(i2 + " is an invalid index for size " + itemDecorationCount);
    }

    public void removeOnChildAttachStateChangeListener(q qVar) {
        List<q> list = this.mOnChildAttachStateListeners;
        if (list == null) {
            return;
        }
        list.remove(qVar);
    }

    public void removeOnItemTouchListener(s sVar) {
        this.mOnItemTouchListeners.remove(sVar);
        if (this.mActiveOnItemTouchListener == sVar) {
            this.mActiveOnItemTouchListener = null;
        }
    }

    public void removeOnScrollListener(t tVar) {
        List<t> list = this.mScrollListeners;
        if (list != null) {
            list.remove(tVar);
        }
    }

    void repositionShadowingViews() {
        d0 d0Var;
        int iA = this.mChildHelper.a();
        for (int i2 = 0; i2 < iA; i2++) {
            View viewC = this.mChildHelper.c(i2);
            d0 childViewHolder = getChildViewHolder(viewC);
            if (childViewHolder != null && (d0Var = childViewHolder.mShadowingHolder) != null) {
                View view = d0Var.itemView;
                int left = viewC.getLeft();
                int top = viewC.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.mLayout.a(this, this.mState, view, view2) && view2 != null) {
            requestChildOnScreen(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z2) {
        return this.mLayout.a(this, view, rect, z2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z2) {
        int size = this.mOnItemTouchListeners.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mOnItemTouchListeners.get(i2).a(z2);
        }
        super.requestDisallowInterceptTouchEvent(z2);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.mInterceptRequestLayoutDepth != 0 || this.mLayoutFrozen) {
            this.mLayoutWasDefered = true;
        } else {
            super.requestLayout();
        }
    }

    void saveOldPositions() {
        int iB = this.mChildHelper.b();
        for (int i2 = 0; i2 < iB; i2++) {
            d0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i2));
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.saveOldPosition();
            }
        }
    }

    @Override // android.view.View
    public void scrollBy(int i2, int i3) {
        o oVar = this.mLayout;
        if (oVar == null) {
            Log.e(TAG, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.mLayoutFrozen) {
            return;
        }
        boolean zA = oVar.a();
        boolean zB = this.mLayout.b();
        if (zA || zB) {
            if (!zA) {
                i2 = 0;
            }
            if (!zB) {
                i3 = 0;
            }
            scrollByInternal(i2, i3, null);
        }
    }

    boolean scrollByInternal(int i2, int i3, MotionEvent motionEvent) {
        int i4;
        int i5;
        int i6;
        int i7;
        consumePendingUpdateOperations();
        if (this.mAdapter != null) {
            scrollStep(i2, i3, this.mScrollStepConsumed);
            int[] iArr = this.mScrollStepConsumed;
            int i8 = iArr[0];
            int i9 = iArr[1];
            i4 = i9;
            i7 = i8;
            i5 = i2 - i8;
            i6 = i3 - i9;
        } else {
            i4 = 0;
            i5 = 0;
            i6 = 0;
            i7 = 0;
        }
        if (!this.mItemDecorations.isEmpty()) {
            invalidate();
        }
        int i10 = i4;
        if (dispatchNestedScroll(i7, i4, i5, i6, this.mScrollOffset, 0)) {
            int i11 = this.mLastTouchX;
            int[] iArr2 = this.mScrollOffset;
            this.mLastTouchX = i11 - iArr2[0];
            this.mLastTouchY -= iArr2[1];
            if (motionEvent != null) {
                motionEvent.offsetLocation(iArr2[0], iArr2[1]);
            }
            int[] iArr3 = this.mNestedOffsets;
            int i12 = iArr3[0];
            int[] iArr4 = this.mScrollOffset;
            iArr3[0] = i12 + iArr4[0];
            iArr3[1] = iArr3[1] + iArr4[1];
        } else if (getOverScrollMode() != 2) {
            if (motionEvent != null && !b.h.o.h.a(motionEvent, 8194)) {
                pullGlows(motionEvent.getX(), i5, motionEvent.getY(), i6);
            }
            considerReleasingGlowsOnScroll(i2, i3);
        }
        if (i7 != 0 || i10 != 0) {
            dispatchOnScrolled(i7, i10);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (i7 == 0 && i10 == 0) ? false : true;
    }

    void scrollStep(int i2, int i3, int[] iArr) {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        b.h.k.b.a(TRACE_SCROLL_TAG);
        fillRemainingScrollValues(this.mState);
        int iA = i2 != 0 ? this.mLayout.a(i2, this.mRecycler, this.mState) : 0;
        int iB = i3 != 0 ? this.mLayout.b(i3, this.mRecycler, this.mState) : 0;
        b.h.k.b.a();
        repositionShadowingViews();
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        if (iArr != null) {
            iArr[0] = iA;
            iArr[1] = iB;
        }
    }

    @Override // android.view.View
    public void scrollTo(int i2, int i3) {
        Log.w(TAG, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    public void scrollToPosition(int i2) {
        if (this.mLayoutFrozen) {
            return;
        }
        stopScroll();
        o oVar = this.mLayout;
        if (oVar == null) {
            Log.e(TAG, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            oVar.i(i2);
            awakenScrollBars();
        }
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (shouldDeferAccessibilityEvent(accessibilityEvent)) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(androidx.recyclerview.widget.t tVar) {
        this.mAccessibilityDelegate = tVar;
        b.h.o.s.a(this, this.mAccessibilityDelegate);
    }

    public void setAdapter(g gVar) {
        setLayoutFrozen(false);
        setAdapterInternal(gVar, false, true);
        processDataSetCompletelyChanged(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(j jVar) {
        if (jVar == this.mChildDrawingOrderCallback) {
            return;
        }
        this.mChildDrawingOrderCallback = jVar;
        setChildrenDrawingOrderEnabled(this.mChildDrawingOrderCallback != null);
    }

    boolean setChildImportantForAccessibilityInternal(d0 d0Var, int i2) {
        if (!isComputingLayout()) {
            b.h.o.s.f(d0Var.itemView, i2);
            return true;
        }
        d0Var.mPendingAccessibilityState = i2;
        this.mPendingAccessibilityImportanceChange.add(d0Var);
        return false;
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z2) {
        if (z2 != this.mClipToPadding) {
            invalidateGlows();
        }
        this.mClipToPadding = z2;
        super.setClipToPadding(z2);
        if (this.mFirstLayoutComplete) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(k kVar) {
        b.h.n.g.a(kVar);
        this.mEdgeEffectFactory = kVar;
        invalidateGlows();
    }

    public void setHasFixedSize(boolean z2) {
        this.mHasFixedSize = z2;
    }

    public void setItemAnimator(l lVar) {
        l lVar2 = this.mItemAnimator;
        if (lVar2 != null) {
            lVar2.b();
            this.mItemAnimator.a((l.b) null);
        }
        this.mItemAnimator = lVar;
        l lVar3 = this.mItemAnimator;
        if (lVar3 != null) {
            lVar3.a(this.mItemAnimatorListener);
        }
    }

    public void setItemViewCacheSize(int i2) {
        this.mRecycler.f(i2);
    }

    public void setLayoutFrozen(boolean z2) {
        if (z2 != this.mLayoutFrozen) {
            assertNotInLayoutOrScroll("Do not setLayoutFrozen in layout or scroll");
            if (z2) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0));
                this.mLayoutFrozen = true;
                this.mIgnoreMotionEventTillDown = true;
                stopScroll();
                return;
            }
            this.mLayoutFrozen = false;
            if (this.mLayoutWasDefered && this.mLayout != null && this.mAdapter != null) {
                requestLayout();
            }
            this.mLayoutWasDefered = false;
        }
    }

    public void setLayoutManager(o oVar) {
        if (oVar == this.mLayout) {
            return;
        }
        stopScroll();
        if (this.mLayout != null) {
            l lVar = this.mItemAnimator;
            if (lVar != null) {
                lVar.b();
            }
            this.mLayout.b(this.mRecycler);
            this.mLayout.c(this.mRecycler);
            this.mRecycler.a();
            if (this.mIsAttached) {
                this.mLayout.a(this, this.mRecycler);
            }
            this.mLayout.f((RecyclerView) null);
            this.mLayout = null;
        } else {
            this.mRecycler.a();
        }
        this.mChildHelper.c();
        this.mLayout = oVar;
        if (oVar != null) {
            if (oVar.f1151b != null) {
                throw new IllegalArgumentException("LayoutManager " + oVar + " is already attached to a RecyclerView:" + oVar.f1151b.exceptionLabel());
            }
            this.mLayout.f(this);
            if (this.mIsAttached) {
                this.mLayout.a(this);
            }
        }
        this.mRecycler.j();
        requestLayout();
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z2) {
        getScrollingChildHelper().a(z2);
    }

    public void setOnFlingListener(r rVar) {
        this.mOnFlingListener = rVar;
    }

    @Deprecated
    public void setOnScrollListener(t tVar) {
        this.mScrollListener = tVar;
    }

    public void setPreserveFocusAfterLayout(boolean z2) {
        this.mPreserveFocusAfterLayout = z2;
    }

    public void setRecycledViewPool(u uVar) {
        this.mRecycler.a(uVar);
    }

    public void setRecyclerListener(w wVar) {
        this.mRecyclerListener = wVar;
    }

    void setScrollState(int i2) {
        if (i2 == this.mScrollState) {
            return;
        }
        this.mScrollState = i2;
        if (i2 != 2) {
            stopScrollersInternal();
        }
        dispatchOnScrollStateChanged(i2);
    }

    public void setScrollingTouchSlop(int i2) {
        int scaledTouchSlop;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i2 == 0) {
            scaledTouchSlop = viewConfiguration.getScaledTouchSlop();
        } else if (i2 != 1) {
            Log.w(TAG, "setScrollingTouchSlop(): bad argument constant " + i2 + "; using default value");
            scaledTouchSlop = viewConfiguration.getScaledTouchSlop();
        } else {
            scaledTouchSlop = viewConfiguration.getScaledPagingTouchSlop();
        }
        this.mTouchSlop = scaledTouchSlop;
    }

    public void setViewCacheExtension(b0 b0Var) {
        this.mRecycler.a(b0Var);
    }

    boolean shouldDeferAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (!isComputingLayout()) {
            return false;
        }
        int iA = accessibilityEvent != null ? b.h.o.b0.a.a(accessibilityEvent) : 0;
        if (iA == 0) {
            iA = 0;
        }
        this.mEatenAccessibilityChangeFlags = iA | this.mEatenAccessibilityChangeFlags;
        return true;
    }

    public void smoothScrollBy(int i2, int i3) {
        smoothScrollBy(i2, i3, null);
    }

    public void smoothScrollBy(int i2, int i3, Interpolator interpolator) {
        o oVar = this.mLayout;
        if (oVar == null) {
            Log.e(TAG, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.mLayoutFrozen) {
            return;
        }
        if (!oVar.a()) {
            i2 = 0;
        }
        if (!this.mLayout.b()) {
            i3 = 0;
        }
        if (i2 == 0 && i3 == 0) {
            return;
        }
        this.mViewFlinger.a(i2, i3, interpolator);
    }

    public void smoothScrollToPosition(int i2) {
        if (this.mLayoutFrozen) {
            return;
        }
        o oVar = this.mLayout;
        if (oVar == null) {
            Log.e(TAG, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            oVar.a(this, this.mState, i2);
        }
    }

    void startInterceptRequestLayout() {
        this.mInterceptRequestLayoutDepth++;
        if (this.mInterceptRequestLayoutDepth != 1 || this.mLayoutFrozen) {
            return;
        }
        this.mLayoutWasDefered = false;
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i2) {
        return getScrollingChildHelper().b(i2);
    }

    public boolean startNestedScroll(int i2, int i3) {
        return getScrollingChildHelper().a(i2, i3);
    }

    void stopInterceptRequestLayout(boolean z2) {
        if (this.mInterceptRequestLayoutDepth < 1) {
            this.mInterceptRequestLayoutDepth = 1;
        }
        if (!z2 && !this.mLayoutFrozen) {
            this.mLayoutWasDefered = false;
        }
        if (this.mInterceptRequestLayoutDepth == 1) {
            if (z2 && this.mLayoutWasDefered && !this.mLayoutFrozen && this.mLayout != null && this.mAdapter != null) {
                dispatchLayout();
            }
            if (!this.mLayoutFrozen) {
                this.mLayoutWasDefered = false;
            }
        }
        this.mInterceptRequestLayoutDepth--;
    }

    @Override // android.view.View, b.h.o.j
    public void stopNestedScroll() {
        getScrollingChildHelper().c();
    }

    @Override // b.h.o.i
    public void stopNestedScroll(int i2) {
        getScrollingChildHelper().c(i2);
    }

    public void stopScroll() {
        setScrollState(0);
        stopScrollersInternal();
    }

    public void swapAdapter(g gVar, boolean z2) {
        setLayoutFrozen(false);
        setAdapterInternal(gVar, true, z2);
        processDataSetCompletelyChanged(true);
        requestLayout();
    }

    void viewRangeUpdate(int i2, int i3, Object obj) {
        int i4;
        int iB = this.mChildHelper.b();
        int i5 = i2 + i3;
        for (int i6 = 0; i6 < iB; i6++) {
            View viewD = this.mChildHelper.d(i6);
            d0 childViewHolderInt = getChildViewHolderInt(viewD);
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && (i4 = childViewHolderInt.mPosition) >= i2 && i4 < i5) {
                childViewHolderInt.addFlags(2);
                childViewHolderInt.addChangePayload(obj);
                ((p) viewD.getLayoutParams()).f1169c = true;
            }
        }
        this.mRecycler.c(i2, i3);
    }
}
