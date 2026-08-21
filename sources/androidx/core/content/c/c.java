package androidx.core.content.c;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.Base64;
import android.util.TypedValue;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class c {

    public interface a {
    }

    public static final class b implements a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final C0017c[] f909a;

        public b(C0017c[] c0017cArr) {
            this.f909a = c0017cArr;
        }

        public C0017c[] a() {
            return this.f909a;
        }
    }

    /* JADX INFO: renamed from: androidx.core.content.c.c$c, reason: collision with other inner class name */
    public static final class C0017c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f910a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f911b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f912c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f913d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f914e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f915f;

        public C0017c(String str, int i2, boolean z, String str2, int i3, int i4) {
            this.f910a = str;
            this.f911b = i2;
            this.f912c = z;
            this.f913d = str2;
            this.f914e = i3;
            this.f915f = i4;
        }

        public String a() {
            return this.f910a;
        }

        public int b() {
            return this.f915f;
        }

        public int c() {
            return this.f914e;
        }

        public String d() {
            return this.f913d;
        }

        public int e() {
            return this.f911b;
        }

        public boolean f() {
            return this.f912c;
        }
    }

    public static final class d implements a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final b.h.l.a f916a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f917b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f918c;

        public d(b.h.l.a aVar, int i2, int i3) {
            this.f916a = aVar;
            this.f918c = i2;
            this.f917b = i3;
        }

        public int a() {
            return this.f918c;
        }

        public b.h.l.a b() {
            return this.f916a;
        }

        public int c() {
            return this.f917b;
        }
    }

    private static int a(TypedArray typedArray, int i2) {
        if (Build.VERSION.SDK_INT >= 21) {
            return typedArray.getType(i2);
        }
        TypedValue typedValue = new TypedValue();
        typedArray.getValue(i2, typedValue);
        return typedValue.type;
    }

    public static a a(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return b(xmlPullParser, resources);
        }
        throw new XmlPullParserException("No start tag found");
    }

    public static List<List<byte[]>> a(Resources resources, int i2) {
        if (i2 == 0) {
            return Collections.emptyList();
        }
        TypedArray typedArrayObtainTypedArray = resources.obtainTypedArray(i2);
        try {
            if (typedArrayObtainTypedArray.length() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            if (a(typedArrayObtainTypedArray, 0) == 1) {
                for (int i3 = 0; i3 < typedArrayObtainTypedArray.length(); i3++) {
                    int resourceId = typedArrayObtainTypedArray.getResourceId(i3, 0);
                    if (resourceId != 0) {
                        arrayList.add(a(resources.getStringArray(resourceId)));
                    }
                }
            } else {
                arrayList.add(a(resources.getStringArray(i2)));
            }
            return arrayList;
        } finally {
            typedArrayObtainTypedArray.recycle();
        }
    }

    private static List<byte[]> a(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(Base64.decode(str, 0));
        }
        return arrayList;
    }

    private static void a(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int i2 = 1;
        while (i2 > 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i2++;
            } else if (next == 3) {
                i2--;
            }
        }
    }

    private static a b(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "font-family");
        if (xmlPullParser.getName().equals("font-family")) {
            return c(xmlPullParser, resources);
        }
        a(xmlPullParser);
        return null;
    }

    private static a c(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), b.h.g.FontFamily);
        String string = typedArrayObtainAttributes.getString(b.h.g.FontFamily_fontProviderAuthority);
        String string2 = typedArrayObtainAttributes.getString(b.h.g.FontFamily_fontProviderPackage);
        String string3 = typedArrayObtainAttributes.getString(b.h.g.FontFamily_fontProviderQuery);
        int resourceId = typedArrayObtainAttributes.getResourceId(b.h.g.FontFamily_fontProviderCerts, 0);
        int integer = typedArrayObtainAttributes.getInteger(b.h.g.FontFamily_fontProviderFetchStrategy, 1);
        int integer2 = typedArrayObtainAttributes.getInteger(b.h.g.FontFamily_fontProviderFetchTimeout, 500);
        typedArrayObtainAttributes.recycle();
        if (string != null && string2 != null && string3 != null) {
            while (xmlPullParser.next() != 3) {
                a(xmlPullParser);
            }
            return new d(new b.h.l.a(string, string2, string3, a(resources, resourceId)), integer, integer2);
        }
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("font")) {
                    arrayList.add(d(xmlPullParser, resources));
                } else {
                    a(xmlPullParser);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new b((C0017c[]) arrayList.toArray(new C0017c[arrayList.size()]));
    }

    private static C0017c d(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), b.h.g.FontFamilyFont);
        int i2 = typedArrayObtainAttributes.getInt(typedArrayObtainAttributes.hasValue(b.h.g.FontFamilyFont_fontWeight) ? b.h.g.FontFamilyFont_fontWeight : b.h.g.FontFamilyFont_android_fontWeight, 400);
        boolean z = 1 == typedArrayObtainAttributes.getInt(typedArrayObtainAttributes.hasValue(b.h.g.FontFamilyFont_fontStyle) ? b.h.g.FontFamilyFont_fontStyle : b.h.g.FontFamilyFont_android_fontStyle, 0);
        int i3 = typedArrayObtainAttributes.hasValue(b.h.g.FontFamilyFont_ttcIndex) ? b.h.g.FontFamilyFont_ttcIndex : b.h.g.FontFamilyFont_android_ttcIndex;
        String string = typedArrayObtainAttributes.getString(typedArrayObtainAttributes.hasValue(b.h.g.FontFamilyFont_fontVariationSettings) ? b.h.g.FontFamilyFont_fontVariationSettings : b.h.g.FontFamilyFont_android_fontVariationSettings);
        int i4 = typedArrayObtainAttributes.getInt(i3, 0);
        int i5 = typedArrayObtainAttributes.hasValue(b.h.g.FontFamilyFont_font) ? b.h.g.FontFamilyFont_font : b.h.g.FontFamilyFont_android_font;
        int resourceId = typedArrayObtainAttributes.getResourceId(i5, 0);
        String string2 = typedArrayObtainAttributes.getString(i5);
        typedArrayObtainAttributes.recycle();
        while (xmlPullParser.next() != 3) {
            a(xmlPullParser);
        }
        return new C0017c(string2, i2, z, string, i4, resourceId);
    }
}
