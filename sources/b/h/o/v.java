package b.h.o;

import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;

/* JADX INFO: loaded from: classes.dex */
public final class v {
    public static void a(ViewParent viewParent, View view, int i2) {
        if (viewParent instanceof l) {
            ((l) viewParent).onStopNestedScroll(view, i2);
            return;
        }
        if (i2 == 0) {
            if (Build.VERSION.SDK_INT < 21) {
                if (viewParent instanceof m) {
                    ((m) viewParent).onStopNestedScroll(view);
                    return;
                }
                return;
            }
            try {
                viewParent.onStopNestedScroll(view);
            } catch (AbstractMethodError e2) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onStopNestedScroll", e2);
            }
        }
    }

    public static void a(ViewParent viewParent, View view, int i2, int i3, int i4, int i5, int i6) {
        if (viewParent instanceof l) {
            ((l) viewParent).onNestedScroll(view, i2, i3, i4, i5, i6);
            return;
        }
        if (i6 == 0) {
            if (Build.VERSION.SDK_INT < 21) {
                if (viewParent instanceof m) {
                    ((m) viewParent).onNestedScroll(view, i2, i3, i4, i5);
                    return;
                }
                return;
            }
            try {
                viewParent.onNestedScroll(view, i2, i3, i4, i5);
            } catch (AbstractMethodError e2) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedScroll", e2);
            }
        }
    }

    public static void a(ViewParent viewParent, View view, int i2, int i3, int[] iArr, int i4) {
        if (viewParent instanceof l) {
            ((l) viewParent).onNestedPreScroll(view, i2, i3, iArr, i4);
            return;
        }
        if (i4 == 0) {
            if (Build.VERSION.SDK_INT < 21) {
                if (viewParent instanceof m) {
                    ((m) viewParent).onNestedPreScroll(view, i2, i3, iArr);
                    return;
                }
                return;
            }
            try {
                viewParent.onNestedPreScroll(view, i2, i3, iArr);
            } catch (AbstractMethodError e2) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedPreScroll", e2);
            }
        }
    }

    public static void a(ViewParent viewParent, View view, View view2, int i2, int i3) {
        if (viewParent instanceof l) {
            ((l) viewParent).onNestedScrollAccepted(view, view2, i2, i3);
            return;
        }
        if (i3 == 0) {
            if (Build.VERSION.SDK_INT < 21) {
                if (viewParent instanceof m) {
                    ((m) viewParent).onNestedScrollAccepted(view, view2, i2);
                    return;
                }
                return;
            }
            try {
                viewParent.onNestedScrollAccepted(view, view2, i2);
            } catch (AbstractMethodError e2) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedScrollAccepted", e2);
            }
        }
    }

    public static boolean a(ViewParent viewParent, View view, float f2, float f3) {
        if (Build.VERSION.SDK_INT < 21) {
            if (viewParent instanceof m) {
                return ((m) viewParent).onNestedPreFling(view, f2, f3);
            }
            return false;
        }
        try {
            return viewParent.onNestedPreFling(view, f2, f3);
        } catch (AbstractMethodError e2) {
            Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedPreFling", e2);
            return false;
        }
    }

    public static boolean a(ViewParent viewParent, View view, float f2, float f3, boolean z) {
        if (Build.VERSION.SDK_INT < 21) {
            if (viewParent instanceof m) {
                return ((m) viewParent).onNestedFling(view, f2, f3, z);
            }
            return false;
        }
        try {
            return viewParent.onNestedFling(view, f2, f3, z);
        } catch (AbstractMethodError e2) {
            Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedFling", e2);
            return false;
        }
    }

    @Deprecated
    public static boolean a(ViewParent viewParent, View view, AccessibilityEvent accessibilityEvent) {
        return viewParent.requestSendAccessibilityEvent(view, accessibilityEvent);
    }

    public static boolean b(ViewParent viewParent, View view, View view2, int i2, int i3) {
        if (viewParent instanceof l) {
            return ((l) viewParent).onStartNestedScroll(view, view2, i2, i3);
        }
        if (i3 != 0) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 21) {
            if (viewParent instanceof m) {
                return ((m) viewParent).onStartNestedScroll(view, view2, i2);
            }
            return false;
        }
        try {
            return viewParent.onStartNestedScroll(view, view2, i2);
        } catch (AbstractMethodError e2) {
            Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onStartNestedScroll", e2);
            return false;
        }
    }
}
