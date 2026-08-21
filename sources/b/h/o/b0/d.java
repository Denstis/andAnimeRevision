package b.h.o.b0;

import android.os.Build;
import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f2574a;

    static class a extends AccessibilityNodeProvider {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final d f2575a;

        a(d dVar) {
            this.f2575a = dVar;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i2) {
            c cVarA = this.f2575a.a(i2);
            if (cVarA == null) {
                return null;
            }
            return cVarA.v();
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i2) {
            List<c> listA = this.f2575a.a(str, i2);
            if (listA == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            int size = listA.size();
            for (int i3 = 0; i3 < size; i3++) {
                arrayList.add(listA.get(i3).v());
            }
            return arrayList;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public boolean performAction(int i2, int i3, Bundle bundle) {
            return this.f2575a.a(i2, i3, bundle);
        }
    }

    static class b extends a {
        b(d dVar) {
            super(dVar);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo findFocus(int i2) {
            c cVarB = this.f2575a.b(i2);
            if (cVarB == null) {
                return null;
            }
            return cVarB.v();
        }
    }

    public d() {
        int i2 = Build.VERSION.SDK_INT;
        this.f2574a = i2 >= 19 ? new b(this) : i2 >= 16 ? new a(this) : null;
    }

    public d(Object obj) {
        this.f2574a = obj;
    }

    public c a(int i2) {
        return null;
    }

    public Object a() {
        return this.f2574a;
    }

    public List<c> a(String str, int i2) {
        return null;
    }

    public boolean a(int i2, int i3, Bundle bundle) {
        return false;
    }

    public c b(int i2) {
        return null;
    }
}
