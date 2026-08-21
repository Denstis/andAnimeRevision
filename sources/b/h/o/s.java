package b.h.o;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.Display;
import android.view.KeyEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.WindowManager;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Field f2589a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f2590b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Field f2591c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f2592d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static WeakHashMap<View, String> f2593e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static WeakHashMap<View, w> f2594f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static Field f2595g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static boolean f2596h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static ThreadLocal<Rect> f2597i;

    static class a implements View.OnApplyWindowInsetsListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ o f2598a;

        a(o oVar) {
            this.f2598a = oVar;
        }

        @Override // android.view.View.OnApplyWindowInsetsListener
        public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            return (WindowInsets) a0.a(this.f2598a.onApplyWindowInsets(view, a0.a(windowInsets)));
        }
    }

    public interface b {
        boolean a(View view, KeyEvent keyEvent);
    }

    static class c {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final ArrayList<WeakReference<View>> f2599d = new ArrayList<>();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private WeakHashMap<View, Boolean> f2600a = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private SparseArray<WeakReference<View>> f2601b = null;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private WeakReference<KeyEvent> f2602c = null;

        c() {
        }

        private SparseArray<WeakReference<View>> a() {
            if (this.f2601b == null) {
                this.f2601b = new SparseArray<>();
            }
            return this.f2601b;
        }

        static c a(View view) {
            c cVar = (c) view.getTag(b.h.d.tag_unhandled_key_event_manager);
            if (cVar != null) {
                return cVar;
            }
            c cVar2 = new c();
            view.setTag(b.h.d.tag_unhandled_key_event_manager, cVar2);
            return cVar2;
        }

        private View b(View view, KeyEvent keyEvent) {
            WeakHashMap<View, Boolean> weakHashMap = this.f2600a;
            if (weakHashMap != null && weakHashMap.containsKey(view)) {
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                        View viewB = b(viewGroup.getChildAt(childCount), keyEvent);
                        if (viewB != null) {
                            return viewB;
                        }
                    }
                }
                if (c(view, keyEvent)) {
                    return view;
                }
            }
            return null;
        }

        private void b() {
            WeakHashMap<View, Boolean> weakHashMap = this.f2600a;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            if (f2599d.isEmpty()) {
                return;
            }
            synchronized (f2599d) {
                if (this.f2600a == null) {
                    this.f2600a = new WeakHashMap<>();
                }
                for (int size = f2599d.size() - 1; size >= 0; size--) {
                    View view = f2599d.get(size).get();
                    if (view == null) {
                        f2599d.remove(size);
                    } else {
                        this.f2600a.put(view, Boolean.TRUE);
                        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                            this.f2600a.put((View) parent, Boolean.TRUE);
                        }
                    }
                }
            }
        }

        private boolean c(View view, KeyEvent keyEvent) {
            ArrayList arrayList = (ArrayList) view.getTag(b.h.d.tag_unhandled_key_listeners);
            if (arrayList == null) {
                return false;
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (((b) arrayList.get(size)).a(view, keyEvent)) {
                    return true;
                }
            }
            return false;
        }

        boolean a(KeyEvent keyEvent) {
            int iIndexOfKey;
            WeakReference<KeyEvent> weakReference = this.f2602c;
            if (weakReference != null && weakReference.get() == keyEvent) {
                return false;
            }
            this.f2602c = new WeakReference<>(keyEvent);
            WeakReference<View> weakReferenceValueAt = null;
            SparseArray<WeakReference<View>> sparseArrayA = a();
            if (keyEvent.getAction() == 1 && (iIndexOfKey = sparseArrayA.indexOfKey(keyEvent.getKeyCode())) >= 0) {
                weakReferenceValueAt = sparseArrayA.valueAt(iIndexOfKey);
                sparseArrayA.removeAt(iIndexOfKey);
            }
            if (weakReferenceValueAt == null) {
                weakReferenceValueAt = sparseArrayA.get(keyEvent.getKeyCode());
            }
            if (weakReferenceValueAt == null) {
                return false;
            }
            View view = weakReferenceValueAt.get();
            if (view != null && s.y(view)) {
                c(view, keyEvent);
            }
            return true;
        }

        boolean a(View view, KeyEvent keyEvent) {
            if (keyEvent.getAction() == 0) {
                b();
            }
            View viewB = b(view, keyEvent);
            if (keyEvent.getAction() == 0) {
                int keyCode = keyEvent.getKeyCode();
                if (viewB != null && !KeyEvent.isModifierKey(keyCode)) {
                    a().put(keyCode, new WeakReference<>(viewB));
                }
            }
            return viewB != null;
        }
    }

    static {
        new AtomicInteger(1);
        f2594f = null;
        f2596h = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean A(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.isNestedScrollingEnabled();
        }
        if (view instanceof j) {
            return ((j) view).isNestedScrollingEnabled();
        }
        return false;
    }

    public static boolean B(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.isPaddingRelative();
        }
        return false;
    }

    public static void C(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postInvalidateOnAnimation();
        } else {
            view.postInvalidate();
        }
    }

    public static void D(View view) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 20) {
            view.requestApplyInsets();
        } else if (i2 >= 16) {
            view.requestFitSystemWindows();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void E(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.stopNestedScroll();
        } else if (view instanceof j) {
            ((j) view).stopNestedScroll();
        }
    }

    private static void F(View view) {
        float translationY = view.getTranslationY();
        view.setTranslationY(1.0f + translationY);
        view.setTranslationY(translationY);
    }

    private static Rect a() {
        if (f2597i == null) {
            f2597i = new ThreadLocal<>();
        }
        Rect rect = f2597i.get();
        if (rect == null) {
            rect = new Rect();
            f2597i.set(rect);
        }
        rect.setEmpty();
        return rect;
    }

    public static a0 a(View view, a0 a0Var) {
        if (Build.VERSION.SDK_INT < 21) {
            return a0Var;
        }
        WindowInsets windowInsets = (WindowInsets) a0.a(a0Var);
        WindowInsets windowInsetsDispatchApplyWindowInsets = view.dispatchApplyWindowInsets(windowInsets);
        if (windowInsetsDispatchApplyWindowInsets != windowInsets) {
            windowInsets = new WindowInsets(windowInsetsDispatchApplyWindowInsets);
        }
        return a0.a(windowInsets);
    }

    public static w a(View view) {
        if (f2594f == null) {
            f2594f = new WeakHashMap<>();
        }
        w wVar = f2594f.get(view);
        if (wVar != null) {
            return wVar;
        }
        w wVar2 = new w(view);
        f2594f.put(view, wVar2);
        return wVar2;
    }

    public static void a(View view, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setElevation(f2);
        }
    }

    private static void a(View view, int i2) {
        view.offsetLeftAndRight(i2);
        if (view.getVisibility() == 0) {
            F(view);
            Object parent = view.getParent();
            if (parent instanceof View) {
                F((View) parent);
            }
        }
    }

    public static void a(View view, int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 23) {
            view.setScrollIndicators(i2, i3);
        }
    }

    public static void a(View view, int i2, int i3, int i4, int i5) {
        if (Build.VERSION.SDK_INT >= 17) {
            view.setPaddingRelative(i2, i3, i4, i5);
        } else {
            view.setPadding(i2, i3, i4, i5);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(View view, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT < 21) {
            if (view instanceof r) {
                ((r) view).setSupportBackgroundTintList(colorStateList);
                return;
            }
            return;
        }
        view.setBackgroundTintList(colorStateList);
        if (Build.VERSION.SDK_INT == 21) {
            Drawable background = view.getBackground();
            boolean z = (view.getBackgroundTintList() == null && view.getBackgroundTintMode() == null) ? false : true;
            if (background == null || !z) {
                return;
            }
            if (background.isStateful()) {
                background.setState(view.getDrawableState());
            }
            view.setBackground(background);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(View view, PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT < 21) {
            if (view instanceof r) {
                ((r) view).setSupportBackgroundTintMode(mode);
                return;
            }
            return;
        }
        view.setBackgroundTintMode(mode);
        if (Build.VERSION.SDK_INT == 21) {
            Drawable background = view.getBackground();
            boolean z = (view.getBackgroundTintList() == null && view.getBackgroundTintMode() == null) ? false : true;
            if (background == null || !z) {
                return;
            }
            if (background.isStateful()) {
                background.setState(view.getDrawableState());
            }
            view.setBackground(background);
        }
    }

    public static void a(View view, Rect rect) {
        if (Build.VERSION.SDK_INT >= 18) {
            view.setClipBounds(rect);
        }
    }

    public static void a(View view, Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setBackground(drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }

    public static void a(View view, b.h.o.a aVar) {
        view.setAccessibilityDelegate(aVar == null ? null : aVar.getBridge());
    }

    public static void a(View view, b.h.o.b0.c cVar) {
        view.onInitializeAccessibilityNodeInfo(cVar.v());
    }

    public static void a(View view, o oVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            if (oVar == null) {
                view.setOnApplyWindowInsetsListener(null);
            } else {
                view.setOnApplyWindowInsetsListener(new a(oVar));
            }
        }
    }

    public static void a(View view, p pVar) {
        if (Build.VERSION.SDK_INT >= 24) {
            view.setPointerIcon((PointerIcon) (pVar != null ? pVar.a() : null));
        }
    }

    public static void a(View view, Runnable runnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimation(runnable);
        } else {
            view.postDelayed(runnable, ValueAnimator.getFrameDelay());
        }
    }

    public static void a(View view, Runnable runnable, long j2) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimationDelayed(runnable, j2);
        } else {
            view.postDelayed(runnable, ValueAnimator.getFrameDelay() + j2);
        }
    }

    public static void a(View view, String str) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setTransitionName(str);
            return;
        }
        if (f2593e == null) {
            f2593e = new WeakHashMap<>();
        }
        f2593e.put(view, str);
    }

    @Deprecated
    public static void a(View view, boolean z) {
        view.setFitsSystemWindows(z);
    }

    public static boolean a(View view, int i2, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.performAccessibilityAction(i2, bundle);
        }
        return false;
    }

    static boolean a(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return c.a(view).a(view, keyEvent);
    }

    public static int b(View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            return view.getAccessibilityLiveRegion();
        }
        return 0;
    }

    public static a0 b(View view, a0 a0Var) {
        if (Build.VERSION.SDK_INT < 21) {
            return a0Var;
        }
        WindowInsets windowInsets = (WindowInsets) a0.a(a0Var);
        WindowInsets windowInsetsOnApplyWindowInsets = view.onApplyWindowInsets(windowInsets);
        if (windowInsetsOnApplyWindowInsets != windowInsets) {
            windowInsets = new WindowInsets(windowInsetsOnApplyWindowInsets);
        }
        return a0.a(windowInsets);
    }

    public static void b(View view, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setTranslationZ(f2);
        }
    }

    private static void b(View view, int i2) {
        view.offsetTopAndBottom(i2);
        if (view.getVisibility() == 0) {
            F(view);
            Object parent = view.getParent();
            if (parent instanceof View) {
                F((View) parent);
            }
        }
    }

    public static void b(View view, boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setHasTransientState(z);
        }
    }

    static boolean b(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return c.a(view).a(keyEvent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ColorStateList c(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getBackgroundTintList();
        }
        if (view instanceof r) {
            return ((r) view).getSupportBackgroundTintList();
        }
        return null;
    }

    public static void c(View view, int i2) {
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 23) {
            view.offsetLeftAndRight(i2);
            return;
        }
        if (i3 < 21) {
            a(view, i2);
            return;
        }
        Rect rectA = a();
        boolean z = false;
        Object parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            rectA.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z = !rectA.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
        a(view, i2);
        if (z && rectA.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((View) parent).invalidate(rectA);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static PorterDuff.Mode d(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getBackgroundTintMode();
        }
        if (view instanceof r) {
            return ((r) view).getSupportBackgroundTintMode();
        }
        return null;
    }

    public static void d(View view, int i2) {
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 23) {
            view.offsetTopAndBottom(i2);
            return;
        }
        if (i3 < 21) {
            b(view, i2);
            return;
        }
        Rect rectA = a();
        boolean z = false;
        Object parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            rectA.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z = !rectA.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
        b(view, i2);
        if (z && rectA.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((View) parent).invalidate(rectA);
        }
    }

    public static Rect e(View view) {
        if (Build.VERSION.SDK_INT >= 18) {
            return view.getClipBounds();
        }
        return null;
    }

    public static void e(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 19) {
            view.setAccessibilityLiveRegion(i2);
        }
    }

    public static Display f(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.getDisplay();
        }
        if (y(view)) {
            return ((WindowManager) view.getContext().getSystemService("window")).getDefaultDisplay();
        }
        return null;
    }

    public static void f(View view, int i2) {
        int i3 = Build.VERSION.SDK_INT;
        if (i3 < 19) {
            if (i3 < 16) {
                return;
            }
            if (i2 == 4) {
                i2 = 2;
            }
        }
        view.setImportantForAccessibility(i2);
    }

    public static float g(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getElevation();
        }
        return 0.0f;
    }

    public static void g(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setImportantForAutofill(i2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void h(View view, int i2) {
        if (view instanceof i) {
            ((i) view).stopNestedScroll(i2);
        } else if (i2 == 0) {
            E(view);
        }
    }

    public static boolean h(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getFitsSystemWindows();
        }
        return false;
    }

    public static int i(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getImportantForAccessibility();
        }
        return 0;
    }

    @SuppressLint({"InlinedApi"})
    public static int j(View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return view.getImportantForAutofill();
        }
        return 0;
    }

    public static int k(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.getLayoutDirection();
        }
        return 0;
    }

    public static int l(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getMinimumHeight();
        }
        if (!f2592d) {
            try {
                f2591c = View.class.getDeclaredField("mMinHeight");
                f2591c.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f2592d = true;
        }
        Field field = f2591c;
        if (field == null) {
            return 0;
        }
        try {
            return ((Integer) field.get(view)).intValue();
        } catch (Exception unused2) {
            return 0;
        }
    }

    public static int m(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getMinimumWidth();
        }
        if (!f2590b) {
            try {
                f2589a = View.class.getDeclaredField("mMinWidth");
                f2589a.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f2590b = true;
        }
        Field field = f2589a;
        if (field == null) {
            return 0;
        }
        try {
            return ((Integer) field.get(view)).intValue();
        } catch (Exception unused2) {
            return 0;
        }
    }

    public static int n(View view) {
        return Build.VERSION.SDK_INT >= 17 ? view.getPaddingEnd() : view.getPaddingRight();
    }

    public static int o(View view) {
        return Build.VERSION.SDK_INT >= 17 ? view.getPaddingStart() : view.getPaddingLeft();
    }

    public static ViewParent p(View view) {
        return Build.VERSION.SDK_INT >= 16 ? view.getParentForAccessibility() : view.getParent();
    }

    public static String q(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getTransitionName();
        }
        WeakHashMap<View, String> weakHashMap = f2593e;
        if (weakHashMap == null) {
            return null;
        }
        return weakHashMap.get(view);
    }

    @Deprecated
    public static float r(View view) {
        return view.getTranslationY();
    }

    public static int s(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getWindowSystemUiVisibility();
        }
        return 0;
    }

    public static float t(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getZ();
        }
        return 0.0f;
    }

    public static boolean u(View view) {
        if (f2596h) {
            return false;
        }
        if (f2595g == null) {
            try {
                f2595g = View.class.getDeclaredField("mAccessibilityDelegate");
                f2595g.setAccessible(true);
            } catch (Throwable unused) {
                f2596h = true;
                return false;
            }
        }
        try {
            return f2595g.get(view) != null;
        } catch (Throwable unused2) {
            f2596h = true;
            return false;
        }
    }

    public static boolean v(View view) {
        if (Build.VERSION.SDK_INT >= 15) {
            return view.hasOnClickListeners();
        }
        return false;
    }

    public static boolean w(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.hasOverlappingRendering();
        }
        return true;
    }

    public static boolean x(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.hasTransientState();
        }
        return false;
    }

    public static boolean y(View view) {
        return Build.VERSION.SDK_INT >= 19 ? view.isAttachedToWindow() : view.getWindowToken() != null;
    }

    public static boolean z(View view) {
        return Build.VERSION.SDK_INT >= 19 ? view.isLaidOut() : view.getWidth() > 0 && view.getHeight() > 0;
    }
}
