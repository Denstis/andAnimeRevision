package androidx.appcompat.app;

import android.R;
import android.app.Activity;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.view.menu.h;
import androidx.appcompat.view.menu.p;
import androidx.appcompat.view.menu.q;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.ViewStubCompat;
import androidx.appcompat.widget.c0;
import androidx.appcompat.widget.q0;
import androidx.appcompat.widget.v0;
import androidx.appcompat.widget.w0;
import androidx.appcompat.widget.y;
import b.a.n.b;
import b.a.n.f;
import b.h.o.a0;
import b.h.o.d;
import b.h.o.o;
import b.h.o.s;
import b.h.o.w;
import b.h.o.x;
import com.google.android.exoplayer2.extractor.MpegAudioHeader;
import com.google.android.gms.ads.AdRequest;
import java.lang.Thread;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes.dex */
class g extends androidx.appcompat.app.f implements h.a, LayoutInflater.Factory2 {
    private static final boolean T;
    private static final int[] U;
    private static boolean V;
    boolean A;
    boolean B;
    boolean C;
    boolean D;
    private boolean E;
    private m[] F;
    private m G;
    private boolean H;
    boolean I;
    private boolean K;
    private k L;
    boolean M;
    int N;
    private boolean P;
    private Rect Q;
    private Rect R;
    private AppCompatViewInflater S;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Context f132c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Window f133d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final Window.Callback f134e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final Window.Callback f135f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final androidx.appcompat.app.e f136g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    androidx.appcompat.app.a f137h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    MenuInflater f138i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private CharSequence f139j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private y f140k;
    private h l;
    private n m;
    b.a.n.b n;
    ActionBarContextView o;
    PopupWindow p;
    Runnable q;
    private boolean t;
    private ViewGroup u;
    private TextView v;
    private View w;
    private boolean x;
    private boolean y;
    boolean z;
    w r = null;
    private boolean s = true;
    private int J = -100;
    private final Runnable O = new b();

    static class a implements Thread.UncaughtExceptionHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Thread.UncaughtExceptionHandler f141a;

