package b.h.o.b0;

import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.MpegAudioHeader;
import com.google.android.exoplayer2.source.ExtractorMediaSource;
import com.google.android.gms.ads.AdRequest;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AccessibilityNodeInfo f2566a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2567b = -1;

    public static class a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final a f2568b = new a(1, null);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final a f2569c = new a(2, null);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final a f2570d;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Object f2571a;

        static {
            new a(4, null);
            new a(8, null);
            f2570d = new a(16, null);
            new a(32, null);
            new a(64, null);
            new a(128, null);
            new a(256, null);
            new a(AdRequest.MAX_CONTENT_URL_LENGTH, null);
            new a(1024, null);
            new a(2048, null);
            new a(MpegAudioHeader.MAX_FRAME_SIZE_BYTES, null);
            new a(8192, null);
            new a(16384, null);
            new a(32768, null);
            new a(C.DEFAULT_BUFFER_SEGMENT_SIZE, null);
            new a(131072, null);
            new a(262144, null);
            new a(524288, null);
            new a(ExtractorMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES, null);
            new a(2097152, null);
            new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN : null);
            new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION : null);
            new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP : null);
            new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT : null);
            new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN : null);
            new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT : null);
            new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK : null);
            new a(Build.VERSION.SDK_INT >= 24 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS : null);
            new a(Build.VERSION.SDK_INT >= 26 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW : null);
            new a(Build.VERSION.SDK_INT >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP : null);
            new a(Build.VERSION.SDK_INT >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP : null);
        }

        public a(int i2, CharSequence charSequence) {
            this(Build.VERSION.SDK_INT >= 21 ? new AccessibilityNodeInfo.AccessibilityAction(i2, charSequence) : null);
        }

        a(Object obj) {
            this.f2571a = obj;
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Object f2572a;

        b(Object obj) {
            this.f2572a = obj;
        }

        public static b a(int i2, int i3, boolean z, int i4) {
            int i5 = Build.VERSION.SDK_INT;
            return i5 >= 21 ? new b(AccessibilityNodeInfo.CollectionInfo.obtain(i2, i3, z, i4)) : i5 >= 19 ? new b(AccessibilityNodeInfo.CollectionInfo.obtain(i2, i3, z)) : new b(null);
        }
    }

    /* JADX INFO: renamed from: b.h.o.b0.c$c, reason: collision with other inner class name */
    public static class C0108c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Object f2573a;

        C0108c(Object obj) {
            this.f2573a = obj;
        }

        public static C0108c a(int i2, int i3, int i4, int i5, boolean z, boolean z2) {
            int i6 = Build.VERSION.SDK_INT;
            return i6 >= 21 ? new C0108c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i2, i3, i4, i5, z, z2)) : i6 >= 19 ? new C0108c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i2, i3, i4, i5, z)) : new C0108c(null);
        }
    }

    private c(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.f2566a = accessibilityNodeInfo;
    }

    public static c a(AccessibilityNodeInfo accessibilityNodeInfo) {
        return new c(accessibilityNodeInfo);
    }

    public static c a(c cVar) {
        return a(AccessibilityNodeInfo.obtain(cVar.f2566a));
    }

    private void a(int i2, boolean z) {
        Bundle bundleE = e();
        if (bundleE != null) {
            int i3 = bundleE.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & (i2 ^ (-1));
            if (!z) {
                i2 = 0;
            }
            bundleE.putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", i2 | i3);
        }
    }

    private static String b(int i2) {
        if (i2 == 1) {
            return "ACTION_FOCUS";
        }
        if (i2 == 2) {
            return "ACTION_CLEAR_FOCUS";
        }
        switch (i2) {
            case 4:
                return "ACTION_SELECT";
            case 8:
                return "ACTION_CLEAR_SELECTION";
            case 16:
                return "ACTION_CLICK";
            case 32:
                return "ACTION_LONG_CLICK";
            case 64:
                return "ACTION_ACCESSIBILITY_FOCUS";
            case 128:
                return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
            case 256:
                return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
            case AdRequest.MAX_CONTENT_URL_LENGTH /* 512 */:
                return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
            case 1024:
                return "ACTION_NEXT_HTML_ELEMENT";
            case 2048:
                return "ACTION_PREVIOUS_HTML_ELEMENT";
            case MpegAudioHeader.MAX_FRAME_SIZE_BYTES /* 4096 */:
                return "ACTION_SCROLL_FORWARD";
            case 8192:
                return "ACTION_SCROLL_BACKWARD";
            case 16384:
                return "ACTION_COPY";
            case 32768:
                return "ACTION_PASTE";
            case C.DEFAULT_BUFFER_SEGMENT_SIZE /* 65536 */:
                return "ACTION_CUT";
            case 131072:
                return "ACTION_SET_SELECTION";
            default:
                return "ACTION_UNKNOWN";
        }
    }

    public static c d(View view) {
        return a(AccessibilityNodeInfo.obtain(view));
    }

    public static c w() {
        return a(AccessibilityNodeInfo.obtain());
    }

    public int a() {
        return this.f2566a.getActions();
    }

    public void a(int i2) {
        this.f2566a.addAction(i2);
    }

    public void a(Rect rect) {
        this.f2566a.getBoundsInParent(rect);
    }

    public void a(View view) {
        this.f2566a.addChild(view);
    }

    public void a(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f2566a.addChild(view, i2);
        }
    }

    public void a(a aVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f2566a.addAction((AccessibilityNodeInfo.AccessibilityAction) aVar.f2571a);
        }
    }

    public void a(CharSequence charSequence) {
        this.f2566a.setClassName(charSequence);
    }

    public void a(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f2566a.setCollectionInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionInfo) ((b) obj).f2572a);
        }
    }

    public void a(boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f2566a.setAccessibilityFocused(z);
        }
    }

    public int b() {
        return this.f2566a.getChildCount();
    }

    public void b(Rect rect) {
        this.f2566a.getBoundsInScreen(rect);
    }

    public void b(View view) {
        this.f2566a.setParent(view);
    }

    public void b(View view, int i2) {
        this.f2567b = i2;
        if (Build.VERSION.SDK_INT >= 16) {
            this.f2566a.setParent(view, i2);
        }
    }

    public void b(CharSequence charSequence) {
        this.f2566a.setContentDescription(charSequence);
    }

    public void b(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f2566a.setCollectionItemInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionItemInfo) ((C0108c) obj).f2573a);
        }
    }

    public void b(boolean z) {
        this.f2566a.setCheckable(z);
    }

    public boolean b(a aVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            return this.f2566a.removeAction((AccessibilityNodeInfo.AccessibilityAction) aVar.f2571a);
        }
        return false;
    }

    public CharSequence c() {
        return this.f2566a.getClassName();
    }

    public void c(Rect rect) {
        this.f2566a.setBoundsInParent(rect);
    }

    public void c(View view) {
        this.f2566a.setSource(view);
    }

    public void c(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f2566a.setSource(view, i2);
        }
    }

    public void c(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f2566a.setError(charSequence);
        }
    }

    public void c(boolean z) {
        this.f2566a.setChecked(z);
    }

    public CharSequence d() {
        return this.f2566a.getContentDescription();
    }

    public void d(Rect rect) {
        this.f2566a.setBoundsInScreen(rect);
    }

    public void d(CharSequence charSequence) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            this.f2566a.setHintText(charSequence);
        } else if (i2 >= 19) {
            this.f2566a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY", charSequence);
        }
    }

    public void d(boolean z) {
        this.f2566a.setClickable(z);
    }

    public Bundle e() {
        return Build.VERSION.SDK_INT >= 19 ? this.f2566a.getExtras() : new Bundle();
    }

    public void e(CharSequence charSequence) {
        this.f2566a.setPackageName(charSequence);
    }

    public void e(boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f2566a.setContentInvalid(z);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        AccessibilityNodeInfo accessibilityNodeInfo = this.f2566a;
        AccessibilityNodeInfo accessibilityNodeInfo2 = ((c) obj).f2566a;
        if (accessibilityNodeInfo == null) {
            if (accessibilityNodeInfo2 != null) {
                return false;
            }
        } else if (!accessibilityNodeInfo.equals(accessibilityNodeInfo2)) {
            return false;
        }
        return true;
    }

    public CharSequence f() {
        return this.f2566a.getPackageName();
    }

    public void f(CharSequence charSequence) {
        this.f2566a.setText(charSequence);
    }

    public void f(boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f2566a.setDismissable(z);
        }
    }

    public CharSequence g() {
        return this.f2566a.getText();
    }

    public void g(boolean z) {
        this.f2566a.setEnabled(z);
    }

    public String h() {
        if (Build.VERSION.SDK_INT >= 18) {
            return this.f2566a.getViewIdResourceName();
        }
        return null;
    }

    public void h(boolean z) {
        this.f2566a.setFocusable(z);
    }

    public int hashCode() {
        AccessibilityNodeInfo accessibilityNodeInfo = this.f2566a;
        if (accessibilityNodeInfo == null) {
            return 0;
        }
        return accessibilityNodeInfo.hashCode();
    }

    public void i(boolean z) {
        this.f2566a.setFocused(z);
    }

    public boolean i() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f2566a.isAccessibilityFocused();
        }
        return false;
    }

    public void j(boolean z) {
        this.f2566a.setLongClickable(z);
    }

    public boolean j() {
        return this.f2566a.isCheckable();
    }

    public void k(boolean z) {
        this.f2566a.setScrollable(z);
    }

    public boolean k() {
        return this.f2566a.isChecked();
    }

    public void l(boolean z) {
        this.f2566a.setSelected(z);
    }

    public boolean l() {
        return this.f2566a.isClickable();
    }

    public void m(boolean z) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f2566a.setShowingHintText(z);
        } else {
            a(4, z);
        }
    }

    public boolean m() {
        return this.f2566a.isEnabled();
    }

    public void n(boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f2566a.setVisibleToUser(z);
        }
    }

    public boolean n() {
        return this.f2566a.isFocusable();
    }

    public boolean o() {
        return this.f2566a.isFocused();
    }

    public boolean p() {
        return this.f2566a.isLongClickable();
    }

    public boolean q() {
        return this.f2566a.isPassword();
    }

    public boolean r() {
        return this.f2566a.isScrollable();
    }

    public boolean s() {
        return this.f2566a.isSelected();
    }

    public boolean t() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f2566a.isVisibleToUser();
        }
        return false;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        Rect rect = new Rect();
        a(rect);
        sb.append("; boundsInParent: " + rect);
        b(rect);
        sb.append("; boundsInScreen: " + rect);
        sb.append("; packageName: ");
        sb.append(f());
        sb.append("; className: ");
        sb.append(c());
        sb.append("; text: ");
        sb.append(g());
        sb.append("; contentDescription: ");
        sb.append(d());
        sb.append("; viewId: ");
        sb.append(h());
        sb.append("; checkable: ");
        sb.append(j());
        sb.append("; checked: ");
        sb.append(k());
        sb.append("; focusable: ");
        sb.append(n());
        sb.append("; focused: ");
        sb.append(o());
        sb.append("; selected: ");
        sb.append(s());
        sb.append("; clickable: ");
        sb.append(l());
        sb.append("; longClickable: ");
        sb.append(p());
        sb.append("; enabled: ");
        sb.append(m());
        sb.append("; password: ");
        sb.append(q());
        sb.append("; scrollable: " + r());
        sb.append("; [");
        int iA = a();
        while (iA != 0) {
            int iNumberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(iA);
            iA &= iNumberOfTrailingZeros ^ (-1);
            sb.append(b(iNumberOfTrailingZeros));
            if (iA != 0) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public void u() {
        this.f2566a.recycle();
    }

    public AccessibilityNodeInfo v() {
        return this.f2566a;
    }
}
