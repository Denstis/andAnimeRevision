package androidx.core.content.c;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.LinearGradient;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
final class d {

    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int[] f919a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final float[] f920b;

        a(int i2, int i3) {
            this.f919a = new int[]{i2, i3};
            this.f920b = new float[]{0.0f, 1.0f};
        }

        a(int i2, int i3, int i4) {
            this.f919a = new int[]{i2, i3, i4};
            this.f920b = new float[]{0.0f, 0.5f, 1.0f};
        }

        a(List<Integer> list, List<Float> list2) {
            int size = list.size();
            this.f919a = new int[size];
            this.f920b = new float[size];
            for (int i2 = 0; i2 < size; i2++) {
                this.f919a[i2] = list.get(i2).intValue();
                this.f920b[i2] = list2.get(i2).floatValue();
            }
        }
    }

    private static Shader.TileMode a(int i2) {
        return i2 != 1 ? i2 != 2 ? Shader.TileMode.CLAMP : Shader.TileMode.MIRROR : Shader.TileMode.REPEAT;
    }

    static Shader a(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException {
        String name = xmlPullParser.getName();
        if (!name.equals("gradient")) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid gradient color tag " + name);
        }
        TypedArray typedArrayA = g.a(resources, theme, attributeSet, b.h.g.GradientColor);
        float fA = g.a(typedArrayA, xmlPullParser, "startX", b.h.g.GradientColor_android_startX, 0.0f);
        float fA2 = g.a(typedArrayA, xmlPullParser, "startY", b.h.g.GradientColor_android_startY, 0.0f);
        float fA3 = g.a(typedArrayA, xmlPullParser, "endX", b.h.g.GradientColor_android_endX, 0.0f);
        float fA4 = g.a(typedArrayA, xmlPullParser, "endY", b.h.g.GradientColor_android_endY, 0.0f);
        float fA5 = g.a(typedArrayA, xmlPullParser, "centerX", b.h.g.GradientColor_android_centerX, 0.0f);
        float fA6 = g.a(typedArrayA, xmlPullParser, "centerY", b.h.g.GradientColor_android_centerY, 0.0f);
        int iB = g.b(typedArrayA, xmlPullParser, "type", b.h.g.GradientColor_android_type, 0);
        int iA = g.a(typedArrayA, xmlPullParser, "startColor", b.h.g.GradientColor_android_startColor, 0);
        boolean zA = g.a(xmlPullParser, "centerColor");
        int iA2 = g.a(typedArrayA, xmlPullParser, "centerColor", b.h.g.GradientColor_android_centerColor, 0);
        int iA3 = g.a(typedArrayA, xmlPullParser, "endColor", b.h.g.GradientColor_android_endColor, 0);
        int iB2 = g.b(typedArrayA, xmlPullParser, "tileMode", b.h.g.GradientColor_android_tileMode, 0);
        float fA7 = g.a(typedArrayA, xmlPullParser, "gradientRadius", b.h.g.GradientColor_android_gradientRadius, 0.0f);
        typedArrayA.recycle();
        a aVarA = a(b(resources, xmlPullParser, attributeSet, theme), iA, iA3, zA, iA2);
        if (iB != 1) {
            return iB != 2 ? new LinearGradient(fA, fA2, fA3, fA4, aVarA.f919a, aVarA.f920b, a(iB2)) : new SweepGradient(fA5, fA6, aVarA.f919a, aVarA.f920b);
        }
        if (fA7 > 0.0f) {
            return new RadialGradient(fA5, fA6, fA7, aVarA.f919a, aVarA.f920b, a(iB2));
        }
        throw new XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
    }

    private static a a(a aVar, int i2, int i3, boolean z, int i4) {
        return aVar != null ? aVar : z ? new a(i2, i4, i3) : new a(i2, i3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x008e, code lost:
    
        if (r4.size() <= 0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0095, code lost:
    
        return new androidx.core.content.c.d.a(r4, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0096, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static androidx.core.content.c.d.a b(android.content.res.Resources r8, org.xmlpull.v1.XmlPullParser r9, android.util.AttributeSet r10, android.content.res.Resources.Theme r11) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            int r0 = r9.getDepth()
            r1 = 1
            int r0 = r0 + r1
            java.util.ArrayList r2 = new java.util.ArrayList
            r3 = 20
            r2.<init>(r3)
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>(r3)
        L12:
            int r3 = r9.next()
            if (r3 == r1) goto L8a
            int r5 = r9.getDepth()
            if (r5 >= r0) goto L21
            r6 = 3
            if (r3 == r6) goto L8a
        L21:
            r6 = 2
            if (r3 == r6) goto L25
            goto L12
        L25:
            if (r5 > r0) goto L12
            java.lang.String r3 = r9.getName()
            java.lang.String r5 = "item"
            boolean r3 = r3.equals(r5)
            if (r3 != 0) goto L34
            goto L12
        L34:
            int[] r3 = b.h.g.GradientColorItem
            android.content.res.TypedArray r3 = androidx.core.content.c.g.a(r8, r11, r10, r3)
            int r5 = b.h.g.GradientColorItem_android_color
            boolean r5 = r3.hasValue(r5)
            int r6 = b.h.g.GradientColorItem_android_offset
            boolean r6 = r3.hasValue(r6)
            if (r5 == 0) goto L6a
            if (r6 == 0) goto L6a
            int r5 = b.h.g.GradientColorItem_android_color
            r6 = 0
            int r5 = r3.getColor(r5, r6)
            int r6 = b.h.g.GradientColorItem_android_offset
            r7 = 0
            float r6 = r3.getFloat(r6, r7)
            r3.recycle()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r5)
            r4.add(r3)
            java.lang.Float r3 = java.lang.Float.valueOf(r6)
            r2.add(r3)
            goto L12
        L6a:
            org.xmlpull.v1.XmlPullParserException r8 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r9 = r9.getPositionDescription()
            r10.append(r9)
            java.lang.String r9 = ": <item> tag requires a 'color' attribute and a 'offset' "
            r10.append(r9)
            java.lang.String r9 = "attribute!"
            r10.append(r9)
            java.lang.String r9 = r10.toString()
            r8.<init>(r9)
            throw r8
        L8a:
            int r8 = r4.size()
            if (r8 <= 0) goto L96
            androidx.core.content.c.d$a r8 = new androidx.core.content.c.d$a
            r8.<init>(r4, r2)
            return r8
        L96:
            r8 = 0
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.c.d.b(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):androidx.core.content.c.d$a");
    }
}
