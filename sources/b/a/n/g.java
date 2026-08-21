package b.a.n;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.view.menu.k;
import androidx.appcompat.view.menu.l;
import androidx.appcompat.widget.a0;
import b.a.j;
import com.google.android.exoplayer2.extractor.MpegAudioHeader;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class g extends MenuInflater {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final Class<?>[] f2196e = {Context.class};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final Class<?>[] f2197f = f2196e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Object[] f2198a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Object[] f2199b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Context f2200c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object f2201d;

    private static class a implements MenuItem.OnMenuItemClickListener {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final Class<?>[] f2202c = {MenuItem.class};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Object f2203a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Method f2204b;

        public a(Object obj, String str) {
            this.f2203a = obj;
            Class<?> cls = obj.getClass();
            try {
                this.f2204b = cls.getMethod(str, f2202c);
            } catch (Exception e2) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e2);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.f2204b.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.f2204b.invoke(this.f2203a, menuItem)).booleanValue();
                }
                this.f2204b.invoke(this.f2203a, menuItem);
                return true;
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    private class b {
        b.h.o.b A;
        private CharSequence B;
        private CharSequence C;
        private ColorStateList D = null;
        private PorterDuff.Mode E = null;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Menu f2205a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f2206b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f2207c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f2208d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f2209e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f2210f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f2211g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f2212h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f2213i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private int f2214j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private CharSequence f2215k;
        private CharSequence l;
        private int m;
        private char n;
        private int o;
        private char p;
        private int q;
        private int r;
        private boolean s;
        private boolean t;
        private boolean u;
        private int v;
        private int w;
        private String x;
        private String y;
        private String z;

        public b(Menu menu) {
            this.f2205a = menu;
            d();
        }

        private char a(String str) {
            if (str == null) {
                return (char) 0;
            }
            return str.charAt(0);
        }

        private <T> T a(String str, Class<?>[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = g.this.f2200c.getClassLoader().loadClass(str).getConstructor(clsArr);
                constructor.setAccessible(true);
                return (T) constructor.newInstance(objArr);
            } catch (Exception e2) {
                Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e2);
                return null;
            }
        }

        private void a(MenuItem menuItem) {
            boolean z = false;
            menuItem.setChecked(this.s).setVisible(this.t).setEnabled(this.u).setCheckable(this.r >= 1).setTitleCondensed(this.l).setIcon(this.m);
            int i2 = this.v;
            if (i2 >= 0) {
                menuItem.setShowAsAction(i2);
            }
            if (this.z != null) {
                if (g.this.f2200c.isRestricted()) {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
                menuItem.setOnMenuItemClickListener(new a(g.this.a(), this.z));
            }
            boolean z2 = menuItem instanceof k;
            if (z2) {
            }
            if (this.r >= 2) {
                if (z2) {
                    ((k) menuItem).c(true);
                } else if (menuItem instanceof l) {
                    ((l) menuItem).a(true);
                }
            }
            String str = this.x;
            if (str != null) {
                menuItem.setActionView((View) a(str, g.f2196e, g.this.f2198a));
                z = true;
            }
            int i3 = this.w;
            if (i3 > 0) {
                if (z) {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                } else {
                    menuItem.setActionView(i3);
                }
            }
            b.h.o.b bVar = this.A;
            if (bVar != null) {
                b.h.o.g.a(menuItem, bVar);
            }
            b.h.o.g.a(menuItem, this.B);
            b.h.o.g.b(menuItem, this.C);
            b.h.o.g.a(menuItem, this.n, this.o);
            b.h.o.g.b(menuItem, this.p, this.q);
            PorterDuff.Mode mode = this.E;
            if (mode != null) {
                b.h.o.g.a(menuItem, mode);
            }
            ColorStateList colorStateList = this.D;
            if (colorStateList != null) {
                b.h.o.g.a(menuItem, colorStateList);
            }
        }

        public void a() {
            this.f2212h = true;
            a(this.f2205a.add(this.f2206b, this.f2213i, this.f2214j, this.f2215k));
        }

        public void a(AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = g.this.f2200c.obtainStyledAttributes(attributeSet, j.MenuGroup);
            this.f2206b = typedArrayObtainStyledAttributes.getResourceId(j.MenuGroup_android_id, 0);
            this.f2207c = typedArrayObtainStyledAttributes.getInt(j.MenuGroup_android_menuCategory, 0);
            this.f2208d = typedArrayObtainStyledAttributes.getInt(j.MenuGroup_android_orderInCategory, 0);
            this.f2209e = typedArrayObtainStyledAttributes.getInt(j.MenuGroup_android_checkableBehavior, 0);
            this.f2210f = typedArrayObtainStyledAttributes.getBoolean(j.MenuGroup_android_visible, true);
            this.f2211g = typedArrayObtainStyledAttributes.getBoolean(j.MenuGroup_android_enabled, true);
            typedArrayObtainStyledAttributes.recycle();
        }

        public SubMenu b() {
            this.f2212h = true;
            SubMenu subMenuAddSubMenu = this.f2205a.addSubMenu(this.f2206b, this.f2213i, this.f2214j, this.f2215k);
            a(subMenuAddSubMenu.getItem());
            return subMenuAddSubMenu;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void b(AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = g.this.f2200c.obtainStyledAttributes(attributeSet, j.MenuItem);
            this.f2213i = typedArrayObtainStyledAttributes.getResourceId(j.MenuItem_android_id, 0);
            this.f2214j = (typedArrayObtainStyledAttributes.getInt(j.MenuItem_android_menuCategory, this.f2207c) & (-65536)) | (typedArrayObtainStyledAttributes.getInt(j.MenuItem_android_orderInCategory, this.f2208d) & 65535);
            this.f2215k = typedArrayObtainStyledAttributes.getText(j.MenuItem_android_title);
            this.l = typedArrayObtainStyledAttributes.getText(j.MenuItem_android_titleCondensed);
            this.m = typedArrayObtainStyledAttributes.getResourceId(j.MenuItem_android_icon, 0);
            this.n = a(typedArrayObtainStyledAttributes.getString(j.MenuItem_android_alphabeticShortcut));
            this.o = typedArrayObtainStyledAttributes.getInt(j.MenuItem_alphabeticModifiers, MpegAudioHeader.MAX_FRAME_SIZE_BYTES);
            this.p = a(typedArrayObtainStyledAttributes.getString(j.MenuItem_android_numericShortcut));
            this.q = typedArrayObtainStyledAttributes.getInt(j.MenuItem_numericModifiers, MpegAudioHeader.MAX_FRAME_SIZE_BYTES);
            this.r = typedArrayObtainStyledAttributes.hasValue(j.MenuItem_android_checkable) ? typedArrayObtainStyledAttributes.getBoolean(j.MenuItem_android_checkable, false) : this.f2209e;
            this.s = typedArrayObtainStyledAttributes.getBoolean(j.MenuItem_android_checked, false);
            this.t = typedArrayObtainStyledAttributes.getBoolean(j.MenuItem_android_visible, this.f2210f);
            this.u = typedArrayObtainStyledAttributes.getBoolean(j.MenuItem_android_enabled, this.f2211g);
            this.v = typedArrayObtainStyledAttributes.getInt(j.MenuItem_showAsAction, -1);
            this.z = typedArrayObtainStyledAttributes.getString(j.MenuItem_android_onClick);
            this.w = typedArrayObtainStyledAttributes.getResourceId(j.MenuItem_actionLayout, 0);
            this.x = typedArrayObtainStyledAttributes.getString(j.MenuItem_actionViewClass);
            this.y = typedArrayObtainStyledAttributes.getString(j.MenuItem_actionProviderClass);
            boolean z = this.y != null;
            if (z && this.w == 0 && this.x == null) {
                this.A = (b.h.o.b) a(this.y, g.f2197f, g.this.f2199b);
            } else {
                if (z) {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                }
                this.A = null;
            }
            this.B = typedArrayObtainStyledAttributes.getText(j.MenuItem_contentDescription);
            this.C = typedArrayObtainStyledAttributes.getText(j.MenuItem_tooltipText);
            if (typedArrayObtainStyledAttributes.hasValue(j.MenuItem_iconTintMode)) {
                this.E = a0.a(typedArrayObtainStyledAttributes.getInt(j.MenuItem_iconTintMode, -1), this.E);
            } else {
                this.E = null;
            }
            if (typedArrayObtainStyledAttributes.hasValue(j.MenuItem_iconTint)) {
                this.D = typedArrayObtainStyledAttributes.getColorStateList(j.MenuItem_iconTint);
            } else {
                this.D = null;
            }
            typedArrayObtainStyledAttributes.recycle();
            this.f2212h = false;
        }

        public boolean c() {
            return this.f2212h;
        }

        public void d() {
            this.f2206b = 0;
            this.f2207c = 0;
            this.f2208d = 0;
            this.f2209e = 0;
            this.f2210f = true;
            this.f2211g = true;
        }
    }

    public g(Context context) {
        super(context);
        this.f2200c = context;
        this.f2198a = new Object[]{context};
        this.f2199b = this.f2198a;
    }

    private Object a(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) ? a(((ContextWrapper) obj).getBaseContext()) : obj;
    }

    private void a(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) throws XmlPullParserException, IOException {
        b bVar = new b(menu);
        int eventType = xmlPullParser.getEventType();
        while (true) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if (!name.equals("menu")) {
                    throw new RuntimeException("Expecting menu, got " + name);
                }
                eventType = xmlPullParser.next();
            } else {
                eventType = xmlPullParser.next();
                if (eventType == 1) {
                    break;
                }
            }
        }
        int next = eventType;
        String str = null;
        boolean z = false;
        boolean z2 = false;
        while (!z) {
            if (next == 1) {
                throw new RuntimeException("Unexpected end of document");
            }
            if (next != 2) {
                if (next == 3) {
                    String name2 = xmlPullParser.getName();
                    if (z2 && name2.equals(str)) {
                        str = null;
                        z2 = false;
                    } else if (name2.equals("group")) {
                        bVar.d();
                    } else if (name2.equals("item")) {
                        if (!bVar.c()) {
                            b.h.o.b bVar2 = bVar.A;
                            if (bVar2 == null || !bVar2.a()) {
                                bVar.a();
                            } else {
                                bVar.b();
                            }
                        }
                    } else if (name2.equals("menu")) {
                        z = true;
                    }
                }
            } else if (!z2) {
                String name3 = xmlPullParser.getName();
                if (name3.equals("group")) {
                    bVar.a(attributeSet);
                } else if (name3.equals("item")) {
                    bVar.b(attributeSet);
                } else if (name3.equals("menu")) {
                    a(xmlPullParser, attributeSet, bVar.b());
                } else {
                    str = name3;
                    z2 = true;
                }
            }
            next = xmlPullParser.next();
        }
    }

    Object a() {
        if (this.f2201d == null) {
            this.f2201d = a(this.f2200c);
        }
        return this.f2201d;
    }

    @Override // android.view.MenuInflater
    public void inflate(int i2, Menu menu) {
        if (!(menu instanceof b.h.i.a.a)) {
            super.inflate(i2, menu);
            return;
        }
        XmlResourceParser layout = null;
        try {
            try {
                try {
                    layout = this.f2200c.getResources().getLayout(i2);
                    a(layout, Xml.asAttributeSet(layout), menu);
                } catch (XmlPullParserException e2) {
                    throw new InflateException("Error inflating menu XML", e2);
                }
            } catch (IOException e3) {
                throw new InflateException("Error inflating menu XML", e3);
            }
        } finally {
            if (layout != null) {
                layout.close();
            }
        }
    }
}
