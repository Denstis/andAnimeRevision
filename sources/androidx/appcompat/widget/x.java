package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.widget.TextView;
import com.google.android.exoplayer2.source.ExtractorMediaSource;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
class x {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final RectF f712k = new RectF();
    private static ConcurrentHashMap<String, Method> l = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f713a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f714b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f715c = -1.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f716d = -1.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f717e = -1.0f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int[] f718f = new int[0];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f719g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private TextPaint f720h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final TextView f721i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Context f722j;

    x(TextView textView) {
        this.f721i = textView;
        this.f722j = this.f721i.getContext();
    }

    private int a(RectF rectF) {
        int length = this.f718f.length;
        if (length == 0) {
            throw new IllegalStateException("No available text sizes to choose from.");
        }
        int i2 = length - 1;
        int i3 = 1;
        int i4 = 0;
        while (i3 <= i2) {
            int i5 = (i3 + i2) / 2;
            if (a(this.f718f[i5], rectF)) {
                int i6 = i5 + 1;
                i4 = i3;
                i3 = i6;
            } else {
                i4 = i5 - 1;
                i2 = i4;
            }
        }
        return this.f718f[i4];
    }

    private StaticLayout a(CharSequence charSequence, Layout.Alignment alignment, int i2) {
        float fFloatValue;
        float fFloatValue2;
        boolean zBooleanValue;
        if (Build.VERSION.SDK_INT >= 16) {
            fFloatValue = this.f721i.getLineSpacingMultiplier();
            fFloatValue2 = this.f721i.getLineSpacingExtra();
            zBooleanValue = this.f721i.getIncludeFontPadding();
        } else {
            fFloatValue = ((Float) a(this.f721i, "getLineSpacingMultiplier", Float.valueOf(1.0f))).floatValue();
            fFloatValue2 = ((Float) a(this.f721i, "getLineSpacingExtra", Float.valueOf(0.0f))).floatValue();
            zBooleanValue = ((Boolean) a(this.f721i, "getIncludeFontPadding", true)).booleanValue();
        }
        return new StaticLayout(charSequence, this.f720h, i2, alignment, fFloatValue, fFloatValue2, zBooleanValue);
    }

