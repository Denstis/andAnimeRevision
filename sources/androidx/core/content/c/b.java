package androidx.core.content.c;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Shader f906a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ColorStateList f907b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f908c;

    private b(Shader shader, ColorStateList colorStateList, int i2) {
        this.f906a = shader;
        this.f907b = colorStateList;
        this.f908c = i2;
    }

    static b a(ColorStateList colorStateList) {
        return new b(null, colorStateList, colorStateList.getDefaultColor());
    }

    private static b a(Resources resources, int i2, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        XmlResourceParser xml = resources.getXml(i2);
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
        do {
            next = xml.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        String name = xml.getName();
        byte b2 = -1;
        int iHashCode = name.hashCode();
        if (iHashCode != 89650992) {
            if (iHashCode == 1191572447 && name.equals("selector")) {
                b2 = 0;
            }
        } else if (name.equals("gradient")) {
            b2 = 1;
        }
        if (b2 == 0) {
            return a(a.a(resources, xml, attributeSetAsAttributeSet, theme));
        }
        if (b2 == 1) {
            return a(d.a(resources, xml, attributeSetAsAttributeSet, theme));
        }
        throw new XmlPullParserException(xml.getPositionDescription() + ": unsupported complex color tag " + name);
    }

    static b a(Shader shader) {
        return new b(shader, null, 0);
    }

    static b b(int i2) {
        return new b(null, null, i2);
    }

    public static b b(Resources resources, int i2, Resources.Theme theme) {
        try {
            return a(resources, i2, theme);
        } catch (Exception e2) {
            Log.e("ComplexColorCompat", "Failed to inflate ComplexColor.", e2);
            return null;
        }
    }

    public int a() {
        return this.f908c;
    }

    public void a(int i2) {
        this.f908c = i2;
    }

    public boolean a(int[] iArr) {
        if (d()) {
            ColorStateList colorStateList = this.f907b;
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (colorForState != this.f908c) {
                this.f908c = colorForState;
                return true;
            }
        }
        return false;
    }

    public Shader b() {
        return this.f906a;
    }

    public boolean c() {
        return this.f906a != null;
    }

    public boolean d() {
        ColorStateList colorStateList;
        return this.f906a == null && (colorStateList = this.f907b) != null && colorStateList.isStateful();
    }

    public boolean e() {
        return c() || this.f908c != 0;
    }
}
