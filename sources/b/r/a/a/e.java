package b.r.a.a;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.InflateException;
import b.h.h.b;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class e {

    private static class a implements TypeEvaluator<b.C0099b[]> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private b.C0099b[] f3010a;

        a() {
        }

        @Override // android.animation.TypeEvaluator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public b.C0099b[] evaluate(float f2, b.C0099b[] c0099bArr, b.C0099b[] c0099bArr2) {
            if (!b.h.h.b.a(c0099bArr, c0099bArr2)) {
                throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
            }
            b.C0099b[] c0099bArr3 = this.f3010a;
            if (c0099bArr3 == null || !b.h.h.b.a(c0099bArr3, c0099bArr)) {
                this.f3010a = b.h.h.b.a(c0099bArr);
            }
            for (int i2 = 0; i2 < c0099bArr.length; i2++) {
                this.f3010a[i2].a(c0099bArr[i2], c0099bArr2[i2], f2);
            }
            return this.f3010a;
        }
    }

    private static int a(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        TypedArray typedArrayA = androidx.core.content.c.g.a(resources, theme, attributeSet, b.r.a.a.a.f2997j);
        int i2 = 0;
        TypedValue typedValueB = androidx.core.content.c.g.b(typedArrayA, xmlPullParser, "value", 0);
        if ((typedValueB != null) && a(typedValueB.type)) {
            i2 = 3;
        }
        typedArrayA.recycle();
        return i2;
    }

    private static int a(TypedArray typedArray, int i2, int i3) {
        TypedValue typedValuePeekValue = typedArray.peekValue(i2);
        boolean z = typedValuePeekValue != null;
        int i4 = z ? typedValuePeekValue.type : 0;
        TypedValue typedValuePeekValue2 = typedArray.peekValue(i3);
        boolean z2 = typedValuePeekValue2 != null;
        return ((z && a(i4)) || (z2 && a(z2 ? typedValuePeekValue2.type : 0))) ? 3 : 0;
    }

    public static Animator a(Context context, int i2) {
        return Build.VERSION.SDK_INT >= 24 ? AnimatorInflater.loadAnimator(context, i2) : a(context, context.getResources(), context.getTheme(), i2);
    }

    public static Animator a(Context context, Resources resources, Resources.Theme theme, int i2) {
        return a(context, resources, theme, i2, 1.0f);
    }

    public static Animator a(Context context, Resources resources, Resources.Theme theme, int i2, float f2) {
        XmlResourceParser animation = null;
        try {
            try {
                try {
                    animation = resources.getAnimation(i2);
                    return a(context, resources, theme, animation, f2);
                } catch (XmlPullParserException e2) {
                    Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i2));
                    notFoundException.initCause(e2);
                    throw notFoundException;
                }
            } catch (IOException e3) {
                Resources.NotFoundException notFoundException2 = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i2));
                notFoundException2.initCause(e3);
                throw notFoundException2;
            }
        } finally {
            if (animation != null) {
                animation.close();
            }
        }
    }

    private static Animator a(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, float f2) {
        return a(context, resources, theme, xmlPullParser, Xml.asAttributeSet(xmlPullParser), null, 0, f2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00df, code lost:
    
        if (r23 == null) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00e1, code lost:
    
        if (r13 == null) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00e3, code lost:
    
        r1 = new android.animation.Animator[r13.size()];
        r2 = r13.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00f1, code lost:
    
        if (r2.hasNext() == false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00f3, code lost:
    
        r1[r14] = (android.animation.Animator) r2.next();
        r14 = r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00ff, code lost:
    
        if (r24 != 0) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0101, code lost:
    
        r23.playTogether(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0105, code lost:
    
        r23.playSequentially(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0108, code lost:
    
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static android.animation.Animator a(android.content.Context r18, android.content.res.Resources r19, android.content.res.Resources.Theme r20, org.xmlpull.v1.XmlPullParser r21, android.util.AttributeSet r22, android.animation.AnimatorSet r23, int r24, float r25) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 265
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: b.r.a.a.e.a(android.content.Context, android.content.res.Resources, android.content.res.Resources$Theme, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.animation.AnimatorSet, int, float):android.animation.Animator");
    }

    private static Keyframe a(Keyframe keyframe, float f2) {
        return keyframe.getType() == Float.TYPE ? Keyframe.ofFloat(f2) : keyframe.getType() == Integer.TYPE ? Keyframe.ofInt(f2) : Keyframe.ofObject(f2);
    }

    private static Keyframe a(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, int i2, XmlPullParser xmlPullParser) {
        TypedArray typedArrayA = androidx.core.content.c.g.a(resources, theme, attributeSet, b.r.a.a.a.f2997j);
        float fA = androidx.core.content.c.g.a(typedArrayA, xmlPullParser, "fraction", 3, -1.0f);
        TypedValue typedValueB = androidx.core.content.c.g.b(typedArrayA, xmlPullParser, "value", 0);
        boolean z = typedValueB != null;
        if (i2 == 4) {
            i2 = (z && a(typedValueB.type)) ? 3 : 0;
        }
        Keyframe keyframeOfInt = z ? i2 != 0 ? (i2 == 1 || i2 == 3) ? Keyframe.ofInt(fA, androidx.core.content.c.g.b(typedArrayA, xmlPullParser, "value", 0, 0)) : null : Keyframe.ofFloat(fA, androidx.core.content.c.g.a(typedArrayA, xmlPullParser, "value", 0, 0.0f)) : i2 == 0 ? Keyframe.ofFloat(fA) : Keyframe.ofInt(fA);
        int iC = androidx.core.content.c.g.c(typedArrayA, xmlPullParser, "interpolator", 1, 0);
        if (iC > 0) {
            keyframeOfInt.setInterpolator(d.a(context, iC));
        }
        typedArrayA.recycle();
        return keyframeOfInt;
    }

    private static ObjectAnimator a(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, float f2, XmlPullParser xmlPullParser) {
        ObjectAnimator objectAnimator = new ObjectAnimator();
        a(context, resources, theme, attributeSet, objectAnimator, f2, xmlPullParser);
        return objectAnimator;
    }

    private static PropertyValuesHolder a(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, String str, int i2) throws XmlPullParserException, IOException {
        int size;
        PropertyValuesHolder propertyValuesHolderOfKeyframe = null;
        int iA = i2;
        ArrayList arrayList = null;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 3 || next == 1) {
                break;
            }
            if (xmlPullParser.getName().equals("keyframe")) {
                if (iA == 4) {
                    iA = a(resources, theme, Xml.asAttributeSet(xmlPullParser), xmlPullParser);
                }
                Keyframe keyframeA = a(context, resources, theme, Xml.asAttributeSet(xmlPullParser), iA, xmlPullParser);
                if (keyframeA != null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(keyframeA);
                }
                xmlPullParser.next();
            }
        }
        if (arrayList != null && (size = arrayList.size()) > 0) {
            Keyframe keyframe = (Keyframe) arrayList.get(0);
            Keyframe keyframe2 = (Keyframe) arrayList.get(size - 1);
            float fraction = keyframe2.getFraction();
            if (fraction < 1.0f) {
                if (fraction < 0.0f) {
                    keyframe2.setFraction(1.0f);
                } else {
                    arrayList.add(arrayList.size(), a(keyframe2, 1.0f));
                    size++;
                }
            }
            float fraction2 = keyframe.getFraction();
            if (fraction2 != 0.0f) {
                if (fraction2 < 0.0f) {
                    keyframe.setFraction(0.0f);
                } else {
                    arrayList.add(0, a(keyframe, 0.0f));
                    size++;
                }
            }
            Keyframe[] keyframeArr = new Keyframe[size];
            arrayList.toArray(keyframeArr);
            for (int i3 = 0; i3 < size; i3++) {
                Keyframe keyframe3 = keyframeArr[i3];
                if (keyframe3.getFraction() < 0.0f) {
                    if (i3 == 0) {
                        keyframe3.setFraction(0.0f);
                    } else {
                        int i4 = size - 1;
                        if (i3 == i4) {
                            keyframe3.setFraction(1.0f);
                        } else {
                            int i5 = i3;
                            for (int i6 = i3 + 1; i6 < i4 && keyframeArr[i6].getFraction() < 0.0f; i6++) {
                                i5 = i6;
                            }
                            a(keyframeArr, keyframeArr[i5 + 1].getFraction() - keyframeArr[i3 - 1].getFraction(), i3, i5);
                        }
                    }
                }
            }
            propertyValuesHolderOfKeyframe = PropertyValuesHolder.ofKeyframe(str, keyframeArr);
            if (iA == 3) {
                propertyValuesHolderOfKeyframe.setEvaluator(f.a());
            }
        }
        return propertyValuesHolderOfKeyframe;
    }

    private static PropertyValuesHolder a(TypedArray typedArray, int i2, int i3, int i4, String str) {
        PropertyValuesHolder propertyValuesHolderOfFloat;
        PropertyValuesHolder propertyValuesHolderOfObject;
        TypedValue typedValuePeekValue = typedArray.peekValue(i3);
        boolean z = typedValuePeekValue != null;
        int i5 = z ? typedValuePeekValue.type : 0;
        TypedValue typedValuePeekValue2 = typedArray.peekValue(i4);
        boolean z2 = typedValuePeekValue2 != null;
        int i6 = z2 ? typedValuePeekValue2.type : 0;
        if (i2 == 4) {
            i2 = ((z && a(i5)) || (z2 && a(i6))) ? 3 : 0;
        }
        boolean z3 = i2 == 0;
        PropertyValuesHolder propertyValuesHolderOfInt = null;
        if (i2 != 2) {
            f fVarA = i2 == 3 ? f.a() : null;
            if (z3) {
                if (z) {
                    float dimension = i5 == 5 ? typedArray.getDimension(i3, 0.0f) : typedArray.getFloat(i3, 0.0f);
                    if (z2) {
                        propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(str, dimension, i6 == 5 ? typedArray.getDimension(i4, 0.0f) : typedArray.getFloat(i4, 0.0f));
                    } else {
                        propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(str, dimension);
                    }
                } else {
                    propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(str, i6 == 5 ? typedArray.getDimension(i4, 0.0f) : typedArray.getFloat(i4, 0.0f));
                }
                propertyValuesHolderOfInt = propertyValuesHolderOfFloat;
            } else if (z) {
                int dimension2 = i5 == 5 ? (int) typedArray.getDimension(i3, 0.0f) : a(i5) ? typedArray.getColor(i3, 0) : typedArray.getInt(i3, 0);
                if (z2) {
                    propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, dimension2, i6 == 5 ? (int) typedArray.getDimension(i4, 0.0f) : a(i6) ? typedArray.getColor(i4, 0) : typedArray.getInt(i4, 0));
                } else {
                    propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, dimension2);
                }
            } else if (z2) {
                propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, i6 == 5 ? (int) typedArray.getDimension(i4, 0.0f) : a(i6) ? typedArray.getColor(i4, 0) : typedArray.getInt(i4, 0));
            }
            if (propertyValuesHolderOfInt == null || fVarA == null) {
                return propertyValuesHolderOfInt;
            }
            propertyValuesHolderOfInt.setEvaluator(fVarA);
            return propertyValuesHolderOfInt;
        }
        String string = typedArray.getString(i3);
        String string2 = typedArray.getString(i4);
        b.C0099b[] c0099bArrA = b.h.h.b.a(string);
        b.C0099b[] c0099bArrA2 = b.h.h.b.a(string2);
        if (c0099bArrA == null && c0099bArrA2 == null) {
            return null;
        }
        if (c0099bArrA == null) {
            if (c0099bArrA2 != null) {
                return PropertyValuesHolder.ofObject(str, new a(), c0099bArrA2);
            }
            return null;
        }
        a aVar = new a();
        if (c0099bArrA2 == null) {
            propertyValuesHolderOfObject = PropertyValuesHolder.ofObject(str, aVar, c0099bArrA);
        } else {
            if (!b.h.h.b.a(c0099bArrA, c0099bArrA2)) {
                throw new InflateException(" Can't morph from " + string + " to " + string2);
            }
            propertyValuesHolderOfObject = PropertyValuesHolder.ofObject(str, aVar, c0099bArrA, c0099bArrA2);
        }
        return propertyValuesHolderOfObject;
    }

    private static ValueAnimator a(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, ValueAnimator valueAnimator, float f2, XmlPullParser xmlPullParser) {
        TypedArray typedArrayA = androidx.core.content.c.g.a(resources, theme, attributeSet, b.r.a.a.a.f2994g);
        TypedArray typedArrayA2 = androidx.core.content.c.g.a(resources, theme, attributeSet, b.r.a.a.a.f2998k);
        if (valueAnimator == null) {
            valueAnimator = new ValueAnimator();
        }
        a(valueAnimator, typedArrayA, typedArrayA2, f2, xmlPullParser);
        int iC = androidx.core.content.c.g.c(typedArrayA, xmlPullParser, "interpolator", 0, 0);
        if (iC > 0) {
            valueAnimator.setInterpolator(d.a(context, iC));
        }
        typedArrayA.recycle();
        if (typedArrayA2 != null) {
            typedArrayA2.recycle();
        }
        return valueAnimator;
    }

    private static void a(ValueAnimator valueAnimator, TypedArray typedArray, int i2, float f2, XmlPullParser xmlPullParser) {
        ObjectAnimator objectAnimator = (ObjectAnimator) valueAnimator;
        String strA = androidx.core.content.c.g.a(typedArray, xmlPullParser, "pathData", 1);
        if (strA == null) {
            objectAnimator.setPropertyName(androidx.core.content.c.g.a(typedArray, xmlPullParser, "propertyName", 0));
            return;
        }
        String strA2 = androidx.core.content.c.g.a(typedArray, xmlPullParser, "propertyXName", 2);
        String strA3 = androidx.core.content.c.g.a(typedArray, xmlPullParser, "propertyYName", 3);
        if (i2 != 2) {
        }
        if (strA2 != null || strA3 != null) {
            a(b.h.h.b.b(strA), objectAnimator, f2 * 0.5f, strA2, strA3);
            return;
        }
        throw new InflateException(typedArray.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
    }

    private static void a(ValueAnimator valueAnimator, TypedArray typedArray, TypedArray typedArray2, float f2, XmlPullParser xmlPullParser) {
        long jB = androidx.core.content.c.g.b(typedArray, xmlPullParser, "duration", 1, 300);
        long jB2 = androidx.core.content.c.g.b(typedArray, xmlPullParser, "startOffset", 2, 0);
        int iB = androidx.core.content.c.g.b(typedArray, xmlPullParser, "valueType", 7, 4);
        if (androidx.core.content.c.g.a(xmlPullParser, "valueFrom") && androidx.core.content.c.g.a(xmlPullParser, "valueTo")) {
            if (iB == 4) {
                iB = a(typedArray, 5, 6);
            }
            PropertyValuesHolder propertyValuesHolderA = a(typedArray, iB, 5, 6, "");
            if (propertyValuesHolderA != null) {
                valueAnimator.setValues(propertyValuesHolderA);
            }
        }
        valueAnimator.setDuration(jB);
        valueAnimator.setStartDelay(jB2);
        valueAnimator.setRepeatCount(androidx.core.content.c.g.b(typedArray, xmlPullParser, "repeatCount", 3, 0));
        valueAnimator.setRepeatMode(androidx.core.content.c.g.b(typedArray, xmlPullParser, "repeatMode", 4, 1));
        if (typedArray2 != null) {
            a(valueAnimator, typedArray2, iB, f2, xmlPullParser);
        }
    }

    private static void a(Path path, ObjectAnimator objectAnimator, float f2, String str, String str2) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        ArrayList arrayList = new ArrayList();
        arrayList.add(Float.valueOf(0.0f));
        float length = 0.0f;
        do {
            length += pathMeasure.getLength();
            arrayList.add(Float.valueOf(length));
        } while (pathMeasure.nextContour());
        PathMeasure pathMeasure2 = new PathMeasure(path, false);
        int iMin = Math.min(100, ((int) (length / f2)) + 1);
        float[] fArr = new float[iMin];
        float[] fArr2 = new float[iMin];
        float[] fArr3 = new float[2];
        float f3 = length / (iMin - 1);
        int i2 = 0;
        float f4 = 0.0f;
        int i3 = 0;
        while (true) {
            if (i2 >= iMin) {
                break;
            }
            pathMeasure2.getPosTan(f4 - ((Float) arrayList.get(i3)).floatValue(), fArr3, null);
            fArr[i2] = fArr3[0];
            fArr2[i2] = fArr3[1];
            f4 += f3;
            int i4 = i3 + 1;
            if (i4 < arrayList.size() && f4 > ((Float) arrayList.get(i4)).floatValue()) {
                pathMeasure2.nextContour();
                i3 = i4;
            }
            i2++;
        }
        PropertyValuesHolder propertyValuesHolderOfFloat = str != null ? PropertyValuesHolder.ofFloat(str, fArr) : null;
        PropertyValuesHolder propertyValuesHolderOfFloat2 = str2 != null ? PropertyValuesHolder.ofFloat(str2, fArr2) : null;
        if (propertyValuesHolderOfFloat == null) {
            objectAnimator.setValues(propertyValuesHolderOfFloat2);
        } else if (propertyValuesHolderOfFloat2 == null) {
            objectAnimator.setValues(propertyValuesHolderOfFloat);
        } else {
            objectAnimator.setValues(propertyValuesHolderOfFloat, propertyValuesHolderOfFloat2);
        }
    }

    private static void a(Keyframe[] keyframeArr, float f2, int i2, int i3) {
        float f3 = f2 / ((i3 - i2) + 2);
        while (i2 <= i3) {
            keyframeArr[i2].setFraction(keyframeArr[i2 - 1].getFraction() + f3);
            i2++;
        }
    }

    private static boolean a(int i2) {
        return i2 >= 28 && i2 <= 31;
    }

    private static PropertyValuesHolder[] a(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        int i2;
        PropertyValuesHolder[] propertyValuesHolderArr = null;
        ArrayList arrayList = null;
        while (true) {
            int eventType = xmlPullParser.getEventType();
            if (eventType == 3 || eventType == 1) {
                break;
            }
            if (eventType == 2 && xmlPullParser.getName().equals("propertyValuesHolder")) {
                TypedArray typedArrayA = androidx.core.content.c.g.a(resources, theme, attributeSet, b.r.a.a.a.f2996i);
                String strA = androidx.core.content.c.g.a(typedArrayA, xmlPullParser, "propertyName", 3);
                int iB = androidx.core.content.c.g.b(typedArrayA, xmlPullParser, "valueType", 2, 4);
                PropertyValuesHolder propertyValuesHolderA = a(context, resources, theme, xmlPullParser, strA, iB);
                if (propertyValuesHolderA == null) {
                    propertyValuesHolderA = a(typedArrayA, iB, 0, 1, strA);
                }
                if (propertyValuesHolderA != null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(propertyValuesHolderA);
                }
                typedArrayA.recycle();
            }
            xmlPullParser.next();
        }
        if (arrayList != null) {
            int size = arrayList.size();
            propertyValuesHolderArr = new PropertyValuesHolder[size];
            for (i2 = 0; i2 < size; i2++) {
                propertyValuesHolderArr[i2] = (PropertyValuesHolder) arrayList.get(i2);
            }
        }
        return propertyValuesHolderArr;
    }
}
