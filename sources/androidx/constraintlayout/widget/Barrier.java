package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;

/* JADX INFO: loaded from: classes.dex */
public class Barrier extends a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f751h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f752i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private b.f.a.j.b f753j;

    public Barrier(Context context) {
        super(context);
        super.setVisibility(8);
    }

    public Barrier(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }

    public Barrier(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        super.setVisibility(8);
    }

    @Override // androidx.constraintlayout.widget.a
    protected void a(AttributeSet attributeSet) {
        super.a(attributeSet);
        this.f753j = new b.f.a.j.b();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, g.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i2);
                if (index == g.ConstraintLayout_Layout_barrierDirection) {
                    setType(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == g.ConstraintLayout_Layout_barrierAllowsGoneWidgets) {
                    this.f753j.c(typedArrayObtainStyledAttributes.getBoolean(index, true));
                }
            }
        }
        this.f779e = this.f753j;
        a();
    }

    public int getType() {
        return this.f751h;
    }

    public void setAllowsGoneWidget(boolean z) {
        this.f753j.c(z);
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0012  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void setType(int r6) {
        /*
            r5 = this;
            r5.f751h = r6
            r5.f752i = r6
            int r6 = android.os.Build.VERSION.SDK_INT
            r0 = 6
            r1 = 5
            r2 = 0
            r3 = 1
            r4 = 17
            if (r6 >= r4) goto L1a
            int r6 = r5.f751h
            if (r6 != r1) goto L15
        L12:
            r5.f752i = r2
            goto L3d
        L15:
            if (r6 != r0) goto L3d
        L17:
            r5.f752i = r3
            goto L3d
        L1a:
            android.content.res.Resources r6 = r5.getResources()
            android.content.res.Configuration r6 = r6.getConfiguration()
            int r6 = r6.getLayoutDirection()
            if (r3 != r6) goto L2a
            r6 = 1
            goto L2b
        L2a:
            r6 = 0
        L2b:
            if (r6 == 0) goto L35
            int r6 = r5.f751h
            if (r6 != r1) goto L32
            goto L17
        L32:
            if (r6 != r0) goto L3d
            goto L12
        L35:
            int r6 = r5.f751h
            if (r6 != r1) goto L3a
            goto L12
        L3a:
            if (r6 != r0) goto L3d
            goto L17
        L3d:
            b.f.a.j.b r6 = r5.f753j
            int r0 = r5.f752i
            r6.t(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.Barrier.setType(int):void");
    }
}
