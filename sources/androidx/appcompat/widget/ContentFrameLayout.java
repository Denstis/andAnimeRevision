package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes.dex */
public class ContentFrameLayout extends FrameLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TypedValue f407b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TypedValue f408c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TypedValue f409d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TypedValue f410e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TypedValue f411f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private TypedValue f412g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Rect f413h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private a f414i;

    public interface a {
        void a();

        void onDetachedFromWindow();
    }

    public ContentFrameLayout(Context context) {
        this(context, null);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f413h = new Rect();
    }

    public void a(int i2, int i3, int i4, int i5) {
        this.f413h.set(i2, i3, i4, i5);
        if (b.h.o.s.z(this)) {
            requestLayout();
        }
    }

    public void a(Rect rect) {
        fitSystemWindows(rect);
    }

    public TypedValue getFixedHeightMajor() {
        if (this.f411f == null) {
            this.f411f = new TypedValue();
        }
        return this.f411f;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f412g == null) {
            this.f412g = new TypedValue();
        }
        return this.f412g;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.f409d == null) {
            this.f409d = new TypedValue();
        }
        return this.f409d;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.f410e == null) {
            this.f410e = new TypedValue();
        }
        return this.f410e;
    }

    public TypedValue getMinWidthMajor() {
        if (this.f407b == null) {
            this.f407b = new TypedValue();
        }
        return this.f407b;
    }

    public TypedValue getMinWidthMinor() {
        if (this.f408c == null) {
            this.f408c = new TypedValue();
        }
        return this.f408c;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        a aVar = this.f414i;
        if (aVar != null) {
            aVar.a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a aVar = this.f414i;
        if (aVar != null) {
            aVar.onDetachedFromWindow();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00dd  */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onMeasure(int r14, int r15) {
        /*
            Method dump skipped, instruction units count: 228
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ContentFrameLayout.onMeasure(int, int):void");
    }

    public void setAttachListener(a aVar) {
        this.f414i = aVar;
    }
}