        a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.f141a = uncaughtExceptionHandler;
        }

        private boolean a(Throwable th) {
            String message;
            if (!(th instanceof Resources.NotFoundException) || (message = th.getMessage()) == null) {
                return false;
            }
            return message.contains("drawable") || message.contains("Drawable");
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            if (!a(th)) {
                this.f141a.uncaughtException(thread, th);
                return;
            }
            Resources.NotFoundException notFoundException = new Resources.NotFoundException(th.getMessage() + ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.");
            notFoundException.initCause(th.getCause());
            notFoundException.setStackTrace(th.getStackTrace());
            this.f141a.uncaughtException(thread, notFoundException);
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g gVar = g.this;
            if ((gVar.N & 1) != 0) {
                gVar.f(0);
            }
            g gVar2 = g.this;
            if ((gVar2.N & MpegAudioHeader.MAX_FRAME_SIZE_BYTES) != 0) {
                gVar2.f(108);
            }
            g gVar3 = g.this;
            gVar3.M = false;
            gVar3.N = 0;
        }
    }

    class c implements o {
        c() {
        }

        @Override // b.h.o.o
        public a0 onApplyWindowInsets(View view, a0 a0Var) {
            int iE = a0Var.e();
            int iJ = g.this.j(iE);
            if (iE != iJ) {
                a0Var = a0Var.a(a0Var.c(), iJ, a0Var.d(), a0Var.b());
            }
            return s.b(view, a0Var);
        }
    }

    class d implements c0.a {
        d() {
        }

        @Override // androidx.appcompat.widget.c0.a
        public void a(Rect rect) {
            rect.top = g.this.j(rect.top);
        }
    }

    class e implements ContentFrameLayout.a {
        e() {
        }

        @Override // androidx.appcompat.widget.ContentFrameLayout.a
        public void a() {
        }

        @Override // androidx.appcompat.widget.ContentFrameLayout.a
        public void onDetachedFromWindow() {
            g.this.k();
        }
    }

    class f implements Runnable {

        class a extends b.h.o.y {
            a() {
            }

            @Override // b.h.o.x
            public void b(View view) {
                g.this.o.setAlpha(1.0f);
                g.this.r.a((x) null);
                g.this.r = null;
            }

            @Override // b.h.o.y, b.h.o.x
            public void c(View view) {
                g.this.o.setVisibility(0);
            }
        }

        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g gVar = g.this;
            gVar.p.showAtLocation(gVar.o, 55, 0, 0);
            g.this.l();
            if (!g.this.s()) {
                g.this.o.setAlpha(1.0f);
                g.this.o.setVisibility(0);
                return;
            }
            g.this.o.setAlpha(0.0f);
            g gVar2 = g.this;
            w wVarA = s.a(gVar2.o);
            wVarA.a(1.0f);
            gVar2.r = wVarA;
            g.this.r.a(new a());
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.g$g, reason: collision with other inner class name */
    class C0009g extends b.h.o.y {
        C0009g() {
        }

        @Override // b.h.o.x
        public void b(View view) {
            g.this.o.setAlpha(1.0f);
            g.this.r.a((x) null);
            g.this.r = null;
        }

        @Override // b.h.o.y, b.h.o.x
        public void c(View view) {
            g.this.o.setVisibility(0);
            g.this.o.sendAccessibilityEvent(32);
            if (g.this.o.getParent() instanceof View) {
                s.D((View) g.this.o.getParent());
            }
        }
    }

    private final class h implements p.a {
        h() {
        }

        @Override // androidx.appcompat.view.menu.p.a
        public boolean a(androidx.appcompat.view.menu.h hVar) {
            Window.Callback callbackO = g.this.o();
            if (callbackO == null) {
                return true;
            }
            callbackO.onMenuOpened(108, hVar);
            return true;
        }

        @Override // androidx.appcompat.view.menu.p.a
        public void onCloseMenu(androidx.appcompat.view.menu.h hVar, boolean z) {
            g.this.a(hVar);
        }
    }

    class i implements b.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private b.a f150a;

        class a extends b.h.o.y {
            a() {
            }

            @Override // b.h.o.x
            public void b(View view) {
                g.this.o.setVisibility(8);
                g gVar = g.this;
                PopupWindow popupWindow = gVar.p;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (gVar.o.getParent() instanceof View) {
                    s.D((View) g.this.o.getParent());
                }
                g.this.o.removeAllViews();
                g.this.r.a((x) null);
                g.this.r = null;
            }
        }

        public i(b.a aVar) {
            this.f150a = aVar;
        }

        @Override // b.a.n.b.a
        public void a(b.a.n.b bVar) {
            this.f150a.a(bVar);
            g gVar = g.this;
            if (gVar.p != null) {
                gVar.f133d.getDecorView().removeCallbacks(g.this.q);
            }
            g gVar2 = g.this;
            if (gVar2.o != null) {
                gVar2.l();
                g gVar3 = g.this;
                w wVarA = s.a(gVar3.o);
                wVarA.a(0.0f);
                gVar3.r = wVarA;
                g.this.r.a(new a());
            }
            g gVar4 = g.this;
            androidx.appcompat.app.e eVar = gVar4.f136g;
            if (eVar != null) {
                eVar.onSupportActionModeFinished(gVar4.n);
            }
            g.this.n = null;
        }

        @Override // b.a.n.b.a
        public boolean a(b.a.n.b bVar, Menu menu) {
            return this.f150a.a(bVar, menu);
        }

        @Override // b.a.n.b.a
        public boolean a(b.a.n.b bVar, MenuItem menuItem) {
            return this.f150a.a(bVar, menuItem);
        }

        @Override // b.a.n.b.a
        public boolean b(b.a.n.b bVar, Menu menu) {
            return this.f150a.b(bVar, menu);
        }
    }

    class j extends b.a.n.i {
        j(Window.Callback callback) {
            super(callback);
        }

        final ActionMode a(ActionMode.Callback callback) {
            f.a aVar = new f.a(g.this.f132c, callback);
            b.a.n.b bVarA = g.this.a(aVar);
            if (bVarA != null) {
                return aVar.b(bVarA);
            }
            return null;
        }

        @Override // b.a.n.i, android.view.Window.Callback
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return g.this.a(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // b.a.n.i, android.view.Window.Callback
        public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            return super.dispatchKeyShortcutEvent(keyEvent) || g.this.b(keyEvent.getKeyCode(), keyEvent);
        }

        @Override // b.a.n.i, android.view.Window.Callback
        public void onContentChanged() {
        }

        @Override // b.a.n.i, android.view.Window.Callback
        public boolean onCreatePanelMenu(int i2, Menu menu) {
            if (i2 != 0 || (menu instanceof androidx.appcompat.view.menu.h)) {
                return super.onCreatePanelMenu(i2, menu);
            }
            return false;
        }

        @Override // b.a.n.i, android.view.Window.Callback
        public boolean onMenuOpened(int i2, Menu menu) {
            super.onMenuOpened(i2, menu);
            g.this.h(i2);
            return true;
        }

        @Override // b.a.n.i, android.view.Window.Callback
        public void onPanelClosed(int i2, Menu menu) {
            super.onPanelClosed(i2, menu);
            g.this.i(i2);
        }

        @Override // b.a.n.i, android.view.Window.Callback
        public boolean onPreparePanel(int i2, View view, Menu menu) {
            androidx.appcompat.view.menu.h hVar = menu instanceof androidx.appcompat.view.menu.h ? (androidx.appcompat.view.menu.h) menu : null;
            if (i2 == 0 && hVar == null) {
                return false;
            }
            if (hVar != null) {
                hVar.setOverrideVisibleItems(true);
            }
            boolean zOnPreparePanel = super.onPreparePanel(i2, view, menu);
            if (hVar != null) {
                hVar.setOverrideVisibleItems(false);
            }
            return zOnPreparePanel;
        }

        @Override // b.a.n.i, android.view.Window.Callback
        public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i2) {
            androidx.appcompat.view.menu.h hVar;
            m mVarA = g.this.a(0, true);
            if (mVarA == null || (hVar = mVarA.f170j) == null) {
                super.onProvideKeyboardShortcuts(list, menu, i2);
            } else {
                super.onProvideKeyboardShortcuts(list, hVar, i2);
            }
        }

        @Override // b.a.n.i, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            if (Build.VERSION.SDK_INT >= 23) {
                return null;
            }
            return g.this.p() ? a(callback) : super.onWindowStartingActionMode(callback);
        }

        @Override // b.a.n.i, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i2) {
            return (g.this.p() && i2 == 0) ? a(callback) : super.onWindowStartingActionMode(callback, i2);
        }
    }

    final class k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private androidx.appcompat.app.m f154a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f155b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private BroadcastReceiver f156c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private IntentFilter f157d;

        class a extends BroadcastReceiver {
            a() {
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                k.this.b();
            }
        }

        k(androidx.appcompat.app.m mVar) {
            this.f154a = mVar;
            this.f155b = mVar.a();
        }

        void a() {
            BroadcastReceiver broadcastReceiver = this.f156c;
            if (broadcastReceiver != null) {
                g.this.f132c.unregisterReceiver(broadcastReceiver);
                this.f156c = null;
            }
        }

        void b() {
            boolean zA = this.f154a.a();
            if (zA != this.f155b) {
                this.f155b = zA;
                g.this.a();
            }
        }

        int c() {
            this.f155b = this.f154a.a();
            return this.f155b ? 2 : 1;
        }

        void d() {
            a();
            if (this.f156c == null) {
                this.f156c = new a();
            }
            if (this.f157d == null) {
                this.f157d = new IntentFilter();
                this.f157d.addAction("android.intent.action.TIME_SET");
                this.f157d.addAction("android.intent.action.TIMEZONE_CHANGED");
                this.f157d.addAction("android.intent.action.TIME_TICK");
            }
            g.this.f132c.registerReceiver(this.f156c, this.f157d);
        }
    }

    private class l extends ContentFrameLayout {
        public l(Context context) {
            super(context);
        }

        private boolean a(int i2, int i3) {
            return i2 < -5 || i3 < -5 || i2 > getWidth() + 5 || i3 > getHeight() + 5;
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return g.this.a(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0 || !a((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return super.onInterceptTouchEvent(motionEvent);
            }
            g.this.e(0);
            return true;
        }

        @Override // android.view.View
        public void setBackgroundResource(int i2) {
            setBackgroundDrawable(b.a.k.a.a.c(getContext(), i2));
        }
    }

    protected static final class m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f161a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f162b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f163c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f164d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f165e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f166f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        ViewGroup f167g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        View f168h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        View f169i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        androidx.appcompat.view.menu.h f170j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        androidx.appcompat.view.menu.f f171k;
        Context l;
        boolean m;
        boolean n;
        boolean o;
        public boolean p;
        boolean q = false;
        boolean r;
        Bundle s;

        m(int i2) {
            this.f161a = i2;
        }

        q a(p.a aVar) {
            if (this.f170j == null) {
                return null;
            }
            if (this.f171k == null) {
                this.f171k = new androidx.appcompat.view.menu.f(this.l, b.a.g.abc_list_menu_item_layout);
                this.f171k.setCallback(aVar);
                this.f170j.addMenuPresenter(this.f171k);
            }
            return this.f171k.a(this.f167g);
        }

        void a(Context context) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme themeNewTheme = context.getResources().newTheme();
            themeNewTheme.setTo(context.getTheme());
            themeNewTheme.resolveAttribute(b.a.a.actionBarPopupTheme, typedValue, true);
            int i2 = typedValue.resourceId;
            if (i2 != 0) {
                themeNewTheme.applyStyle(i2, true);
            }
            themeNewTheme.resolveAttribute(b.a.a.panelMenuListTheme, typedValue, true);
            int i3 = typedValue.resourceId;
            if (i3 == 0) {
                i3 = b.a.i.Theme_AppCompat_CompactMenu;
            }
            themeNewTheme.applyStyle(i3, true);
            b.a.n.d dVar = new b.a.n.d(context, 0);
            dVar.getTheme().setTo(themeNewTheme);
            this.l = dVar;
            TypedArray typedArrayObtainStyledAttributes = dVar.obtainStyledAttributes(b.a.j.AppCompatTheme);
            this.f162b = typedArrayObtainStyledAttributes.getResourceId(b.a.j.AppCompatTheme_panelBackground, 0);
            this.f166f = typedArrayObtainStyledAttributes.getResourceId(b.a.j.AppCompatTheme_android_windowAnimationStyle, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        void a(androidx.appcompat.view.menu.h hVar) {
            androidx.appcompat.view.menu.f fVar;
            androidx.appcompat.view.menu.h hVar2 = this.f170j;
            if (hVar == hVar2) {
                return;
            }
            if (hVar2 != null) {
                hVar2.removeMenuPresenter(this.f171k);
            }
            this.f170j = hVar;
            if (hVar == null || (fVar = this.f171k) == null) {
                return;
            }
            hVar.addMenuPresenter(fVar);
        }

        public boolean a() {
            if (this.f168h == null) {
                return false;
            }
            return this.f169i != null || this.f171k.a().getCount() > 0;
        }
    }

    private final class n implements p.a {
        n() {
        }

        @Override // androidx.appcompat.view.menu.p.a
        public boolean a(androidx.appcompat.view.menu.h hVar) {
            Window.Callback callbackO;
            if (hVar != null) {
                return true;
            }
            g gVar = g.this;
            if (!gVar.z || (callbackO = gVar.o()) == null || g.this.I) {
                return true;
            }
            callbackO.onMenuOpened(108, hVar);
            return true;
        }

        @Override // androidx.appcompat.view.menu.p.a
        public void onCloseMenu(androidx.appcompat.view.menu.h hVar, boolean z) {
            androidx.appcompat.view.menu.h rootMenu = hVar.getRootMenu();
            boolean z2 = rootMenu != hVar;
            g gVar = g.this;
            if (z2) {
                hVar = rootMenu;
            }
            m mVarA = gVar.a((Menu) hVar);
            if (mVarA != null) {
                if (!z2) {
                    g.this.a(mVarA, z);
                } else {
                    g.this.a(mVarA.f161a, mVarA, rootMenu);
                    g.this.a(mVarA, true);
                }
            }
        }
    }

    static {
        T = Build.VERSION.SDK_INT < 21;
        U = new int[]{R.attr.windowBackground};
        if (!T || V) {
            return;
        }
        Thread.setDefaultUncaughtExceptionHandler(new a(Thread.getDefaultUncaughtExceptionHandler()));
        V = true;
    }

    g(Context context, Window window, androidx.appcompat.app.e eVar) {
        this.f132c = context;
        this.f133d = window;
        this.f136g = eVar;
        this.f134e = this.f133d.getCallback();
        Window.Callback callback = this.f134e;
        if (callback instanceof j) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        this.f135f = new j(callback);
        this.f133d.setCallback(this.f135f);
        q0 q0VarA = q0.a(context, (AttributeSet) null, U);
        Drawable drawableC = q0VarA.c(0);
        if (drawableC != null) {
            this.f133d.setBackgroundDrawable(drawableC);
        }
        q0VarA.a();
    }

    private void A() {
        if (this.t) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    private void a(m mVar, KeyEvent keyEvent) {
        int i2;
        ViewGroup.LayoutParams layoutParams;
        if (mVar.o || this.I) {
            return;
        }
        if (mVar.f161a == 0) {
            if ((this.f132c.getResources().getConfiguration().screenLayout & 15) == 4) {
                return;
            }
        }
        Window.Callback callbackO = o();
        if (callbackO != null && !callbackO.onMenuOpened(mVar.f161a, mVar.f170j)) {
            a(mVar, true);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f132c.getSystemService("window");
        if (windowManager != null && b(mVar, keyEvent)) {
            if (mVar.f167g != null && !mVar.q) {
                View view = mVar.f169i;
                if (view != null && (layoutParams = view.getLayoutParams()) != null && layoutParams.width == -1) {
                    i2 = -1;
                }
                mVar.n = false;
                WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams(i2, -2, mVar.f164d, mVar.f165e, 1002, 8519680, -3);
                layoutParams2.gravity = mVar.f163c;
                layoutParams2.windowAnimations = mVar.f166f;
                windowManager.addView(mVar.f167g, layoutParams2);
                mVar.o = true;
            }
            ViewGroup viewGroup = mVar.f167g;
            if (viewGroup == null) {
                if (!b(mVar) || mVar.f167g == null) {
                    return;
                }
            } else if (mVar.q && viewGroup.getChildCount() > 0) {
                mVar.f167g.removeAllViews();
            }
            if (!a(mVar) || !mVar.a()) {
                return;
            }
            ViewGroup.LayoutParams layoutParams3 = mVar.f168h.getLayoutParams();
            if (layoutParams3 == null) {
                layoutParams3 = new ViewGroup.LayoutParams(-2, -2);
            }
            mVar.f167g.setBackgroundResource(mVar.f162b);
            ViewParent parent = mVar.f168h.getParent();
            if (parent != null && (parent instanceof ViewGroup)) {
                ((ViewGroup) parent).removeView(mVar.f168h);
            }
            mVar.f167g.addView(mVar.f168h, layoutParams3);
            if (!mVar.f168h.hasFocus()) {
                mVar.f168h.requestFocus();
            }
            i2 = -2;
            mVar.n = false;
            WindowManager.LayoutParams layoutParams22 = new WindowManager.LayoutParams(i2, -2, mVar.f164d, mVar.f165e, 1002, 8519680, -3);
            layoutParams22.gravity = mVar.f163c;
            layoutParams22.windowAnimations = mVar.f166f;
            windowManager.addView(mVar.f167g, layoutParams22);
            mVar.o = true;
        }
    }

    private void a(androidx.appcompat.view.menu.h hVar, boolean z) {
        y yVar = this.f140k;
        if (yVar == null || !yVar.c() || (ViewConfiguration.get(this.f132c).hasPermanentMenuKey() && !this.f140k.d())) {
            m mVarA = a(0, true);
            mVarA.q = true;
            a(mVarA, false);
            a(mVarA, (KeyEvent) null);
            return;
        }
        Window.Callback callbackO = o();
        if (this.f140k.a() && z) {
            this.f140k.e();
            if (this.I) {
                return;
            }
            callbackO.onPanelClosed(108, a(0, true).f170j);
            return;
        }
        if (callbackO == null || this.I) {
            return;
        }
        if (this.M && (this.N & 1) != 0) {
            this.f133d.getDecorView().removeCallbacks(this.O);
            this.O.run();
        }
        m mVarA2 = a(0, true);
        androidx.appcompat.view.menu.h hVar2 = mVarA2.f170j;
        if (hVar2 == null || mVarA2.r || !callbackO.onPreparePanel(0, mVarA2.f169i, hVar2)) {
            return;
        }
        callbackO.onMenuOpened(108, mVarA2.f170j);
        this.f140k.f();
    }

    private boolean a(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        View decorView = this.f133d.getDecorView();
        while (viewParent != null) {
            if (viewParent == decorView || !(viewParent instanceof View) || s.y((View) viewParent)) {
                return false;
            }
            viewParent = viewParent.getParent();
        }
        return true;
    }

    private boolean a(m mVar) {
        View view = mVar.f169i;
        if (view != null) {
            mVar.f168h = view;
            return true;
        }
        if (mVar.f170j == null) {
            return false;
        }
        if (this.m == null) {
            this.m = new n();
        }
        mVar.f168h = (View) mVar.a(this.m);
        return mVar.f168h != null;
    }

    private boolean a(m mVar, int i2, KeyEvent keyEvent, int i3) {
        androidx.appcompat.view.menu.h hVar;
        boolean zPerformShortcut = false;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((mVar.m || b(mVar, keyEvent)) && (hVar = mVar.f170j) != null) {
            zPerformShortcut = hVar.performShortcut(i2, keyEvent, i3);
        }
        if (zPerformShortcut && (i3 & 1) == 0 && this.f140k == null) {
            a(mVar, true);
        }
        return zPerformShortcut;
    }

    private boolean b(m mVar) {
        mVar.a(m());
        mVar.f167g = new l(mVar.l);
        mVar.f163c = 81;
        return true;
    }

    private boolean b(m mVar, KeyEvent keyEvent) {
        y yVar;
        y yVar2;
        y yVar3;
        if (this.I) {
            return false;
        }
        if (mVar.m) {
            return true;
        }
        m mVar2 = this.G;
        if (mVar2 != null && mVar2 != mVar) {
            a(mVar2, false);
        }
        Window.Callback callbackO = o();
        if (callbackO != null) {
            mVar.f169i = callbackO.onCreatePanelView(mVar.f161a);
        }
        int i2 = mVar.f161a;
        boolean z = i2 == 0 || i2 == 108;
        if (z && (yVar3 = this.f140k) != null) {
            yVar3.b();
        }
        if (mVar.f169i == null && (!z || !(r() instanceof androidx.appcompat.app.k))) {
            if (mVar.f170j == null || mVar.r) {
                if (mVar.f170j == null && (!c(mVar) || mVar.f170j == null)) {
                    return false;
                }
                if (z && this.f140k != null) {
                    if (this.l == null) {
                        this.l = new h();
                    }
                    this.f140k.a(mVar.f170j, this.l);
                }
                mVar.f170j.stopDispatchingItemsChanged();
                if (!callbackO.onCreatePanelMenu(mVar.f161a, mVar.f170j)) {
                    mVar.a((androidx.appcompat.view.menu.h) null);
                    if (z && (yVar = this.f140k) != null) {
                        yVar.a(null, this.l);
                    }
                    return false;
                }
                mVar.r = false;
            }
            mVar.f170j.stopDispatchingItemsChanged();
            Bundle bundle = mVar.s;
            if (bundle != null) {
                mVar.f170j.restoreActionViewStates(bundle);
                mVar.s = null;
            }
            if (!callbackO.onPreparePanel(0, mVar.f169i, mVar.f170j)) {
                if (z && (yVar2 = this.f140k) != null) {
                    yVar2.a(null, this.l);
                }
                mVar.f170j.startDispatchingItemsChanged();
                return false;
            }
            mVar.p = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            mVar.f170j.setQwertyMode(mVar.p);
            mVar.f170j.startDispatchingItemsChanged();
        }
        mVar.m = true;
        mVar.n = false;
        this.G = mVar;
        return true;
    }

    private boolean c(m mVar) {
        Context context = this.f132c;
        int i2 = mVar.f161a;
        if ((i2 == 0 || i2 == 108) && this.f140k != null) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme theme = context.getTheme();
            theme.resolveAttribute(b.a.a.actionBarTheme, typedValue, true);
            Resources.Theme themeNewTheme = null;
            if (typedValue.resourceId != 0) {
                themeNewTheme = context.getResources().newTheme();
                themeNewTheme.setTo(theme);
                themeNewTheme.applyStyle(typedValue.resourceId, true);
                themeNewTheme.resolveAttribute(b.a.a.actionBarWidgetTheme, typedValue, true);
            } else {
                theme.resolveAttribute(b.a.a.actionBarWidgetTheme, typedValue, true);
            }
            if (typedValue.resourceId != 0) {
                if (themeNewTheme == null) {
                    themeNewTheme = context.getResources().newTheme();
                    themeNewTheme.setTo(theme);
                }
                themeNewTheme.applyStyle(typedValue.resourceId, true);
            }
            if (themeNewTheme != null) {
                b.a.n.d dVar = new b.a.n.d(context, 0);
                dVar.getTheme().setTo(themeNewTheme);
                context = dVar;
            }
        }
        androidx.appcompat.view.menu.h hVar = new androidx.appcompat.view.menu.h(context);
        hVar.setCallback(this);
        mVar.a(hVar);
        return true;
    }

    private boolean d(int i2, KeyEvent keyEvent) {
        if (keyEvent.getRepeatCount() != 0) {
            return false;
        }
        m mVarA = a(i2, true);
        if (mVarA.o) {
            return false;
        }
        return b(mVarA, keyEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0063  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean e(int r4, android.view.KeyEvent r5) {
        /*
            r3 = this;
            b.a.n.b r0 = r3.n
            r1 = 0
            if (r0 == 0) goto L6
            return r1
        L6:
            r0 = 1
            androidx.appcompat.app.g$m r2 = r3.a(r4, r0)
            if (r4 != 0) goto L43
            androidx.appcompat.widget.y r4 = r3.f140k
            if (r4 == 0) goto L43
            boolean r4 = r4.c()
            if (r4 == 0) goto L43
            android.content.Context r4 = r3.f132c
            android.view.ViewConfiguration r4 = android.view.ViewConfiguration.get(r4)
            boolean r4 = r4.hasPermanentMenuKey()
            if (r4 != 0) goto L43
            androidx.appcompat.widget.y r4 = r3.f140k
            boolean r4 = r4.a()
            if (r4 != 0) goto L3c
            boolean r4 = r3.I
            if (r4 != 0) goto L63
            boolean r4 = r3.b(r2, r5)
            if (r4 == 0) goto L63
            androidx.appcompat.widget.y r4 = r3.f140k
            boolean r4 = r4.f()
            goto L6a
        L3c:
            androidx.appcompat.widget.y r4 = r3.f140k
            boolean r4 = r4.e()
            goto L6a
        L43:
            boolean r4 = r2.o
            if (r4 != 0) goto L65
            boolean r4 = r2.n
            if (r4 == 0) goto L4c
            goto L65
        L4c:
            boolean r4 = r2.m
            if (r4 == 0) goto L63
            boolean r4 = r2.r
            if (r4 == 0) goto L5b
            r2.m = r1
            boolean r4 = r3.b(r2, r5)
            goto L5c
        L5b:
            r4 = 1
        L5c:
            if (r4 == 0) goto L63
            r3.a(r2, r5)
            r4 = 1
            goto L6a
        L63:
            r4 = 0
            goto L6a
        L65:
            boolean r4 = r2.o
            r3.a(r2, r0)
        L6a:
            if (r4 == 0) goto L83
            android.content.Context r5 = r3.f132c
            java.lang.String r0 = "audio"
            java.lang.Object r5 = r5.getSystemService(r0)
            android.media.AudioManager r5 = (android.media.AudioManager) r5
            if (r5 == 0) goto L7c
            r5.playSoundEffect(r1)
            goto L83
        L7c:
            java.lang.String r5 = "AppCompatDelegate"
            java.lang.String r0 = "Couldn't get audio manager"
            android.util.Log.w(r5, r0)
        L83:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.g.e(int, android.view.KeyEvent):boolean");
    }

    private void k(int i2) {
        this.N = (1 << i2) | this.N;
        if (this.M) {
            return;
        }
        s.a(this.f133d.getDecorView(), this.O);
        this.M = true;
    }

    private int l(int i2) {
        if (i2 == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            return 108;
        }
        if (i2 != 9) {
            return i2;
        }
        Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
        return 109;
    }

    private boolean m(int i2) {
        Resources resources = this.f132c.getResources();
        Configuration configuration = resources.getConfiguration();
        int i3 = configuration.uiMode & 48;
        int i4 = i2 == 2 ? 32 : 16;
        if (i3 == i4) {
            return false;
        }
        if (z()) {
            ((Activity) this.f132c).recreate();
            return true;
        }
        Configuration configuration2 = new Configuration(configuration);
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        configuration2.uiMode = i4 | (configuration2.uiMode & (-49));
        resources.updateConfiguration(configuration2, displayMetrics);
        if (Build.VERSION.SDK_INT >= 26) {
            return true;
        }
        androidx.appcompat.app.j.a(resources);
        return true;
    }

    private void t() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.u.findViewById(R.id.content);
        View decorView = this.f133d.getDecorView();
        contentFrameLayout.a(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray typedArrayObtainStyledAttributes = this.f132c.obtainStyledAttributes(b.a.j.AppCompatTheme);
        typedArrayObtainStyledAttributes.getValue(b.a.j.AppCompatTheme_windowMinWidthMajor, contentFrameLayout.getMinWidthMajor());
        typedArrayObtainStyledAttributes.getValue(b.a.j.AppCompatTheme_windowMinWidthMinor, contentFrameLayout.getMinWidthMinor());
        if (typedArrayObtainStyledAttributes.hasValue(b.a.j.AppCompatTheme_windowFixedWidthMajor)) {
            typedArrayObtainStyledAttributes.getValue(b.a.j.AppCompatTheme_windowFixedWidthMajor, contentFrameLayout.getFixedWidthMajor());
        }
        if (typedArrayObtainStyledAttributes.hasValue(b.a.j.AppCompatTheme_windowFixedWidthMinor)) {
            typedArrayObtainStyledAttributes.getValue(b.a.j.AppCompatTheme_windowFixedWidthMinor, contentFrameLayout.getFixedWidthMinor());
        }
        if (typedArrayObtainStyledAttributes.hasValue(b.a.j.AppCompatTheme_windowFixedHeightMajor)) {
            typedArrayObtainStyledAttributes.getValue(b.a.j.AppCompatTheme_windowFixedHeightMajor, contentFrameLayout.getFixedHeightMajor());
        }
        if (typedArrayObtainStyledAttributes.hasValue(b.a.j.AppCompatTheme_windowFixedHeightMinor)) {
            typedArrayObtainStyledAttributes.getValue(b.a.j.AppCompatTheme_windowFixedHeightMinor, contentFrameLayout.getFixedHeightMinor());
        }
        typedArrayObtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v7, types: [android.view.View, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r0v8, types: [android.view.View, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r2v12, types: [android.view.Window] */
    private ViewGroup u() {
        ?? r0;
        TypedArray typedArrayObtainStyledAttributes = this.f132c.obtainStyledAttributes(b.a.j.AppCompatTheme);
        if (!typedArrayObtainStyledAttributes.hasValue(b.a.j.AppCompatTheme_windowActionBar)) {
            typedArrayObtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (typedArrayObtainStyledAttributes.getBoolean(b.a.j.AppCompatTheme_windowNoTitle, false)) {
            b(1);
        } else if (typedArrayObtainStyledAttributes.getBoolean(b.a.j.AppCompatTheme_windowActionBar, false)) {
            b(108);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(b.a.j.AppCompatTheme_windowActionBarOverlay, false)) {
            b(109);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(b.a.j.AppCompatTheme_windowActionModeOverlay, false)) {
            b(10);
        }
        this.C = typedArrayObtainStyledAttributes.getBoolean(b.a.j.AppCompatTheme_android_windowIsFloating, false);
        typedArrayObtainStyledAttributes.recycle();
        this.f133d.getDecorView();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f132c);
        if (this.D) {
            ?? r02 = (ViewGroup) layoutInflaterFrom.inflate(this.B ? b.a.g.abc_screen_simple_overlay_action_mode : b.a.g.abc_screen_simple, (ViewGroup) null);
            if (Build.VERSION.SDK_INT >= 21) {
                s.a((View) r02, new c());
                r0 = r02;
            } else {
                ((c0) r02).setOnFitSystemWindowsListener(new d());
                r0 = r02;
            }
        } else if (this.C) {
            ViewGroup viewGroup = (ViewGroup) layoutInflaterFrom.inflate(b.a.g.abc_dialog_title_material, (ViewGroup) null);
            this.A = false;
            this.z = false;
            r0 = viewGroup;
        } else if (this.z) {
            TypedValue typedValue = new TypedValue();
            this.f132c.getTheme().resolveAttribute(b.a.a.actionBarTheme, typedValue, true);
            int i2 = typedValue.resourceId;
            ViewGroup viewGroup2 = (ViewGroup) LayoutInflater.from(i2 != 0 ? new b.a.n.d(this.f132c, i2) : this.f132c).inflate(b.a.g.abc_screen_toolbar, (ViewGroup) null);
            this.f140k = (y) viewGroup2.findViewById(b.a.f.decor_content_parent);
            this.f140k.setWindowCallback(o());
            if (this.A) {
                this.f140k.a(109);
            }
            if (this.x) {
                this.f140k.a(2);
            }
            r0 = viewGroup2;
            if (this.y) {
                this.f140k.a(5);
                r0 = viewGroup2;
            }
        } else {
            r0 = 0;
        }
        if (r0 == 0) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.z + ", windowActionBarOverlay: " + this.A + ", android:windowIsFloating: " + this.C + ", windowActionModeOverlay: " + this.B + ", windowNoTitle: " + this.D + " }");
        }
        if (this.f140k == null) {
            this.v = (TextView) r0.findViewById(b.a.f.title);
        }
        w0.b(r0);
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) r0.findViewById(b.a.f.action_bar_activity_content);
        ViewGroup viewGroup3 = (ViewGroup) this.f133d.findViewById(R.id.content);
        if (viewGroup3 != null) {
            while (viewGroup3.getChildCount() > 0) {
                View childAt = viewGroup3.getChildAt(0);
                viewGroup3.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup3.setId(-1);
            contentFrameLayout.setId(R.id.content);
            if (viewGroup3 instanceof FrameLayout) {
                ((FrameLayout) viewGroup3).setForeground(null);
            }
        }
        this.f133d.setContentView(r0);
        contentFrameLayout.setAttachListener(new e());
        return r0;
    }

    private void v() {
        if (this.L == null) {
            this.L = new k(androidx.appcompat.app.m.a(this.f132c));
        }
    }

    private void w() {
        if (this.t) {
            return;
        }
        this.u = u();
        CharSequence charSequenceN = n();
        if (!TextUtils.isEmpty(charSequenceN)) {
            y yVar = this.f140k;
            if (yVar != null) {
                yVar.setWindowTitle(charSequenceN);
            } else if (r() != null) {
                r().b(charSequenceN);
            } else {
                TextView textView = this.v;
                if (textView != null) {
                    textView.setText(charSequenceN);
                }
            }
        }
        t();
        a(this.u);
        this.t = true;
        m mVarA = a(0, false);
        if (this.I) {
            return;
        }
        if (mVarA == null || mVarA.f170j == null) {
            k(108);
        }
    }

    private int x() {
        int i2 = this.J;
        return i2 != -100 ? i2 : androidx.appcompat.app.f.j();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void y() {
        /*
            r3 = this;
            r3.w()
            boolean r0 = r3.z
            if (r0 == 0) goto L33
            androidx.appcompat.app.a r0 = r3.f137h
            if (r0 == 0) goto Lc
            goto L33
        Lc:
            android.view.Window$Callback r0 = r3.f134e
            boolean r1 = r0 instanceof android.app.Activity
            if (r1 == 0) goto L1e
            androidx.appcompat.app.n r1 = new androidx.appcompat.app.n
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r2 = r3.A
            r1.<init>(r0, r2)
        L1b:
            r3.f137h = r1
            goto L2a
        L1e:
            boolean r1 = r0 instanceof android.app.Dialog
            if (r1 == 0) goto L2a
            androidx.appcompat.app.n r1 = new androidx.appcompat.app.n
            android.app.Dialog r0 = (android.app.Dialog) r0
            r1.<init>(r0)
            goto L1b
        L2a:
            androidx.appcompat.app.a r0 = r3.f137h
            if (r0 == 0) goto L33
            boolean r1 = r3.P
            r0.c(r1)
        L33:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.g.y():void");
    }

    private boolean z() {
        if (this.K) {
            Context context = this.f132c;
            if (context instanceof Activity) {
                try {
                    return (context.getPackageManager().getActivityInfo(new ComponentName(this.f132c, this.f132c.getClass()), 0).configChanges & AdRequest.MAX_CONTENT_URL_LENGTH) == 0;
                } catch (PackageManager.NameNotFoundException e2) {
                    Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", e2);
                    return true;
                }
            }
        }
        return false;
    }

    @Override // androidx.appcompat.app.f
    public <T extends View> T a(int i2) {
        w();
        return (T) this.f133d.findViewById(i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View a(View view, String str, Context context, AttributeSet attributeSet) {
        boolean z;
        AppCompatViewInflater appCompatViewInflater;
        boolean zA = false;
        if (this.S == null) {
            String string = this.f132c.obtainStyledAttributes(b.a.j.AppCompatTheme).getString(b.a.j.AppCompatTheme_viewInflaterClass);
            if (string == null || AppCompatViewInflater.class.getName().equals(string)) {
                appCompatViewInflater = new AppCompatViewInflater();
            } else {
                try {
                    this.S = (AppCompatViewInflater) Class.forName(string).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Throwable th) {
                    Log.i("AppCompatDelegate", "Failed to instantiate custom view inflater " + string + ". Falling back to default.", th);
                    appCompatViewInflater = new AppCompatViewInflater();
                    this.S = appCompatViewInflater;
                }
            }
            this.S = appCompatViewInflater;
        }
        if (T) {
            if (!(attributeSet instanceof XmlPullParser)) {
                zA = a((ViewParent) view);
            } else if (((XmlPullParser) attributeSet).getDepth() > 1) {
                zA = true;
            }
            z = zA;
        } else {
            z = false;
        }
        return this.S.createView(view, str, context, attributeSet, z, T, true, v0.b());
    }

    protected m a(int i2, boolean z) {
        m[] mVarArr = this.F;
        if (mVarArr == null || mVarArr.length <= i2) {
            m[] mVarArr2 = new m[i2 + 1];
            if (mVarArr != null) {
                System.arraycopy(mVarArr, 0, mVarArr2, 0, mVarArr.length);
            }
            this.F = mVarArr2;
            mVarArr = mVarArr2;
        }
        m mVar = mVarArr[i2];
        if (mVar != null) {
            return mVar;
        }
        m mVar2 = new m(i2);
        mVarArr[i2] = mVar2;
        return mVar2;
    }

    m a(Menu menu) {
        m[] mVarArr = this.F;
        int length = mVarArr != null ? mVarArr.length : 0;
        for (int i2 = 0; i2 < length; i2++) {
            m mVar = mVarArr[i2];
            if (mVar != null && mVar.f170j == menu) {
                return mVar;
            }
        }
        return null;
    }

    public b.a.n.b a(b.a aVar) {
        androidx.appcompat.app.e eVar;
        if (aVar == null) {
            throw new IllegalArgumentException("ActionMode callback can not be null.");
        }
        b.a.n.b bVar = this.n;
        if (bVar != null) {
            bVar.a();
        }
        i iVar = new i(aVar);
        androidx.appcompat.app.a aVarC = c();
        if (aVarC != null) {
            this.n = aVarC.a(iVar);
            b.a.n.b bVar2 = this.n;
            if (bVar2 != null && (eVar = this.f136g) != null) {
                eVar.onSupportActionModeStarted(bVar2);
            }
        }
        if (this.n == null) {
            this.n = b(iVar);
        }
        return this.n;
    }

    void a(int i2, m mVar, Menu menu) {
        if (menu == null) {
            if (mVar == null && i2 >= 0) {
                m[] mVarArr = this.F;
                if (i2 < mVarArr.length) {
                    mVar = mVarArr[i2];
                }
            }
            if (mVar != null) {
                menu = mVar.f170j;
            }
        }
        if ((mVar == null || mVar.o) && !this.I) {
            this.f134e.onPanelClosed(i2, menu);
        }
    }

    @Override // androidx.appcompat.app.f
    public void a(Configuration configuration) {
        androidx.appcompat.app.a aVarC;
        if (this.z && this.t && (aVarC = c()) != null) {
            aVarC.a(configuration);
        }
        androidx.appcompat.widget.j.a().a(this.f132c);
        a();
    }

    @Override // androidx.appcompat.app.f
    public void a(Bundle bundle) {
        Window.Callback callback = this.f134e;
        if (callback instanceof Activity) {
            String strB = null;
            try {
                strB = androidx.core.app.f.b((Activity) callback);
            } catch (IllegalArgumentException unused) {
            }
            if (strB != null) {
                androidx.appcompat.app.a aVarR = r();
                if (aVarR == null) {
                    this.P = true;
                } else {
                    aVarR.c(true);
                }
            }
        }
        if (bundle == null || this.J != -100) {
            return;
        }
        this.J = bundle.getInt("appcompat:local_night_mode", -100);
    }

    @Override // androidx.appcompat.app.f
    public void a(View view) {
        w();
        ViewGroup viewGroup = (ViewGroup) this.u.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f134e.onContentChanged();
    }

    @Override // androidx.appcompat.app.f
    public void a(View view, ViewGroup.LayoutParams layoutParams) {
        w();
        ((ViewGroup) this.u.findViewById(R.id.content)).addView(view, layoutParams);
        this.f134e.onContentChanged();
    }

    void a(ViewGroup viewGroup) {
    }

    void a(m mVar, boolean z) {
        ViewGroup viewGroup;
        y yVar;
        if (z && mVar.f161a == 0 && (yVar = this.f140k) != null && yVar.a()) {
            a(mVar.f170j);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f132c.getSystemService("window");
        if (windowManager != null && mVar.o && (viewGroup = mVar.f167g) != null) {
            windowManager.removeView(viewGroup);
            if (z) {
                a(mVar.f161a, mVar, null);
            }
        }
        mVar.m = false;
        mVar.n = false;
        mVar.o = false;
        mVar.f168h = null;
        mVar.q = true;
        if (this.G == mVar) {
            this.G = null;
        }
    }

    void a(androidx.appcompat.view.menu.h hVar) {
        if (this.E) {
            return;
        }
        this.E = true;
        this.f140k.g();
        Window.Callback callbackO = o();
        if (callbackO != null && !this.I) {
            callbackO.onPanelClosed(108, hVar);
        }
        this.E = false;
    }

    @Override // androidx.appcompat.app.f
    public void a(Toolbar toolbar) {
        Window window;
        Window.Callback callbackL;
        if (this.f134e instanceof Activity) {
            androidx.appcompat.app.a aVarC = c();
            if (aVarC instanceof androidx.appcompat.app.n) {
                throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
            }
            this.f138i = null;
            if (aVarC != null) {
                aVarC.j();
            }
            if (toolbar != null) {
                androidx.appcompat.app.k kVar = new androidx.appcompat.app.k(toolbar, ((Activity) this.f134e).getTitle(), this.f135f);
                this.f137h = kVar;
                window = this.f133d;
                callbackL = kVar.l();
            } else {
                this.f137h = null;
                window = this.f133d;
                callbackL = this.f135f;
            }
            window.setCallback(callbackL);
            e();
        }
    }

    @Override // androidx.appcompat.app.f
    public final void a(CharSequence charSequence) {
        this.f139j = charSequence;
        y yVar = this.f140k;
        if (yVar != null) {
            yVar.setWindowTitle(charSequence);
            return;
        }
        if (r() != null) {
            r().b(charSequence);
            return;
        }
        TextView textView = this.v;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    @Override // androidx.appcompat.app.f
    public boolean a() {
        int iX = x();
        int iG = g(iX);
        boolean zM = iG != -1 ? m(iG) : false;
        if (iX == 0) {
            v();
            this.L.d();
        }
        this.K = true;
        return zM;
    }

    boolean a(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            this.H = (keyEvent.getFlags() & 128) != 0;
        } else if (i2 == 82) {
            d(0, keyEvent);
            return true;
        }
        return false;
    }

    boolean a(KeyEvent keyEvent) {
        View decorView;
        Window.Callback callback = this.f134e;
        if (((callback instanceof d.a) || (callback instanceof androidx.appcompat.app.h)) && (decorView = this.f133d.getDecorView()) != null && b.h.o.d.a(decorView, keyEvent)) {
            return true;
        }
        if (keyEvent.getKeyCode() == 82 && this.f134e.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        return keyEvent.getAction() == 0 ? a(keyCode, keyEvent) : c(keyCode, keyEvent);
    }

    @Override // androidx.appcompat.app.f
    public MenuInflater b() {
        if (this.f138i == null) {
            y();
            androidx.appcompat.app.a aVar = this.f137h;
            this.f138i = new b.a.n.g(aVar != null ? aVar.h() : this.f132c);
        }
        return this.f138i;
    }

    b.a.n.b b(b.a aVar) {
        b.a.n.b bVarOnWindowStartingSupportActionMode;
        Context dVar;
        androidx.appcompat.app.e eVar;
        l();
        b.a.n.b bVar = this.n;
        if (bVar != null) {
            bVar.a();
        }
        if (!(aVar instanceof i)) {
            aVar = new i(aVar);
        }
        androidx.appcompat.app.e eVar2 = this.f136g;
        if (eVar2 == null || this.I) {
            bVarOnWindowStartingSupportActionMode = null;
        } else {
            try {
                bVarOnWindowStartingSupportActionMode = eVar2.onWindowStartingSupportActionMode(aVar);
            } catch (AbstractMethodError unused) {
                bVarOnWindowStartingSupportActionMode = null;
            }
        }
        if (bVarOnWindowStartingSupportActionMode != null) {
            this.n = bVarOnWindowStartingSupportActionMode;
        } else {
            if (this.o == null) {
                if (this.C) {
                    TypedValue typedValue = new TypedValue();
                    Resources.Theme theme = this.f132c.getTheme();
                    theme.resolveAttribute(b.a.a.actionBarTheme, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        Resources.Theme themeNewTheme = this.f132c.getResources().newTheme();
                        themeNewTheme.setTo(theme);
                        themeNewTheme.applyStyle(typedValue.resourceId, true);
                        dVar = new b.a.n.d(this.f132c, 0);
                        dVar.getTheme().setTo(themeNewTheme);
                    } else {
                        dVar = this.f132c;
                    }
                    this.o = new ActionBarContextView(dVar);
                    this.p = new PopupWindow(dVar, (AttributeSet) null, b.a.a.actionModePopupWindowStyle);
                    androidx.core.widget.h.a(this.p, 2);
                    this.p.setContentView(this.o);
                    this.p.setWidth(-1);
                    dVar.getTheme().resolveAttribute(b.a.a.actionBarSize, typedValue, true);
                    this.o.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, dVar.getResources().getDisplayMetrics()));
                    this.p.setHeight(-2);
                    this.q = new f();
                } else {
                    ViewStubCompat viewStubCompat = (ViewStubCompat) this.u.findViewById(b.a.f.action_mode_bar_stub);
                    if (viewStubCompat != null) {
                        viewStubCompat.setLayoutInflater(LayoutInflater.from(m()));
                        this.o = (ActionBarContextView) viewStubCompat.a();
                    }
                }
            }
            if (this.o != null) {
                l();
                this.o.c();
                b.a.n.e eVar3 = new b.a.n.e(this.o.getContext(), this.o, aVar, this.p == null);
                if (aVar.a(eVar3, eVar3.c())) {
                    eVar3.i();
                    this.o.a(eVar3);
                    this.n = eVar3;
                    if (s()) {
                        this.o.setAlpha(0.0f);
                        w wVarA = s.a(this.o);
                        wVarA.a(1.0f);
                        this.r = wVarA;
                        this.r.a(new C0009g());
                    } else {
                        this.o.setAlpha(1.0f);
                        this.o.setVisibility(0);
                        this.o.sendAccessibilityEvent(32);
                        if (this.o.getParent() instanceof View) {
                            s.D((View) this.o.getParent());
                        }
                    }
                    if (this.p != null) {
                        this.f133d.getDecorView().post(this.q);
                    }
                } else {
                    this.n = null;
                }
            }
        }
        b.a.n.b bVar2 = this.n;
        if (bVar2 != null && (eVar = this.f136g) != null) {
            eVar.onSupportActionModeStarted(bVar2);
        }
        return this.n;
    }

    @Override // androidx.appcompat.app.f
    public void b(Bundle bundle) {
        w();
    }

    @Override // androidx.appcompat.app.f
    public void b(View view, ViewGroup.LayoutParams layoutParams) {
        w();
        ViewGroup viewGroup = (ViewGroup) this.u.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f134e.onContentChanged();
    }

    @Override // androidx.appcompat.app.f
    public boolean b(int i2) {
        int iL = l(i2);
        if (this.D && iL == 108) {
            return false;
        }
        if (this.z && iL == 1) {
            this.z = false;
        }
        if (iL == 1) {
            A();
            this.D = true;
            return true;
        }
        if (iL == 2) {
            A();
            this.x = true;
            return true;
        }
        if (iL == 5) {
            A();
            this.y = true;
            return true;
        }
        if (iL == 10) {
            A();
            this.B = true;
            return true;
        }
        if (iL == 108) {
            A();
            this.z = true;
            return true;
        }
        if (iL != 109) {
            return this.f133d.requestFeature(iL);
        }
        A();
        this.A = true;
        return true;
    }

    boolean b(int i2, KeyEvent keyEvent) {
        androidx.appcompat.app.a aVarC = c();
        if (aVarC != null && aVarC.a(i2, keyEvent)) {
            return true;
        }
        m mVar = this.G;
        if (mVar != null && a(mVar, keyEvent.getKeyCode(), keyEvent, 1)) {
            m mVar2 = this.G;
            if (mVar2 != null) {
                mVar2.n = true;
            }
            return true;
        }
        if (this.G == null) {
            m mVarA = a(0, true);
            b(mVarA, keyEvent);
            boolean zA = a(mVarA, keyEvent.getKeyCode(), keyEvent, 1);
            mVarA.m = false;
            if (zA) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.app.f
    public androidx.appcompat.app.a c() {
        y();
        return this.f137h;
    }

    @Override // androidx.appcompat.app.f
    public void c(int i2) {
        w();
        ViewGroup viewGroup = (ViewGroup) this.u.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f132c).inflate(i2, viewGroup);
        this.f134e.onContentChanged();
    }

    @Override // androidx.appcompat.app.f
    public void c(Bundle bundle) {
        int i2 = this.J;
        if (i2 != -100) {
            bundle.putInt("appcompat:local_night_mode", i2);
        }
    }

    boolean c(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            boolean z = this.H;
            this.H = false;
            m mVarA = a(0, false);
            if (mVarA != null && mVarA.o) {
                if (!z) {
                    a(mVarA, true);
                }
                return true;
            }
            if (q()) {
                return true;
            }
        } else if (i2 == 82) {
            e(0, keyEvent);
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.app.f
    public void d() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f132c);
        if (layoutInflaterFrom.getFactory() == null) {
            b.h.o.e.b(layoutInflaterFrom, this);
        } else {
            if (layoutInflaterFrom.getFactory2() instanceof g) {
                return;
            }
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    @Override // androidx.appcompat.app.f
    public void e() {
        androidx.appcompat.app.a aVarC = c();
        if (aVarC == null || !aVarC.i()) {
            k(0);
        }
    }

    void e(int i2) {
        a(a(i2, true), true);
    }

    @Override // androidx.appcompat.app.f
    public void f() {
        if (this.M) {
            this.f133d.getDecorView().removeCallbacks(this.O);
        }
        this.I = true;
        androidx.appcompat.app.a aVar = this.f137h;
        if (aVar != null) {
            aVar.j();
        }
        k kVar = this.L;
        if (kVar != null) {
            kVar.a();
        }
    }

    void f(int i2) {
        m mVarA;
        m mVarA2 = a(i2, true);
        if (mVarA2.f170j != null) {
            Bundle bundle = new Bundle();
            mVarA2.f170j.saveActionViewStates(bundle);
            if (bundle.size() > 0) {
                mVarA2.s = bundle;
            }
            mVarA2.f170j.stopDispatchingItemsChanged();
            mVarA2.f170j.clear();
        }
        mVarA2.r = true;
        mVarA2.q = true;
        if ((i2 != 108 && i2 != 0) || this.f140k == null || (mVarA = a(0, false)) == null) {
            return;
        }
        mVarA.m = false;
        b(mVarA, (KeyEvent) null);
    }

    int g(int i2) {
        if (i2 == -100) {
            return -1;
        }
        if (i2 != 0) {
            return i2;
        }
        if (Build.VERSION.SDK_INT >= 23 && ((UiModeManager) this.f132c.getSystemService(UiModeManager.class)).getNightMode() == 0) {
            return -1;
        }
        v();
        return this.L.c();
    }

    @Override // androidx.appcompat.app.f
    public void g() {
        androidx.appcompat.app.a aVarC = c();
        if (aVarC != null) {
            aVarC.f(true);
        }
    }

    @Override // androidx.appcompat.app.f
    public void h() {
        a();
    }

    void h(int i2) {
        androidx.appcompat.app.a aVarC;
        if (i2 != 108 || (aVarC = c()) == null) {
            return;
        }
        aVarC.b(true);
    }

    @Override // androidx.appcompat.app.f
    public void i() {
        androidx.appcompat.app.a aVarC = c();
        if (aVarC != null) {
            aVarC.f(false);
        }
        k kVar = this.L;
        if (kVar != null) {
            kVar.a();
        }
    }

    void i(int i2) {
        if (i2 == 108) {
            androidx.appcompat.app.a aVarC = c();
            if (aVarC != null) {
                aVarC.b(false);
                return;
            }
            return;
        }
        if (i2 == 0) {
            m mVarA = a(i2, true);
            if (mVarA.o) {
                a(mVarA, false);
            }
        }
    }

    int j(int i2) {
        boolean z;
        boolean z2;
        ActionBarContextView actionBarContextView = this.o;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.o.getLayoutParams();
            if (this.o.isShown()) {
                if (this.Q == null) {
                    this.Q = new Rect();
                    this.R = new Rect();
                }
                Rect rect = this.Q;
                Rect rect2 = this.R;
                rect.set(0, i2, 0, 0);
                w0.a(this.u, rect, rect2);
                if (marginLayoutParams.topMargin != (rect2.top == 0 ? i2 : 0)) {
                    marginLayoutParams.topMargin = i2;
                    View view = this.w;
                    if (view == null) {
                        this.w = new View(this.f132c);
                        this.w.setBackgroundColor(this.f132c.getResources().getColor(b.a.c.abc_input_method_navigation_guard));
                        this.u.addView(this.w, -1, new ViewGroup.LayoutParams(-1, i2));
                    } else {
                        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                        if (layoutParams.height != i2) {
                            layoutParams.height = i2;
                            this.w.setLayoutParams(layoutParams);
                        }
                    }
                    z2 = true;
                } else {
                    z2 = false;
                }
                z = this.w != null;
                if (!this.B && z) {
                    i2 = 0;
                }
            } else {
                if (marginLayoutParams.topMargin != 0) {
                    marginLayoutParams.topMargin = 0;
                    z2 = true;
                } else {
                    z2 = false;
                }
                z = false;
            }
            if (z2) {
                this.o.setLayoutParams(marginLayoutParams);
            }
        }
        View view2 = this.w;
        if (view2 != null) {
            view2.setVisibility(z ? 0 : 8);
        }
        return i2;
    }

    void k() {
        androidx.appcompat.view.menu.h hVar;
        y yVar = this.f140k;
        if (yVar != null) {
            yVar.g();
        }
        if (this.p != null) {
            this.f133d.getDecorView().removeCallbacks(this.q);
            if (this.p.isShowing()) {
                try {
                    this.p.dismiss();
                } catch (IllegalArgumentException unused) {
                }
            }
            this.p = null;
        }
        l();
        m mVarA = a(0, false);
        if (mVarA == null || (hVar = mVarA.f170j) == null) {
            return;
        }
        hVar.close();
    }

    void l() {
        w wVar = this.r;
        if (wVar != null) {
            wVar.a();
        }
    }

    final Context m() {
        androidx.appcompat.app.a aVarC = c();
        Context contextH = aVarC != null ? aVarC.h() : null;
        return contextH == null ? this.f132c : contextH;
    }

    final CharSequence n() {
        Window.Callback callback = this.f134e;
        return callback instanceof Activity ? ((Activity) callback).getTitle() : this.f139j;
    }

    final Window.Callback o() {
        return this.f133d.getCallback();
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return a(view, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // androidx.appcompat.view.menu.h.a
    public boolean onMenuItemSelected(androidx.appcompat.view.menu.h hVar, MenuItem menuItem) {
        m mVarA;
        Window.Callback callbackO = o();
        if (callbackO == null || this.I || (mVarA = a((Menu) hVar.getRootMenu())) == null) {
            return false;
        }
        return callbackO.onMenuItemSelected(mVarA.f161a, menuItem);
    }

    @Override // androidx.appcompat.view.menu.h.a
    public void onMenuModeChange(androidx.appcompat.view.menu.h hVar) {
        a(hVar, true);
    }

    public boolean p() {
        return this.s;
    }

    boolean q() {
        b.a.n.b bVar = this.n;
        if (bVar != null) {
            bVar.a();
            return true;
        }
        androidx.appcompat.app.a aVarC = c();
        return aVarC != null && aVarC.f();
    }

    final androidx.appcompat.app.a r() {
        return this.f137h;
    }

    final boolean s() {
        ViewGroup viewGroup;
        return this.t && (viewGroup = this.u) != null && s.z(viewGroup);
    }
}
