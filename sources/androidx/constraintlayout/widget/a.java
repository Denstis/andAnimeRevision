package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import b.f.a.j.j;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public abstract class a extends View {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int[] f776b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f777c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected Context f778d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected j f779e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected boolean f780f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f781g;

    public a(Context context) {
        super(context);
        this.f776b = new int[32];
        this.f780f = false;
        this.f778d = context;
        a((AttributeSet) null);
    }

    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f776b = new int[32];
        this.f780f = false;
        this.f778d = context;
        a(attributeSet);
    }

    public a(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f776b = new int[32];
        this.f780f = false;
        this.f778d = context;
        a(attributeSet);
    }

    private void a(String str) {
        int iIntValue;
        Object objA;
        if (str == null || this.f778d == null) {
            return;
        }
        String strTrim = str.trim();
        try {
            iIntValue = f.class.getField(strTrim).getInt(null);
        } catch (Exception unused) {
            iIntValue = 0;
        }
        if (iIntValue == 0) {
            iIntValue = this.f778d.getResources().getIdentifier(strTrim, TtmlNode.ATTR_ID, this.f778d.getPackageName());
        }
        if (iIntValue == 0 && isInEditMode() && (getParent() instanceof ConstraintLayout) && (objA = ((ConstraintLayout) getParent()).a(0, strTrim)) != null && (objA instanceof Integer)) {
            iIntValue = ((Integer) objA).intValue();
        }
        if (iIntValue != 0) {
            setTag(iIntValue, null);
            return;
        }
        Log.w("ConstraintHelper", "Could not find id of \"" + strTrim + "\"");
    }

    private void setIds(String str) {
        if (str == null) {
            return;
        }
        int i2 = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i2);
            if (iIndexOf == -1) {
                a(str.substring(i2));
                return;
            } else {
                a(str.substring(i2, iIndexOf));
                i2 = iIndexOf + 1;
            }
        }
    }

    public void a() {
        if (this.f779e == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.a) {
            ((ConstraintLayout.a) layoutParams).k0 = this.f779e;
        }
    }

    protected void a(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, g.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i2);
                if (index == g.ConstraintLayout_Layout_constraint_referenced_ids) {
                    this.f781g = typedArrayObtainStyledAttributes.getString(index);
                    setIds(this.f781g);
                }
            }
        }
    }

    public void a(ConstraintLayout constraintLayout) {
    }

    public void b(ConstraintLayout constraintLayout) {
    }

    public void c(ConstraintLayout constraintLayout) {
        if (isInEditMode()) {
            setIds(this.f781g);
        }
        j jVar = this.f779e;
        if (jVar == null) {
            return;
        }
        jVar.J();
        for (int i2 = 0; i2 < this.f777c; i2++) {
            View viewA = constraintLayout.a(this.f776b[i2]);
            if (viewA != null) {
                this.f779e.b(constraintLayout.a(viewA));
            }
        }
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.f776b, this.f777c);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i3) {
        if (this.f780f) {
            super.onMeasure(i2, i3);
        } else {
            setMeasuredDimension(0, 0);
        }
    }

    public void setReferencedIds(int[] iArr) {
        this.f777c = 0;
        for (int i2 : iArr) {
            setTag(i2, null);
        }
    }

    @Override // android.view.View
    public void setTag(int i2, Object obj) {
        int i3 = this.f777c + 1;
        int[] iArr = this.f776b;
        if (i3 > iArr.length) {
            this.f776b = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.f776b;
        int i4 = this.f777c;
        iArr2[i4] = i2;
        this.f777c = i4 + 1;
    }
}
