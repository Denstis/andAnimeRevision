package androidx.recyclerview.widget;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

/* JADX INFO: loaded from: classes.dex */
public class t extends b.h.o.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final RecyclerView f1396a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final b.h.o.a f1397b = new a(this);

    public static class a extends b.h.o.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final t f1398a;

        public a(t tVar) {
            this.f1398a = tVar;
        }

        @Override // b.h.o.a
        public void onInitializeAccessibilityNodeInfo(View view, b.h.o.b0.c cVar) {
            super.onInitializeAccessibilityNodeInfo(view, cVar);
            if (this.f1398a.b() || this.f1398a.f1396a.getLayoutManager() == null) {
                return;
            }
            this.f1398a.f1396a.getLayoutManager().a(view, cVar);
        }

        @Override // b.h.o.a
        public boolean performAccessibilityAction(View view, int i2, Bundle bundle) {
            if (super.performAccessibilityAction(view, i2, bundle)) {
                return true;
            }
            if (this.f1398a.b() || this.f1398a.f1396a.getLayoutManager() == null) {
                return false;
            }
            return this.f1398a.f1396a.getLayoutManager().a(view, i2, bundle);
        }
    }

    public t(RecyclerView recyclerView) {
        this.f1396a = recyclerView;
    }

    public b.h.o.a a() {
        return this.f1397b;
    }

    boolean b() {
        return this.f1396a.hasPendingAdapterUpdates();
    }

    @Override // b.h.o.a
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        accessibilityEvent.setClassName(RecyclerView.class.getName());
        if (!(view instanceof RecyclerView) || b()) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) view;
        if (recyclerView.getLayoutManager() != null) {
            recyclerView.getLayoutManager().a(accessibilityEvent);
        }
    }

    @Override // b.h.o.a
    public void onInitializeAccessibilityNodeInfo(View view, b.h.o.b0.c cVar) {
        super.onInitializeAccessibilityNodeInfo(view, cVar);
        cVar.a((CharSequence) RecyclerView.class.getName());
        if (b() || this.f1396a.getLayoutManager() == null) {
            return;
        }
        this.f1396a.getLayoutManager().a(cVar);
    }

    @Override // b.h.o.a
    public boolean performAccessibilityAction(View view, int i2, Bundle bundle) {
        if (super.performAccessibilityAction(view, i2, bundle)) {
            return true;
        }
        if (b() || this.f1396a.getLayoutManager() == null) {
            return false;
        }
        return this.f1396a.getLayoutManager().a(i2, bundle);
    }
}
