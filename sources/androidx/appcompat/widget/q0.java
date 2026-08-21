package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.core.content.c.f;

/* JADX INFO: loaded from: classes.dex */
public class q0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f631a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TypedArray f632b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TypedValue f633c;

    private q0(Context context, TypedArray typedArray) {
        this.f631a = context;
        this.f632b = typedArray;
    }

    public static q0 a(Context context, int i2, int[] iArr) {
        return new q0(context, context.obtainStyledAttributes(i2, iArr));
    }

    public static q0 a(Context context, AttributeSet attributeSet, int[] iArr) {
        return new q0(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    public static q0 a(Context context, AttributeSet attributeSet, int[] iArr, int i2, int i3) {
        return new q0(context, context.obtainStyledAttributes(attributeSet, iArr, i2, i3));
    }

    public float a(int i2, float f2) {
        return this.f632b.getDimension(i2, f2);
    }

    public int a(int i2, int i3) {
        return this.f632b.getColor(i2, i3);
    }

    public ColorStateList a(int i2) {
        int resourceId;
        ColorStateList colorStateListB;
        return (!this.f632b.hasValue(i2) || (resourceId = this.f632b.getResourceId(i2, 0)) == 0 || (colorStateListB = b.a.k.a.a.b(this.f631a, resourceId)) == null) ? this.f632b.getColorStateList(i2) : colorStateListB;
    }

    public Typeface a(int i2, int i3, f.a aVar) {
        int resourceId = this.f632b.getResourceId(i2, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.f633c == null) {
            this.f633c = new TypedValue();
        }
        return androidx.core.content.c.f.a(this.f631a, resourceId, this.f633c, i3, aVar);
    }

    public void a() {
        this.f632b.recycle();
    }

    public boolean a(int i2, boolean z) {
        return this.f632b.getBoolean(i2, z);
    }

    public float b(int i2, float f2) {
        return this.f632b.getFloat(i2, f2);
    }

    public int b(int i2, int i3) {
        return this.f632b.getDimensionPixelOffset(i2, i3);
    }

    public Drawable b(int i2) {
        int resourceId;
        return (!this.f632b.hasValue(i2) || (resourceId = this.f632b.getResourceId(i2, 0)) == 0) ? this.f632b.getDrawable(i2) : b.a.k.a.a.c(this.f631a, resourceId);
    }

    public int c(int i2, int i3) {
        return this.f632b.getDimensionPixelSize(i2, i3);
    }

    public Drawable c(int i2) {
        int resourceId;
        if (!this.f632b.hasValue(i2) || (resourceId = this.f632b.getResourceId(i2, 0)) == 0) {
            return null;
        }
        return j.a().a(this.f631a, resourceId, true);
    }

    public int d(int i2, int i3) {
        return this.f632b.getInt(i2, i3);
    }

    public String d(int i2) {
        return this.f632b.getString(i2);
    }

    public int e(int i2, int i3) {
        return this.f632b.getInteger(i2, i3);
    }

    public CharSequence e(int i2) {
        return this.f632b.getText(i2);
    }

    public int f(int i2, int i3) {
        return this.f632b.getLayoutDimension(i2, i3);
    }

    public CharSequence[] f(int i2) {
        return this.f632b.getTextArray(i2);
    }

    public int g(int i2, int i3) {
        return this.f632b.getResourceId(i2, i3);
    }

    public boolean g(int i2) {
        return this.f632b.hasValue(i2);
    }
}
