package b.j.b;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import b.e.h;
import b.h.o.b0.d;
import b.h.o.b0.e;
import b.h.o.s;
import b.h.o.v;
import b.j.b.b;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class a extends b.h.o.a {
    private static final String DEFAULT_CLASS_NAME = "android.view.View";
    public static final int HOST_ID = -1;
    public static final int INVALID_ID = Integer.MIN_VALUE;
    private static final Rect INVALID_PARENT_BOUNDS = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);
    private static final b.a<b.h.o.b0.c> NODE_ADAPTER = new C0111a();
    private static final b.InterfaceC0112b<h<b.h.o.b0.c>, b.h.o.b0.c> SPARSE_VALUES_ADAPTER = new b();
    private final View mHost;
    private final AccessibilityManager mManager;
    private c mNodeProvider;
    private final Rect mTempScreenRect = new Rect();
    private final Rect mTempParentRect = new Rect();
    private final Rect mTempVisibleRect = new Rect();
    private final int[] mTempGlobalRect = new int[2];
    int mAccessibilityFocusedVirtualViewId = Integer.MIN_VALUE;
    int mKeyboardFocusedVirtualViewId = Integer.MIN_VALUE;
    private int mHoveredVirtualViewId = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: b.j.b.a$a, reason: collision with other inner class name */
    static class C0111a implements b.a<b.h.o.b0.c> {
        C0111a() {
        }

        @Override // b.j.b.b.a
        public void a(b.h.o.b0.c cVar, Rect rect) {
            cVar.a(rect);
        }
    }

    static class b implements b.InterfaceC0112b<h<b.h.o.b0.c>, b.h.o.b0.c> {
        b() {
        }

        @Override // b.j.b.b.InterfaceC0112b
        public int a(h<b.h.o.b0.c> hVar) {
            return hVar.b();
        }

        @Override // b.j.b.b.InterfaceC0112b
        public b.h.o.b0.c a(h<b.h.o.b0.c> hVar, int i2) {
            return hVar.f(i2);
        }
    }

    private class c extends d {
        c() {
        }

        @Override // b.h.o.b0.d
        public b.h.o.b0.c a(int i2) {
            return b.h.o.b0.c.a(a.this.obtainAccessibilityNodeInfo(i2));
        }

        @Override // b.h.o.b0.d
        public boolean a(int i2, int i3, Bundle bundle) {
            return a.this.performAction(i2, i3, bundle);
        }

        @Override // b.h.o.b0.d
        public b.h.o.b0.c b(int i2) {
            int i3 = i2 == 2 ? a.this.mAccessibilityFocusedVirtualViewId : a.this.mKeyboardFocusedVirtualViewId;
            if (i3 == Integer.MIN_VALUE) {
                return null;
            }
            return a(i3);
        }
    }

    public a(View view) {
        if (view == null) {
            throw new IllegalArgumentException("View may not be null");
        }
        this.mHost = view;
        this.mManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        view.setFocusable(true);
        if (s.i(view) == 0) {
            s.f(view, 1);
        }
    }

    private boolean clearAccessibilityFocus(int i2) {
        if (this.mAccessibilityFocusedVirtualViewId != i2) {
            return false;
        }
        this.mAccessibilityFocusedVirtualViewId = Integer.MIN_VALUE;
        this.mHost.invalidate();
        sendEventForVirtualView(i2, C.DEFAULT_BUFFER_SEGMENT_SIZE);
        return true;
    }

    private boolean clickKeyboardFocusedVirtualView() {
        int i2 = this.mKeyboardFocusedVirtualViewId;
        return i2 != Integer.MIN_VALUE && onPerformActionForVirtualView(i2, 16, null);
    }

    private AccessibilityEvent createEvent(int i2, int i3) {
        return i2 != -1 ? createEventForChild(i2, i3) : createEventForHost(i3);
    }

    private AccessibilityEvent createEventForChild(int i2, int i3) {
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i3);
        b.h.o.b0.c cVarObtainAccessibilityNodeInfo = obtainAccessibilityNodeInfo(i2);
        accessibilityEventObtain.getText().add(cVarObtainAccessibilityNodeInfo.g());
        accessibilityEventObtain.setContentDescription(cVarObtainAccessibilityNodeInfo.d());
        accessibilityEventObtain.setScrollable(cVarObtainAccessibilityNodeInfo.r());
        accessibilityEventObtain.setPassword(cVarObtainAccessibilityNodeInfo.q());
        accessibilityEventObtain.setEnabled(cVarObtainAccessibilityNodeInfo.m());
        accessibilityEventObtain.setChecked(cVarObtainAccessibilityNodeInfo.k());
        onPopulateEventForVirtualView(i2, accessibilityEventObtain);
        if (accessibilityEventObtain.getText().isEmpty() && accessibilityEventObtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
        }
        accessibilityEventObtain.setClassName(cVarObtainAccessibilityNodeInfo.c());
        e.a(accessibilityEventObtain, this.mHost, i2);
        accessibilityEventObtain.setPackageName(this.mHost.getContext().getPackageName());
        return accessibilityEventObtain;
    }

    private AccessibilityEvent createEventForHost(int i2) {
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i2);
        this.mHost.onInitializeAccessibilityEvent(accessibilityEventObtain);
        return accessibilityEventObtain;
    }

    private b.h.o.b0.c createNodeForChild(int i2) {
        b.h.o.b0.c cVarW = b.h.o.b0.c.w();
        cVarW.g(true);
        cVarW.h(true);
        cVarW.a(DEFAULT_CLASS_NAME);
        cVarW.c(INVALID_PARENT_BOUNDS);
        cVarW.d(INVALID_PARENT_BOUNDS);
        cVarW.b(this.mHost);
        onPopulateNodeForVirtualView(i2, cVarW);
        if (cVarW.g() == null && cVarW.d() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        cVarW.a(this.mTempParentRect);
        if (this.mTempParentRect.equals(INVALID_PARENT_BOUNDS)) {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
        int iA = cVarW.a();
        if ((iA & 64) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        if ((iA & 128) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        cVarW.e(this.mHost.getContext().getPackageName());
        cVarW.c(this.mHost, i2);
        if (this.mAccessibilityFocusedVirtualViewId == i2) {
            cVarW.a(true);
            cVarW.a(128);
        } else {
            cVarW.a(false);
            cVarW.a(64);
        }
        boolean z = this.mKeyboardFocusedVirtualViewId == i2;
        if (z) {
            cVarW.a(2);
        } else if (cVarW.n()) {
            cVarW.a(1);
        }
        cVarW.i(z);
        this.mHost.getLocationOnScreen(this.mTempGlobalRect);
        cVarW.b(this.mTempScreenRect);
        if (this.mTempScreenRect.equals(INVALID_PARENT_BOUNDS)) {
            cVarW.a(this.mTempScreenRect);
            if (cVarW.f2567b != -1) {
                b.h.o.b0.c cVarW2 = b.h.o.b0.c.w();
                for (int i3 = cVarW.f2567b; i3 != -1; i3 = cVarW2.f2567b) {
                    cVarW2.b(this.mHost, -1);
                    cVarW2.c(INVALID_PARENT_BOUNDS);
                    onPopulateNodeForVirtualView(i3, cVarW2);
                    cVarW2.a(this.mTempParentRect);
                    Rect rect = this.mTempScreenRect;
                    Rect rect2 = this.mTempParentRect;
                    rect.offset(rect2.left, rect2.top);
                }
                cVarW2.u();
            }
            this.mTempScreenRect.offset(this.mTempGlobalRect[0] - this.mHost.getScrollX(), this.mTempGlobalRect[1] - this.mHost.getScrollY());
        }
        if (this.mHost.getLocalVisibleRect(this.mTempVisibleRect)) {
            this.mTempVisibleRect.offset(this.mTempGlobalRect[0] - this.mHost.getScrollX(), this.mTempGlobalRect[1] - this.mHost.getScrollY());
            if (this.mTempScreenRect.intersect(this.mTempVisibleRect)) {
                cVarW.d(this.mTempScreenRect);
                if (isVisibleToUser(this.mTempScreenRect)) {
                    cVarW.n(true);
                }
            }
        }
        return cVarW;
    }

    private b.h.o.b0.c createNodeForHost() {
        b.h.o.b0.c cVarD = b.h.o.b0.c.d(this.mHost);
        s.a(this.mHost, cVarD);
        ArrayList arrayList = new ArrayList();
        getVisibleVirtualViews(arrayList);
        if (cVarD.b() > 0 && arrayList.size() > 0) {
            throw new RuntimeException("Views cannot have both real and virtual children");
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            cVarD.a(this.mHost, ((Integer) arrayList.get(i2)).intValue());
        }
        return cVarD;
    }

    private h<b.h.o.b0.c> getAllNodes() {
        ArrayList arrayList = new ArrayList();
        getVisibleVirtualViews(arrayList);
        h<b.h.o.b0.c> hVar = new h<>();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            hVar.c(i2, createNodeForChild(i2));
        }
        return hVar;
    }

    private void getBoundsInParent(int i2, Rect rect) {
        obtainAccessibilityNodeInfo(i2).a(rect);
    }

    private static Rect guessPreviouslyFocusedRect(View view, int i2, Rect rect) {
        int width = view.getWidth();
        int height = view.getHeight();
        if (i2 == 17) {
            rect.set(width, 0, width, height);
        } else if (i2 == 33) {
            rect.set(0, height, width, height);
        } else if (i2 == 66) {
            rect.set(-1, 0, -1, height);
        } else {
            if (i2 != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            rect.set(0, -1, width, -1);
        }
        return rect;
    }

    private boolean isVisibleToUser(Rect rect) {
        if (rect == null || rect.isEmpty() || this.mHost.getWindowVisibility() != 0) {
            return false;
        }
        View view = this.mHost;
        do {
            Object parent = view.getParent();
            if (!(parent instanceof View)) {
                return parent != null;
            }
            view = (View) parent;
            if (view.getAlpha() <= 0.0f) {
                break;
            }
        } while (view.getVisibility() == 0);
        return false;
    }

    private static int keyToDirection(int i2) {
        if (i2 == 19) {
            return 33;
        }
        if (i2 == 21) {
            return 17;
        }
        if (i2 != 22) {
            return TsExtractor.TS_STREAM_TYPE_HDMV_DTS;
        }
        return 66;
    }

    private boolean moveFocus(int i2, Rect rect) {
        Object objA;
        h<b.h.o.b0.c> allNodes = getAllNodes();
        int i3 = this.mKeyboardFocusedVirtualViewId;
        b.h.o.b0.c cVarB = i3 == Integer.MIN_VALUE ? null : allNodes.b(i3);
        if (i2 == 1 || i2 == 2) {
            objA = b.j.b.b.a(allNodes, SPARSE_VALUES_ADAPTER, NODE_ADAPTER, cVarB, i2, s.k(this.mHost) == 1, false);
        } else {
            if (i2 != 17 && i2 != 33 && i2 != 66 && i2 != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            Rect rect2 = new Rect();
            int i4 = this.mKeyboardFocusedVirtualViewId;
            if (i4 != Integer.MIN_VALUE) {
                getBoundsInParent(i4, rect2);
            } else if (rect != null) {
                rect2.set(rect);
            } else {
                guessPreviouslyFocusedRect(this.mHost, i2, rect2);
            }
            objA = b.j.b.b.a(allNodes, SPARSE_VALUES_ADAPTER, NODE_ADAPTER, cVarB, rect2, i2);
        }
        b.h.o.b0.c cVar = (b.h.o.b0.c) objA;
        return requestKeyboardFocusForVirtualView(cVar != null ? allNodes.d(allNodes.a(cVar)) : Integer.MIN_VALUE);
    }

    private boolean performActionForChild(int i2, int i3, Bundle bundle) {
        return i3 != 1 ? i3 != 2 ? i3 != 64 ? i3 != 128 ? onPerformActionForVirtualView(i2, i3, bundle) : clearAccessibilityFocus(i2) : requestAccessibilityFocus(i2) : clearKeyboardFocusForVirtualView(i2) : requestKeyboardFocusForVirtualView(i2);
    }

    private boolean performActionForHost(int i2, Bundle bundle) {
        return s.a(this.mHost, i2, bundle);
    }

    private boolean requestAccessibilityFocus(int i2) {
        int i3;
        if (!this.mManager.isEnabled() || !this.mManager.isTouchExplorationEnabled() || (i3 = this.mAccessibilityFocusedVirtualViewId) == i2) {
            return false;
        }
        if (i3 != Integer.MIN_VALUE) {
            clearAccessibilityFocus(i3);
        }
        this.mAccessibilityFocusedVirtualViewId = i2;
        this.mHost.invalidate();
        sendEventForVirtualView(i2, 32768);
        return true;
    }

    private void updateHoveredVirtualView(int i2) {
        int i3 = this.mHoveredVirtualViewId;
        if (i3 == i2) {
            return;
        }
        this.mHoveredVirtualViewId = i2;
        sendEventForVirtualView(i2, 128);
        sendEventForVirtualView(i3, 256);
    }

    public final boolean clearKeyboardFocusForVirtualView(int i2) {
        if (this.mKeyboardFocusedVirtualViewId != i2) {
            return false;
        }
        this.mKeyboardFocusedVirtualViewId = Integer.MIN_VALUE;
        onVirtualViewKeyboardFocusChanged(i2, false);
        sendEventForVirtualView(i2, 8);
        return true;
    }

    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        if (!this.mManager.isEnabled() || !this.mManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 7 || action == 9) {
            int virtualViewAt = getVirtualViewAt(motionEvent.getX(), motionEvent.getY());
            updateHoveredVirtualView(virtualViewAt);
            return virtualViewAt != Integer.MIN_VALUE;
        }
        if (action != 10 || this.mHoveredVirtualViewId == Integer.MIN_VALUE) {
            return false;
        }
        updateHoveredVirtualView(Integer.MIN_VALUE);
        return true;
    }

    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int i2 = 0;
        if (keyEvent.getAction() == 1) {
            return false;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 61) {
            if (keyEvent.hasNoModifiers()) {
                return moveFocus(2, null);
            }
            if (keyEvent.hasModifiers(1)) {
                return moveFocus(1, null);
            }
            return false;
        }
        if (keyCode != 66) {
            switch (keyCode) {
                case 19:
                case 20:
                case 21:
                case 22:
                    if (!keyEvent.hasNoModifiers()) {
                        return false;
                    }
                    int iKeyToDirection = keyToDirection(keyCode);
                    int repeatCount = keyEvent.getRepeatCount() + 1;
                    boolean z = false;
                    while (i2 < repeatCount && moveFocus(iKeyToDirection, null)) {
                        i2++;
                        z = true;
                    }
                    return z;
                case 23:
                    break;
                default:
                    return false;
            }
        }
        if (!keyEvent.hasNoModifiers() || keyEvent.getRepeatCount() != 0) {
            return false;
        }
        clickKeyboardFocusedVirtualView();
        return true;
    }

    public final int getAccessibilityFocusedVirtualViewId() {
        return this.mAccessibilityFocusedVirtualViewId;
    }

    @Override // b.h.o.a
    public d getAccessibilityNodeProvider(View view) {
        if (this.mNodeProvider == null) {
            this.mNodeProvider = new c();
        }
        return this.mNodeProvider;
    }

    @Deprecated
    public int getFocusedVirtualView() {
        return getAccessibilityFocusedVirtualViewId();
    }

    public final int getKeyboardFocusedVirtualViewId() {
        return this.mKeyboardFocusedVirtualViewId;
    }

    protected abstract int getVirtualViewAt(float f2, float f3);

    protected abstract void getVisibleVirtualViews(List<Integer> list);

    public final void invalidateRoot() {
        invalidateVirtualView(-1, 1);
    }

    public final void invalidateVirtualView(int i2) {
        invalidateVirtualView(i2, 0);
    }

    public final void invalidateVirtualView(int i2, int i3) {
        ViewParent parent;
        if (i2 == Integer.MIN_VALUE || !this.mManager.isEnabled() || (parent = this.mHost.getParent()) == null) {
            return;
        }
        AccessibilityEvent accessibilityEventCreateEvent = createEvent(i2, 2048);
        b.h.o.b0.a.a(accessibilityEventCreateEvent, i3);
        v.a(parent, this.mHost, accessibilityEventCreateEvent);
    }

    b.h.o.b0.c obtainAccessibilityNodeInfo(int i2) {
        return i2 == -1 ? createNodeForHost() : createNodeForChild(i2);
    }

    public final void onFocusChanged(boolean z, int i2, Rect rect) {
        int i3 = this.mKeyboardFocusedVirtualViewId;
        if (i3 != Integer.MIN_VALUE) {
            clearKeyboardFocusForVirtualView(i3);
        }
        if (z) {
            moveFocus(i2, rect);
        }
    }

    @Override // b.h.o.a
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        onPopulateEventForHost(accessibilityEvent);
    }

    @Override // b.h.o.a
    public void onInitializeAccessibilityNodeInfo(View view, b.h.o.b0.c cVar) {
        super.onInitializeAccessibilityNodeInfo(view, cVar);
        onPopulateNodeForHost(cVar);
    }

    protected abstract boolean onPerformActionForVirtualView(int i2, int i3, Bundle bundle);

    protected void onPopulateEventForHost(AccessibilityEvent accessibilityEvent) {
    }

    protected void onPopulateEventForVirtualView(int i2, AccessibilityEvent accessibilityEvent) {
    }

    protected void onPopulateNodeForHost(b.h.o.b0.c cVar) {
    }

    protected abstract void onPopulateNodeForVirtualView(int i2, b.h.o.b0.c cVar);

    protected void onVirtualViewKeyboardFocusChanged(int i2, boolean z) {
    }

    boolean performAction(int i2, int i3, Bundle bundle) {
        return i2 != -1 ? performActionForChild(i2, i3, bundle) : performActionForHost(i3, bundle);
    }

    public final boolean requestKeyboardFocusForVirtualView(int i2) {
        int i3;
        if ((!this.mHost.isFocused() && !this.mHost.requestFocus()) || (i3 = this.mKeyboardFocusedVirtualViewId) == i2) {
            return false;
        }
        if (i3 != Integer.MIN_VALUE) {
            clearKeyboardFocusForVirtualView(i3);
        }
        this.mKeyboardFocusedVirtualViewId = i2;
        onVirtualViewKeyboardFocusChanged(i2, true);
        sendEventForVirtualView(i2, 8);
        return true;
    }

    public final boolean sendEventForVirtualView(int i2, int i3) {
        ViewParent parent;
        if (i2 == Integer.MIN_VALUE || !this.mManager.isEnabled() || (parent = this.mHost.getParent()) == null) {
            return false;
        }
        return v.a(parent, this.mHost, createEvent(i2, i3));
    }
}
