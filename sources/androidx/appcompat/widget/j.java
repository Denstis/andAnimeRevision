package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static j f567h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakHashMap<Context, b.e.h<ColorStateList>> f571a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b.e.a<String, d> f572b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private b.e.h<String> f573c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final WeakHashMap<Context, b.e.d<WeakReference<Drawable.ConstantState>>> f574d = new WeakHashMap<>(0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TypedValue f575e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f576f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final PorterDuff.Mode f566g = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final c f568i = new c(6);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int[] f569j = {b.a.e.abc_textfield_search_default_mtrl_alpha, b.a.e.abc_textfield_default_mtrl_alpha, b.a.e.abc_ab_share_pack_mtrl_alpha};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int[] f570k = {b.a.e.abc_ic_commit_search_api_mtrl_alpha, b.a.e.abc_seekbar_tick_mark_material, b.a.e.abc_ic_menu_share_mtrl_alpha, b.a.e.abc_ic_menu_copy_mtrl_am_alpha, b.a.e.abc_ic_menu_cut_mtrl_alpha, b.a.e.abc_ic_menu_selectall_mtrl_alpha, b.a.e.abc_ic_menu_paste_mtrl_am_alpha};
    private static final int[] l = {b.a.e.abc_textfield_activated_mtrl_alpha, b.a.e.abc_textfield_search_activated_mtrl_alpha, b.a.e.abc_cab_background_top_mtrl_alpha, b.a.e.abc_text_cursor_material, b.a.e.abc_text_select_handle_left_mtrl_dark, b.a.e.abc_text_select_handle_middle_mtrl_dark, b.a.e.abc_text_select_handle_right_mtrl_dark, b.a.e.abc_text_select_handle_left_mtrl_light, b.a.e.abc_text_select_handle_middle_mtrl_light, b.a.e.abc_text_select_handle_right_mtrl_light};
    private static final int[] m = {b.a.e.abc_popup_background_mtrl_mult, b.a.e.abc_cab_background_internal_bg, b.a.e.abc_menu_hardkey_panel_mtrl_mult};
    private static final int[] n = {b.a.e.abc_tab_indicator_material, b.a.e.abc_textfield_search_material};
    private static final int[] o = {b.a.e.abc_btn_check_material, b.a.e.abc_btn_radio_material};

    static class a implements d {
        a() {
        }

        @Override // androidx.appcompat.widget.j.d
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return b.a.l.a.a.b(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e2) {
                Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e2);
                return null;
            }
        }
    }

    private static class b implements d {
        b() {
        }

        @Override // androidx.appcompat.widget.j.d
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return b.r.a.a.c.a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e2) {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e2);
                return null;
            }
        }
    }

    private static class c extends b.e.e<Integer, PorterDuffColorFilter> {
        public c(int i2) {
            super(i2);
        }

        private static int b(int i2, PorterDuff.Mode mode) {
            return ((i2 + 31) * 31) + mode.hashCode();
        }

        PorterDuffColorFilter a(int i2, PorterDuff.Mode mode) {
            return get(Integer.valueOf(b(i2, mode)));
        }

        PorterDuffColorFilter a(int i2, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return put(Integer.valueOf(b(i2, mode)), porterDuffColorFilter);
        }
    }

    private interface d {
        Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    private static class e implements d {
        e() {
        }

        @Override // androidx.appcompat.widget.j.d
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return b.r.a.a.i.createFromXmlInner(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e2) {
                Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e2);
                return null;
            }
        }
    }

    private static long a(TypedValue typedValue) {
        return (((long) typedValue.assetCookie) << 32) | ((long) typedValue.data);
    }

    static PorterDuff.Mode a(int i2) {
        if (i2 == b.a.e.abc_switch_thumb_material) {
            return PorterDuff.Mode.MULTIPLY;
        }
        return null;
    }

    public static synchronized PorterDuffColorFilter a(int i2, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilterA;
        porterDuffColorFilterA = f568i.a(i2, mode);
        if (porterDuffColorFilterA == null) {
            porterDuffColorFilterA = new PorterDuffColorFilter(i2, mode);
            f568i.a(i2, mode, porterDuffColorFilterA);
        }
        return porterDuffColorFilterA;
    }

    private static PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return a(colorStateList.getColorForState(iArr, 0), mode);
    }

    private Drawable a(Context context, int i2, boolean z, Drawable drawable) {
        LayerDrawable layerDrawable;
        Drawable drawableFindDrawableByLayerId;
        int i3;
        ColorStateList colorStateListB = b(context, i2);
        if (colorStateListB != null) {
            if (a0.a(drawable)) {
                drawable = drawable.mutate();
            }
            Drawable drawableI = androidx.core.graphics.drawable.a.i(drawable);
            androidx.core.graphics.drawable.a.a(drawableI, colorStateListB);
            PorterDuff.Mode modeA = a(i2);
            if (modeA == null) {
                return drawableI;
            }
            androidx.core.graphics.drawable.a.a(drawableI, modeA);
            return drawableI;
        }
        if (i2 == b.a.e.abc_seekbar_track_material) {
            layerDrawable = (LayerDrawable) drawable;
            a(layerDrawable.findDrawableByLayerId(R.id.background), l0.b(context, b.a.a.colorControlNormal), f566g);
            drawableFindDrawableByLayerId = layerDrawable.findDrawableByLayerId(R.id.secondaryProgress);
            i3 = b.a.a.colorControlNormal;
        } else {
            if (i2 != b.a.e.abc_ratingbar_material && i2 != b.a.e.abc_ratingbar_indicator_material && i2 != b.a.e.abc_ratingbar_small_material) {
                if (a(context, i2, drawable) || !z) {
                    return drawable;
                }
                return null;
            }
            layerDrawable = (LayerDrawable) drawable;
            a(layerDrawable.findDrawableByLayerId(R.id.background), l0.a(context, b.a.a.colorControlNormal), f566g);
            drawableFindDrawableByLayerId = layerDrawable.findDrawableByLayerId(R.id.secondaryProgress);
            i3 = b.a.a.colorControlActivated;
        }
        a(drawableFindDrawableByLayerId, l0.b(context, i3), f566g);
        a(layerDrawable.findDrawableByLayerId(R.id.progress), l0.b(context, b.a.a.colorControlActivated), f566g);
        return drawable;
    }

    private synchronized Drawable a(Context context, long j2) {
        b.e.d<WeakReference<Drawable.ConstantState>> dVar = this.f574d.get(context);
        if (dVar == null) {
            return null;
        }
        WeakReference<Drawable.ConstantState> weakReferenceB = dVar.b(j2);
        if (weakReferenceB != null) {
            Drawable.ConstantState constantState = weakReferenceB.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            dVar.a(j2);
        }
        return null;
    }

    public static synchronized j a() {
        if (f567h == null) {
            f567h = new j();
            a(f567h);
        }
        return f567h;
    }

    private void a(Context context, int i2, ColorStateList colorStateList) {
        if (this.f571a == null) {
            this.f571a = new WeakHashMap<>();
        }
        b.e.h<ColorStateList> hVar = this.f571a.get(context);
        if (hVar == null) {
            hVar = new b.e.h<>();
            this.f571a.put(context, hVar);
        }
        hVar.a(i2, colorStateList);
    }

    private static void a(Drawable drawable, int i2, PorterDuff.Mode mode) {
        if (a0.a(drawable)) {
            drawable = drawable.mutate();
        }
        if (mode == null) {
            mode = f566g;
        }
        drawable.setColorFilter(a(i2, mode));
    }

    static void a(Drawable drawable, o0 o0Var, int[] iArr) {
        if (a0.a(drawable) && drawable.mutate() != drawable) {
            Log.d("AppCompatDrawableManag", "Mutated drawable is not the same instance as the input.");
            return;
        }
        if (o0Var.f624d || o0Var.f623c) {
            drawable.setColorFilter(a(o0Var.f624d ? o0Var.f621a : null, o0Var.f623c ? o0Var.f622b : f566g, iArr));
        } else {
            drawable.clearColorFilter();
        }
        if (Build.VERSION.SDK_INT <= 23) {
            drawable.invalidateSelf();
        }
    }

    private static void a(j jVar) {
        if (Build.VERSION.SDK_INT < 24) {
            jVar.a("vector", new e());
            jVar.a("animated-vector", new b());
            jVar.a("animated-selector", new a());
        }
    }

    private void a(String str, d dVar) {
        if (this.f572b == null) {
            this.f572b = new b.e.a<>();
        }
        this.f572b.put(str, dVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0061 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static boolean a(android.content.Context r6, int r7, android.graphics.drawable.Drawable r8) {
        /*
            android.graphics.PorterDuff$Mode r0 = androidx.appcompat.widget.j.f566g
            int[] r1 = androidx.appcompat.widget.j.f569j
            boolean r1 = a(r1, r7)
            r2 = 16842801(0x1010031, float:2.3693695E-38)
            r3 = -1
            r4 = 0
            r5 = 1
            if (r1 == 0) goto L15
            int r2 = b.a.a.colorControlNormal
        L12:
            r7 = 1
            r1 = -1
            goto L44
        L15:
            int[] r1 = androidx.appcompat.widget.j.l
            boolean r1 = a(r1, r7)
            if (r1 == 0) goto L20
            int r2 = b.a.a.colorControlActivated
            goto L12
        L20:
            int[] r1 = androidx.appcompat.widget.j.m
            boolean r1 = a(r1, r7)
            if (r1 == 0) goto L2b
            android.graphics.PorterDuff$Mode r0 = android.graphics.PorterDuff.Mode.MULTIPLY
            goto L12
        L2b:
            int r1 = b.a.e.abc_list_divider_mtrl_alpha
            if (r7 != r1) goto L3c
            r2 = 16842800(0x1010030, float:2.3693693E-38)
            r7 = 1109603123(0x42233333, float:40.8)
            int r7 = java.lang.Math.round(r7)
            r1 = r7
            r7 = 1
            goto L44
        L3c:
            int r1 = b.a.e.abc_dialog_material_background
            if (r7 != r1) goto L41
            goto L12
        L41:
            r7 = 0
            r1 = -1
            r2 = 0
        L44:
            if (r7 == 0) goto L61
            boolean r7 = androidx.appcompat.widget.a0.a(r8)
            if (r7 == 0) goto L50
            android.graphics.drawable.Drawable r8 = r8.mutate()
        L50:
            int r6 = androidx.appcompat.widget.l0.b(r6, r2)
            android.graphics.PorterDuffColorFilter r6 = a(r6, r0)
            r8.setColorFilter(r6)
            if (r1 == r3) goto L60
            r8.setAlpha(r1)
        L60:
            return r5
        L61:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.j.a(android.content.Context, int, android.graphics.drawable.Drawable):boolean");
    }

    private synchronized boolean a(Context context, long j2, Drawable drawable) {
        boolean z;
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState != null) {
            b.e.d<WeakReference<Drawable.ConstantState>> dVar = this.f574d.get(context);
            if (dVar == null) {
                dVar = new b.e.d<>();
                this.f574d.put(context, dVar);
            }
            dVar.c(j2, new WeakReference<>(constantState));
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    private static boolean a(Drawable drawable) {
        return (drawable instanceof b.r.a.a.i) || "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName());
    }

    private static boolean a(int[] iArr, int i2) {
        for (int i3 : iArr) {
            if (i3 == i2) {
                return true;
            }
        }
        return false;
    }

    private void b(Context context) {
        if (this.f576f) {
            return;
        }
        this.f576f = true;
        Drawable drawableA = a(context, b.a.e.abc_vector_test);
        if (drawableA == null || !a(drawableA)) {
            this.f576f = false;
            throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
        }
    }

    private ColorStateList c(Context context) {
        return c(context, 0);
    }

    private ColorStateList c(Context context, int i2) {
        int iB = l0.b(context, b.a.a.colorControlHighlight);
        return new ColorStateList(new int[][]{l0.f602b, l0.f604d, l0.f603c, l0.f606f}, new int[]{l0.a(context, b.a.a.colorButtonNormal), b.h.h.a.b(iB, i2), b.h.h.a.b(iB, i2), i2});
    }

    private ColorStateList d(Context context) {
        return c(context, l0.b(context, b.a.a.colorAccent));
    }

    private Drawable d(Context context, int i2) {
        if (this.f575e == null) {
            this.f575e = new TypedValue();
        }
        TypedValue typedValue = this.f575e;
        context.getResources().getValue(i2, typedValue, true);
        long jA = a(typedValue);
        Drawable drawableA = a(context, jA);
        if (drawableA != null) {
            return drawableA;
        }
        if (i2 == b.a.e.abc_cab_background_top_material) {
            drawableA = new LayerDrawable(new Drawable[]{a(context, b.a.e.abc_cab_background_internal_bg), a(context, b.a.e.abc_cab_background_top_mtrl_alpha)});
        }
        if (drawableA != null) {
            drawableA.setChangingConfigurations(typedValue.changingConfigurations);
            a(context, jA, drawableA);
        }
        return drawableA;
    }

    private ColorStateList e(Context context) {
        return c(context, l0.b(context, b.a.a.colorButtonNormal));
    }

    private ColorStateList e(Context context, int i2) {
        b.e.h<ColorStateList> hVar;
        WeakHashMap<Context, b.e.h<ColorStateList>> weakHashMap = this.f571a;
        if (weakHashMap == null || (hVar = weakHashMap.get(context)) == null) {
            return null;
        }
        return hVar.b(i2);
    }

    private ColorStateList f(Context context) {
        int[][] iArr = new int[3][];
        int[] iArr2 = new int[3];
        ColorStateList colorStateListC = l0.c(context, b.a.a.colorSwitchThumbNormal);
        if (colorStateListC == null || !colorStateListC.isStateful()) {
            iArr[0] = l0.f602b;
            iArr2[0] = l0.a(context, b.a.a.colorSwitchThumbNormal);
            iArr[1] = l0.f605e;
            iArr2[1] = l0.b(context, b.a.a.colorControlActivated);
            iArr[2] = l0.f606f;
            iArr2[2] = l0.b(context, b.a.a.colorSwitchThumbNormal);
        } else {
            iArr[0] = l0.f602b;
            iArr2[0] = colorStateListC.getColorForState(iArr[0], 0);
            iArr[1] = l0.f605e;
            iArr2[1] = l0.b(context, b.a.a.colorControlActivated);
            iArr[2] = l0.f606f;
            iArr2[2] = colorStateListC.getDefaultColor();
        }
        return new ColorStateList(iArr, iArr2);
    }

    private Drawable f(Context context, int i2) {
        int next;
        b.e.a<String, d> aVar = this.f572b;
        if (aVar == null || aVar.isEmpty()) {
            return null;
        }
        b.e.h<String> hVar = this.f573c;
        if (hVar != null) {
            String strB = hVar.b(i2);
            if ("appcompat_skip_skip".equals(strB) || (strB != null && this.f572b.get(strB) == null)) {
                return null;
            }
        } else {
            this.f573c = new b.e.h<>();
        }
        if (this.f575e == null) {
            this.f575e = new TypedValue();
        }
        TypedValue typedValue = this.f575e;
        Resources resources = context.getResources();
        resources.getValue(i2, typedValue, true);
        long jA = a(typedValue);
        Drawable drawableA = a(context, jA);
        if (drawableA != null) {
            return drawableA;
        }
        CharSequence charSequence = typedValue.string;
        if (charSequence != null && charSequence.toString().endsWith(".xml")) {
            try {
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
                this.f573c.a(i2, name);
                d dVar = this.f572b.get(name);
                if (dVar != null) {
                    drawableA = dVar.a(context, xml, attributeSetAsAttributeSet, context.getTheme());
                }
                if (drawableA != null) {
                    drawableA.setChangingConfigurations(typedValue.changingConfigurations);
                    a(context, jA, drawableA);
                }
            } catch (Exception e2) {
                Log.e("AppCompatDrawableManag", "Exception while inflating drawable", e2);
            }
        }
        if (drawableA == null) {
            this.f573c.a(i2, "appcompat_skip_skip");
        }
        return drawableA;
    }

    public synchronized Drawable a(Context context, int i2) {
        return a(context, i2, false);
    }

    synchronized Drawable a(Context context, int i2, boolean z) {
        Drawable drawableF;
        b(context);
        drawableF = f(context, i2);
        if (drawableF == null) {
            drawableF = d(context, i2);
        }
        if (drawableF == null) {
            drawableF = androidx.core.content.a.c(context, i2);
        }
        if (drawableF != null) {
            drawableF = a(context, i2, z, drawableF);
        }
        if (drawableF != null) {
            a0.b(drawableF);
        }
        return drawableF;
    }

    synchronized Drawable a(Context context, v0 v0Var, int i2) {
        Drawable drawableF = f(context, i2);
        if (drawableF == null) {
            drawableF = v0Var.a(i2);
        }
        if (drawableF == null) {
            return null;
        }
        return a(context, i2, false, drawableF);
    }

    public synchronized void a(Context context) {
        b.e.d<WeakReference<Drawable.ConstantState>> dVar = this.f574d.get(context);
        if (dVar != null) {
            dVar.a();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0078 A[Catch: all -> 0x007d, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0007, B:7:0x000b, B:8:0x000d, B:43:0x0078, B:9:0x0013, B:11:0x0017, B:12:0x001a, B:14:0x001e, B:15:0x0023, B:17:0x0027, B:18:0x002c, B:20:0x0030, B:21:0x0035, B:23:0x0039, B:24:0x003e, B:26:0x0042, B:29:0x0047, B:31:0x004f, B:32:0x0056, B:34:0x005e, B:35:0x0061, B:37:0x0069, B:38:0x006c, B:40:0x0070, B:41:0x0073), top: B:51:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    synchronized android.content.res.ColorStateList b(android.content.Context r3, int r4) {
        /*
            r2 = this;
            monitor-enter(r2)
            android.content.res.ColorStateList r0 = r2.e(r3, r4)     // Catch: java.lang.Throwable -> L7d
            if (r0 != 0) goto L7b
            int r1 = b.a.e.abc_edit_text_material     // Catch: java.lang.Throwable -> L7d
            if (r4 != r1) goto L13
            int r0 = b.a.c.abc_tint_edittext     // Catch: java.lang.Throwable -> L7d
        Ld:
            android.content.res.ColorStateList r0 = b.a.k.a.a.b(r3, r0)     // Catch: java.lang.Throwable -> L7d
            goto L76
        L13:
            int r1 = b.a.e.abc_switch_track_mtrl_alpha     // Catch: java.lang.Throwable -> L7d
            if (r4 != r1) goto L1a
            int r0 = b.a.c.abc_tint_switch_track     // Catch: java.lang.Throwable -> L7d
            goto Ld
        L1a:
            int r1 = b.a.e.abc_switch_thumb_material     // Catch: java.lang.Throwable -> L7d
            if (r4 != r1) goto L23
            android.content.res.ColorStateList r0 = r2.f(r3)     // Catch: java.lang.Throwable -> L7d
            goto L76
        L23:
            int r1 = b.a.e.abc_btn_default_mtrl_shape     // Catch: java.lang.Throwable -> L7d
            if (r4 != r1) goto L2c
            android.content.res.ColorStateList r0 = r2.e(r3)     // Catch: java.lang.Throwable -> L7d
            goto L76
        L2c:
            int r1 = b.a.e.abc_btn_borderless_material     // Catch: java.lang.Throwable -> L7d
            if (r4 != r1) goto L35
            android.content.res.ColorStateList r0 = r2.c(r3)     // Catch: java.lang.Throwable -> L7d
            goto L76
        L35:
            int r1 = b.a.e.abc_btn_colored_material     // Catch: java.lang.Throwable -> L7d
            if (r4 != r1) goto L3e
            android.content.res.ColorStateList r0 = r2.d(r3)     // Catch: java.lang.Throwable -> L7d
            goto L76
        L3e:
            int r1 = b.a.e.abc_spinner_mtrl_am_alpha     // Catch: java.lang.Throwable -> L7d
            if (r4 == r1) goto L73
            int r1 = b.a.e.abc_spinner_textfield_background_material     // Catch: java.lang.Throwable -> L7d
            if (r4 != r1) goto L47
            goto L73
        L47:
            int[] r1 = androidx.appcompat.widget.j.f570k     // Catch: java.lang.Throwable -> L7d
            boolean r1 = a(r1, r4)     // Catch: java.lang.Throwable -> L7d
            if (r1 == 0) goto L56
            int r0 = b.a.a.colorControlNormal     // Catch: java.lang.Throwable -> L7d
            android.content.res.ColorStateList r0 = androidx.appcompat.widget.l0.c(r3, r0)     // Catch: java.lang.Throwable -> L7d
            goto L76
        L56:
            int[] r1 = androidx.appcompat.widget.j.n     // Catch: java.lang.Throwable -> L7d
            boolean r1 = a(r1, r4)     // Catch: java.lang.Throwable -> L7d
            if (r1 == 0) goto L61
            int r0 = b.a.c.abc_tint_default     // Catch: java.lang.Throwable -> L7d
            goto Ld
        L61:
            int[] r1 = androidx.appcompat.widget.j.o     // Catch: java.lang.Throwable -> L7d
            boolean r1 = a(r1, r4)     // Catch: java.lang.Throwable -> L7d
            if (r1 == 0) goto L6c
            int r0 = b.a.c.abc_tint_btn_checkable     // Catch: java.lang.Throwable -> L7d
            goto Ld
        L6c:
            int r1 = b.a.e.abc_seekbar_thumb_material     // Catch: java.lang.Throwable -> L7d
            if (r4 != r1) goto L76
            int r0 = b.a.c.abc_tint_seek_thumb     // Catch: java.lang.Throwable -> L7d
            goto Ld
        L73:
            int r0 = b.a.c.abc_tint_spinner     // Catch: java.lang.Throwable -> L7d
            goto Ld
        L76:
            if (r0 == 0) goto L7b
            r2.a(r3, r4, r0)     // Catch: java.lang.Throwable -> L7d
        L7b:
            monitor-exit(r2)
            return r0
        L7d:
            r3 = move-exception
            monitor-exit(r2)
            goto L81
        L80:
            throw r3
        L81:
            goto L80
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.j.b(android.content.Context, int):android.content.res.ColorStateList");
    }
}