    private StaticLayout a(CharSequence charSequence, Layout.Alignment alignment, int i2, int i3) {
        TextDirectionHeuristic textDirectionHeuristic = (TextDirectionHeuristic) a(this.f721i, "getTextDirectionHeuristic", TextDirectionHeuristics.FIRSTSTRONG_LTR);
        StaticLayout.Builder hyphenationFrequency = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), this.f720h, i2).setAlignment(alignment).setLineSpacing(this.f721i.getLineSpacingExtra(), this.f721i.getLineSpacingMultiplier()).setIncludePad(this.f721i.getIncludeFontPadding()).setBreakStrategy(this.f721i.getBreakStrategy()).setHyphenationFrequency(this.f721i.getHyphenationFrequency());
        if (i3 == -1) {
            i3 = Integer.MAX_VALUE;
        }
        return hyphenationFrequency.setMaxLines(i3).setTextDirection(textDirectionHeuristic).build();
    }

    private <T> T a(Object obj, String str, T t) {
        try {
            return (T) a(str).invoke(obj, new Object[0]);
        } catch (Exception e2) {
            Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#" + str + "() method", e2);
            return t;
        }
    }

    private Method a(String str) {
        try {
            Method declaredMethod = l.get(str);
            if (declaredMethod == null && (declaredMethod = TextView.class.getDeclaredMethod(str, new Class[0])) != null) {
                declaredMethod.setAccessible(true);
                l.put(str, declaredMethod);
            }
            return declaredMethod;
        } catch (Exception e2) {
            Log.w("ACTVAutoSizeHelper", "Failed to retrieve TextView#" + str + "() method", e2);
            return null;
        }
    }

    private void a(float f2) {
        if (f2 != this.f721i.getPaint().getTextSize()) {
            this.f721i.getPaint().setTextSize(f2);
            boolean zIsInLayout = Build.VERSION.SDK_INT >= 18 ? this.f721i.isInLayout() : false;
            if (this.f721i.getLayout() != null) {
                this.f714b = false;
                try {
                    Method methodA = a("nullLayouts");
                    if (methodA != null) {
                        methodA.invoke(this.f721i, new Object[0]);
                    }
                } catch (Exception e2) {
                    Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", e2);
                }
                if (zIsInLayout) {
                    this.f721i.forceLayout();
                } else {
                    this.f721i.requestLayout();
                }
                this.f721i.invalidate();
            }
        }
    }

    private void a(float f2, float f3, float f4) {
        if (f2 <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f2 + "px) is less or equal to (0px)");
        }
        if (f3 <= f2) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f3 + "px) is less or equal to minimum auto-size text size (" + f2 + "px)");
        }
        if (f4 <= 0.0f) {
            throw new IllegalArgumentException("The auto-size step granularity (" + f4 + "px) is less or equal to (0px)");
        }
        this.f713a = 1;
        this.f716d = f2;
        this.f717e = f3;
        this.f715c = f4;
        this.f719g = false;
    }

    private void a(TypedArray typedArray) {
        int length = typedArray.length();
        int[] iArr = new int[length];
        if (length > 0) {
            for (int i2 = 0; i2 < length; i2++) {
                iArr[i2] = typedArray.getDimensionPixelSize(i2, -1);
            }
            this.f718f = a(iArr);
            j();
        }
    }

    private boolean a(int i2, RectF rectF) {
        CharSequence transformation;
        CharSequence text = this.f721i.getText();
        TransformationMethod transformationMethod = this.f721i.getTransformationMethod();
        if (transformationMethod != null && (transformation = transformationMethod.getTransformation(text, this.f721i)) != null) {
            text = transformation;
        }
        int maxLines = Build.VERSION.SDK_INT >= 16 ? this.f721i.getMaxLines() : -1;
        TextPaint textPaint = this.f720h;
        if (textPaint == null) {
            this.f720h = new TextPaint();
        } else {
            textPaint.reset();
        }
        this.f720h.set(this.f721i.getPaint());
        this.f720h.setTextSize(i2);
        Layout.Alignment alignment = (Layout.Alignment) a(this.f721i, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL);
        StaticLayout staticLayoutA = Build.VERSION.SDK_INT >= 23 ? a(text, alignment, Math.round(rectF.right), maxLines) : a(text, alignment, Math.round(rectF.right));
        return (maxLines == -1 || (staticLayoutA.getLineCount() <= maxLines && staticLayoutA.getLineEnd(staticLayoutA.getLineCount() - 1) == text.length())) && ((float) staticLayoutA.getHeight()) <= rectF.bottom;
    }

    private int[] a(int[] iArr) {
        int length = iArr.length;
        if (length == 0) {
            return iArr;
        }
        Arrays.sort(iArr);
        ArrayList arrayList = new ArrayList();
        for (int i2 : iArr) {
            if (i2 > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i2)) < 0) {
                arrayList.add(Integer.valueOf(i2));
            }
        }
        if (length == arrayList.size()) {
            return iArr;
        }
        int size = arrayList.size();
        int[] iArr2 = new int[size];
        for (int i3 = 0; i3 < size; i3++) {
            iArr2[i3] = ((Integer) arrayList.get(i3)).intValue();
        }
        return iArr2;
    }

    private void h() {
        this.f713a = 0;
        this.f716d = -1.0f;
        this.f717e = -1.0f;
        this.f715c = -1.0f;
        this.f718f = new int[0];
        this.f714b = false;
    }

    private boolean i() {
        if (k() && this.f713a == 1) {
            if (!this.f719g || this.f718f.length == 0) {
                float fRound = Math.round(this.f716d);
                int i2 = 1;
                while (Math.round(this.f715c + fRound) <= Math.round(this.f717e)) {
                    i2++;
                    fRound += this.f715c;
                }
                int[] iArr = new int[i2];
                float f2 = this.f716d;
                for (int i3 = 0; i3 < i2; i3++) {
                    iArr[i3] = Math.round(f2);
                    f2 += this.f715c;
                }
                this.f718f = a(iArr);
            }
            this.f714b = true;
        } else {
            this.f714b = false;
        }
        return this.f714b;
    }

    private boolean j() {
        this.f719g = this.f718f.length > 0;
        if (this.f719g) {
            this.f713a = 1;
            int[] iArr = this.f718f;
            this.f716d = iArr[0];
            this.f717e = iArr[r0 - 1];
            this.f715c = -1.0f;
        }
        return this.f719g;
    }

    private boolean k() {
        return !(this.f721i instanceof k);
    }

    void a() {
        if (g()) {
            if (this.f714b) {
                if (this.f721i.getMeasuredHeight() <= 0 || this.f721i.getMeasuredWidth() <= 0) {
                    return;
                }
                int measuredWidth = ((Boolean) a(this.f721i, "getHorizontallyScrolling", false)).booleanValue() ? ExtractorMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES : (this.f721i.getMeasuredWidth() - this.f721i.getTotalPaddingLeft()) - this.f721i.getTotalPaddingRight();
                int height = (this.f721i.getHeight() - this.f721i.getCompoundPaddingBottom()) - this.f721i.getCompoundPaddingTop();
                if (measuredWidth <= 0 || height <= 0) {
                    return;
                }
                synchronized (f712k) {
                    f712k.setEmpty();
                    f712k.right = measuredWidth;
                    f712k.bottom = height;
                    float fA = a(f712k);
                    if (fA != this.f721i.getTextSize()) {
                        a(0, fA);
                    }
                }
            }
            this.f714b = true;
        }
    }

    void a(int i2) {
        if (k()) {
            if (i2 == 0) {
                h();
                return;
            }
            if (i2 != 1) {
                throw new IllegalArgumentException("Unknown auto-size text type: " + i2);
            }
            DisplayMetrics displayMetrics = this.f722j.getResources().getDisplayMetrics();
            a(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
            if (i()) {
                a();
            }
        }
    }

    void a(int i2, float f2) {
        Context context = this.f722j;
        a(TypedValue.applyDimension(i2, f2, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics()));
    }

    void a(int i2, int i3, int i4, int i5) {
        if (k()) {
            DisplayMetrics displayMetrics = this.f722j.getResources().getDisplayMetrics();
            a(TypedValue.applyDimension(i5, i2, displayMetrics), TypedValue.applyDimension(i5, i3, displayMetrics), TypedValue.applyDimension(i5, i4, displayMetrics));
            if (i()) {
                a();
            }
        }
    }

    void a(AttributeSet attributeSet, int i2) {
        int resourceId;
        TypedArray typedArrayObtainStyledAttributes = this.f722j.obtainStyledAttributes(attributeSet, b.a.j.AppCompatTextView, i2, 0);
        if (typedArrayObtainStyledAttributes.hasValue(b.a.j.AppCompatTextView_autoSizeTextType)) {
            this.f713a = typedArrayObtainStyledAttributes.getInt(b.a.j.AppCompatTextView_autoSizeTextType, 0);
        }
        float dimension = typedArrayObtainStyledAttributes.hasValue(b.a.j.AppCompatTextView_autoSizeStepGranularity) ? typedArrayObtainStyledAttributes.getDimension(b.a.j.AppCompatTextView_autoSizeStepGranularity, -1.0f) : -1.0f;
        float dimension2 = typedArrayObtainStyledAttributes.hasValue(b.a.j.AppCompatTextView_autoSizeMinTextSize) ? typedArrayObtainStyledAttributes.getDimension(b.a.j.AppCompatTextView_autoSizeMinTextSize, -1.0f) : -1.0f;
        float dimension3 = typedArrayObtainStyledAttributes.hasValue(b.a.j.AppCompatTextView_autoSizeMaxTextSize) ? typedArrayObtainStyledAttributes.getDimension(b.a.j.AppCompatTextView_autoSizeMaxTextSize, -1.0f) : -1.0f;
        if (typedArrayObtainStyledAttributes.hasValue(b.a.j.AppCompatTextView_autoSizePresetSizes) && (resourceId = typedArrayObtainStyledAttributes.getResourceId(b.a.j.AppCompatTextView_autoSizePresetSizes, 0)) > 0) {
            TypedArray typedArrayObtainTypedArray = typedArrayObtainStyledAttributes.getResources().obtainTypedArray(resourceId);
            a(typedArrayObtainTypedArray);
            typedArrayObtainTypedArray.recycle();
        }
        typedArrayObtainStyledAttributes.recycle();
        if (!k()) {
            this.f713a = 0;
            return;
        }
        if (this.f713a == 1) {
            if (!this.f719g) {
                DisplayMetrics displayMetrics = this.f722j.getResources().getDisplayMetrics();
                if (dimension2 == -1.0f) {
                    dimension2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                }
                if (dimension3 == -1.0f) {
                    dimension3 = TypedValue.applyDimension(2, 112.0f, displayMetrics);
                }
                if (dimension == -1.0f) {
                    dimension = 1.0f;
                }
                a(dimension2, dimension3, dimension);
            }
            i();
        }
    }

    void a(int[] iArr, int i2) {
        if (k()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArrCopyOf = new int[length];
                if (i2 == 0) {
                    iArrCopyOf = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = this.f722j.getResources().getDisplayMetrics();
                    for (int i3 = 0; i3 < length; i3++) {
                        iArrCopyOf[i3] = Math.round(TypedValue.applyDimension(i2, iArr[i3], displayMetrics));
                    }
                }
                this.f718f = a(iArrCopyOf);
                if (!j()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                this.f719g = false;
            }
            if (i()) {
                a();
            }
        }
    }

    int b() {
        return Math.round(this.f717e);
    }

    int c() {
        return Math.round(this.f716d);
    }

    int d() {
        return Math.round(this.f715c);
    }

    int[] e() {
        return this.f718f;
    }

    int f() {
        return this.f713a;
    }

    boolean g() {
        return k() && this.f713a != 0;
    }
}
