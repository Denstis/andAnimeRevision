package androidx.core.content.c;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes.dex */
public class g {
    public static float a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i2, float f2) {
        return !a(xmlPullParser, str) ? f2 : typedArray.getFloat(i2, f2);
    }

    public static int a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i2, int i3) {
        return !a(xmlPullParser, str) ? i3 : typedArray.getColor(i2, i3);
    }

    public static TypedArray a(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    public static b a(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i2, int i3) {
        if (a(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i2, typedValue);
            int i4 = typedValue.type;
            if (i4 >= 28 && i4 <= 31) {
                return b.b(typedValue.data);
            }
            b bVarB = b.b(typedArray.getResources(), typedArray.getResourceId(i2, 0), theme);
            if (bVarB != null) {
                return bVarB;
            }
        }
        return b.b(i3);
    }

    public static String a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i2) {
        if (a(xmlPullParser, str)) {
            return typedArray.getString(i2);
        }
        return null;
    }

    public static boolean a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i2, boolean z) {
        return !a(xmlPullParser, str) ? z : typedArray.getBoolean(i2, z);
    }

    public static boolean a(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null;
    }

    public static int b(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i2, int i3) {
        return !a(xmlPullParser, str) ? i3 : typedArray.getInt(i2, i3);
    }

    public static TypedValue b(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i2) {
        if (a(xmlPullParser, str)) {
            return typedArray.peekValue(i2);
        }
        return null;
    }

    public static int c(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i2, int i3) {
        return !a(xmlPullParser, str) ? i3 : typedArray.getResourceId(i2, i3);
    }
}
