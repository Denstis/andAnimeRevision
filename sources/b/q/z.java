package b.q;

import android.animation.LayoutTransition;
import android.util.Log;
import android.view.ViewGroup;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static LayoutTransition f2983a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Field f2984b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f2985c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Method f2986d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f2987e;

    static class a extends LayoutTransition {
        a() {
        }

        @Override // android.animation.LayoutTransition
        public boolean isChangingLayout() {
            return true;
        }
    }

    private static void a(LayoutTransition layoutTransition) {
        if (!f2987e) {
            try {
                f2986d = LayoutTransition.class.getDeclaredMethod("cancel", new Class[0]);
                f2986d.setAccessible(true);
            } catch (NoSuchMethodException unused) {
                Log.i("ViewGroupUtilsApi14", "Failed to access cancel method by reflection");
            }
            f2987e = true;
        }
        Method method = f2986d;
        if (method != null) {
            try {
                method.invoke(layoutTransition, new Object[0]);
            } catch (IllegalAccessException unused2) {
                Log.i("ViewGroupUtilsApi14", "Failed to access cancel method by reflection");
            } catch (InvocationTargetException unused3) {
                Log.i("ViewGroupUtilsApi14", "Failed to invoke cancel method by reflection");
            }
        }
    }

    static void a(ViewGroup viewGroup, boolean z) {
        LayoutTransition layoutTransition;
        boolean z2 = false;
        if (f2983a == null) {
            f2983a = new a();
            f2983a.setAnimator(2, null);
            f2983a.setAnimator(0, null);
            f2983a.setAnimator(1, null);
            f2983a.setAnimator(3, null);
            f2983a.setAnimator(4, null);
        }
        if (z) {
            LayoutTransition layoutTransition2 = viewGroup.getLayoutTransition();
            if (layoutTransition2 != null) {
                if (layoutTransition2.isRunning()) {
                    a(layoutTransition2);
                }
                if (layoutTransition2 != f2983a) {
                    viewGroup.setTag(j.transition_layout_save, layoutTransition2);
                }
            }
            layoutTransition = f2983a;
        } else {
            viewGroup.setLayoutTransition(null);
            if (!f2985c) {
                try {
                    f2984b = ViewGroup.class.getDeclaredField("mLayoutSuppressed");
                    f2984b.setAccessible(true);
                } catch (NoSuchFieldException unused) {
                    Log.i("ViewGroupUtilsApi14", "Failed to access mLayoutSuppressed field by reflection");
                }
                f2985c = true;
            }
            Field field = f2984b;
            if (field != null) {
                try {
                    boolean z3 = field.getBoolean(viewGroup);
                    if (z3) {
                        try {
                            f2984b.setBoolean(viewGroup, false);
                        } catch (IllegalAccessException unused2) {
                            z2 = z3;
                            Log.i("ViewGroupUtilsApi14", "Failed to get mLayoutSuppressed field by reflection");
                        }
                    }
                    z2 = z3;
                } catch (IllegalAccessException unused3) {
                }
            }
            if (z2) {
                viewGroup.requestLayout();
            }
            layoutTransition = (LayoutTransition) viewGroup.getTag(j.transition_layout_save);
            if (layoutTransition == null) {
                return;
            } else {
                viewGroup.setTag(j.transition_layout_save, null);
            }
        }
        viewGroup.setLayoutTransition(layoutTransition);
    }
}
