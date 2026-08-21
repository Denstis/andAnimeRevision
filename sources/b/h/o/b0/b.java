package b.h.o.b0;

import android.os.Build;
import android.view.accessibility.AccessibilityManager;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    public interface a {
        void onTouchExplorationStateChanged(boolean z);
    }

    /* JADX INFO: renamed from: b.h.o.b0.b$b, reason: collision with other inner class name */
    private static class AccessibilityManagerTouchExplorationStateChangeListenerC0107b implements AccessibilityManager.TouchExplorationStateChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final a f2565a;

        AccessibilityManagerTouchExplorationStateChangeListenerC0107b(a aVar) {
            this.f2565a = aVar;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || AccessibilityManagerTouchExplorationStateChangeListenerC0107b.class != obj.getClass()) {
                return false;
            }
            return this.f2565a.equals(((AccessibilityManagerTouchExplorationStateChangeListenerC0107b) obj).f2565a);
        }

        public int hashCode() {
            return this.f2565a.hashCode();
        }

        @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
        public void onTouchExplorationStateChanged(boolean z) {
            this.f2565a.onTouchExplorationStateChanged(z);
        }
    }

    public static boolean a(AccessibilityManager accessibilityManager, a aVar) {
        if (Build.VERSION.SDK_INT < 19 || aVar == null) {
            return false;
        }
        return accessibilityManager.addTouchExplorationStateChangeListener(new AccessibilityManagerTouchExplorationStateChangeListenerC0107b(aVar));
    }

    public static boolean b(AccessibilityManager accessibilityManager, a aVar) {
        if (Build.VERSION.SDK_INT < 19 || aVar == null) {
            return false;
        }
        return accessibilityManager.removeTouchExplorationStateChangeListener(new AccessibilityManagerTouchExplorationStateChangeListenerC0107b(aVar));
    }
}
