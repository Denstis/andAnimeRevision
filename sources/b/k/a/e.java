package b.k.a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.core.app.a;
import androidx.lifecycle.e;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public class e extends androidx.core.app.e implements androidx.lifecycle.s, a.b, a.d {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private androidx.lifecycle.r f2688e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f2689f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f2690g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    boolean f2692i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    boolean f2693j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    boolean f2694k;
    int l;
    b.e.h<String> m;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Handler f2686c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final g f2687d = g.a(new b());

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f2691h = true;

    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 2) {
                super.handleMessage(message);
            } else {
                e.this.q();
                e.this.f2687d.i();
            }
        }
    }

    class b extends h<e> {
        public b() {
            super(e.this);
        }

        @Override // b.k.a.f
        public View a(int i2) {
            return e.this.findViewById(i2);
        }

        @Override // b.k.a.h
        public void a(d dVar) {
            e.this.a(dVar);
        }

        @Override // b.k.a.h
        public void a(d dVar, Intent intent, int i2, Bundle bundle) {
            e.this.a(dVar, intent, i2, bundle);
        }

        @Override // b.k.a.h
        public void a(d dVar, IntentSender intentSender, int i2, Intent intent, int i3, int i4, int i5, Bundle bundle) {
            e.this.a(dVar, intentSender, i2, intent, i3, i4, i5, bundle);
        }

        @Override // b.k.a.h
        public void a(d dVar, String[] strArr, int i2) {
            e.this.a(dVar, strArr, i2);
        }

        @Override // b.k.a.h
        public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            e.this.dump(str, fileDescriptor, printWriter, strArr);
        }

        @Override // b.k.a.f
        public boolean a() {
            Window window = e.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }

        @Override // b.k.a.h
        public boolean a(String str) {
            return androidx.core.app.a.a((Activity) e.this, str);
        }

        @Override // b.k.a.h
        public boolean b(d dVar) {
            return !e.this.isFinishing();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // b.k.a.h
        public e f() {
            return e.this;
        }

        @Override // b.k.a.h
        public LayoutInflater g() {
            return e.this.getLayoutInflater().cloneInContext(e.this);
        }

        @Override // b.k.a.h
        public int h() {
            Window window = e.this.getWindow();
            if (window == null) {
                return 0;
            }
            return window.getAttributes().windowAnimations;
        }

        @Override // b.k.a.h
        public boolean i() {
            return e.this.getWindow() != null;
        }

        @Override // b.k.a.h
        public void j() {
            e.this.s();
        }
    }

    static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        androidx.lifecycle.r f2697a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        k f2698b;

        c() {
        }
    }

    private static boolean a(i iVar, e.b bVar) {
        boolean zA = false;
        for (d dVar : iVar.c()) {
            if (dVar != null) {
                if (dVar.getLifecycle().a().a(e.b.STARTED)) {
                    dVar.mLifecycleRegistry.a(bVar);
                    zA = true;
                }
                i iVarPeekChildFragmentManager = dVar.peekChildFragmentManager();
                if (iVarPeekChildFragmentManager != null) {
                    zA |= a(iVarPeekChildFragmentManager, bVar);
                }
            }
        }
        return zA;
    }

    private int b(d dVar) {
        if (this.m.b() >= 65534) {
            throw new IllegalStateException("Too many pending Fragment activity results.");
        }
        while (this.m.c(this.l) >= 0) {
            this.l = (this.l + 1) % 65534;
        }
        int i2 = this.l;
        this.m.c(i2, dVar.mWho);
        this.l = (this.l + 1) % 65534;
        return i2;
    }

    static void g(int i2) {
        if ((i2 & (-65536)) != 0) {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        }
    }

    private void t() {
        while (a(p(), e.b.CREATED)) {
        }
    }

    final View a(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f2687d.a(view, str, context, attributeSet);
    }

    public void a(d dVar) {
    }

    public void a(d dVar, Intent intent, int i2, Bundle bundle) {
        this.f2694k = true;
        try {
            if (i2 == -1) {
                androidx.core.app.a.a(this, intent, -1, bundle);
            } else {
                g(i2);
                androidx.core.app.a.a(this, intent, ((b(dVar) + 1) << 16) + (i2 & 65535), bundle);
            }
        } finally {
            this.f2694k = false;
        }
    }

    public void a(d dVar, IntentSender intentSender, int i2, Intent intent, int i3, int i4, int i5, Bundle bundle) {
        this.f2693j = true;
        try {
            if (i2 == -1) {
                androidx.core.app.a.a(this, intentSender, i2, intent, i3, i4, i5, bundle);
            } else {
                g(i2);
                androidx.core.app.a.a(this, intentSender, ((b(dVar) + 1) << 16) + (i2 & 65535), intent, i3, i4, i5, bundle);
            }
        } finally {
            this.f2693j = false;
        }
    }

    void a(d dVar, String[] strArr, int i2) {
        if (i2 == -1) {
            androidx.core.app.a.a(this, strArr, i2);
            return;
        }
        g(i2);
        try {
            this.f2692i = true;
            androidx.core.app.a.a(this, strArr, ((b(dVar) + 1) << 16) + (i2 & 65535));
        } finally {
            this.f2692i = false;
        }
    }

    protected boolean a(View view, Menu menu) {
        return super.onPreparePanel(0, view, menu);
    }

    @Override // android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String str2 = str + "  ";
        printWriter.print(str2);
        printWriter.print("mCreated=");
        printWriter.print(this.f2689f);
        printWriter.print(" mResumed=");
        printWriter.print(this.f2690g);
        printWriter.print(" mStopped=");
        printWriter.print(this.f2691h);
        if (getApplication() != null) {
            b.n.a.a.a(this).a(str2, fileDescriptor, printWriter, strArr);
        }
        this.f2687d.j().a(str, fileDescriptor, printWriter, strArr);
    }

    @Override // androidx.core.app.a.d
    public final void f(int i2) {
        if (this.f2692i || i2 == -1) {
            return;
        }
        g(i2);
    }

    @Override // androidx.core.app.e, androidx.lifecycle.g
    public androidx.lifecycle.e getLifecycle() {
        return super.getLifecycle();
    }

    @Override // androidx.lifecycle.s
    public androidx.lifecycle.r getViewModelStore() {
        if (getApplication() == null) {
            throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
        }
        if (this.f2688e == null) {
            c cVar = (c) getLastNonConfigurationInstance();
            if (cVar != null) {
                this.f2688e = cVar.f2697a;
            }
            if (this.f2688e == null) {
                this.f2688e = new androidx.lifecycle.r();
            }
        }
        return this.f2688e;
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i2, int i3, Intent intent) {
        this.f2687d.k();
        int i4 = i2 >> 16;
        if (i4 == 0) {
            a.c cVarA = androidx.core.app.a.a();
            if (cVarA == null || !cVarA.a(this, i2, i3, intent)) {
                super.onActivityResult(i2, i3, intent);
                return;
            }
            return;
        }
        int i5 = i4 - 1;
        String strB = this.m.b(i5);
        this.m.e(i5);
        if (strB == null) {
            Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
            return;
        }
        d dVarA = this.f2687d.a(strB);
        if (dVarA != null) {
            dVarA.onActivityResult(i2 & 65535, i3, intent);
            return;
        }
        Log.w("FragmentActivity", "Activity result no fragment exists for who: " + strB);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        i iVarJ = this.f2687d.j();
        boolean zD = iVarJ.d();
        if (!zD || Build.VERSION.SDK_INT > 25) {
            if (zD || !iVarJ.f()) {
                super.onBackPressed();
            }
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f2687d.k();
        this.f2687d.a(configuration);
    }

    @Override // androidx.core.app.e, android.app.Activity
    protected void onCreate(Bundle bundle) {
        androidx.lifecycle.r rVar;
        this.f2687d.a((d) null);
        super.onCreate(bundle);
        c cVar = (c) getLastNonConfigurationInstance();
        if (cVar != null && (rVar = cVar.f2697a) != null && this.f2688e == null) {
            this.f2688e = rVar;
        }
        if (bundle != null) {
            this.f2687d.a(bundle.getParcelable("android:support:fragments"), cVar != null ? cVar.f2698b : null);
            if (bundle.containsKey("android:support:next_request_index")) {
                this.l = bundle.getInt("android:support:next_request_index");
                int[] intArray = bundle.getIntArray("android:support:request_indicies");
                String[] stringArray = bundle.getStringArray("android:support:request_fragment_who");
                if (intArray == null || stringArray == null || intArray.length != stringArray.length) {
                    Log.w("FragmentActivity", "Invalid requestCode mapping in savedInstanceState.");
                } else {
                    this.m = new b.e.h<>(intArray.length);
                    for (int i2 = 0; i2 < intArray.length; i2++) {
                        this.m.c(intArray[i2], stringArray[i2]);
                    }
                }
            }
        }
        if (this.m == null) {
            this.m = new b.e.h<>();
            this.l = 0;
        }
        this.f2687d.b();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i2, Menu menu) {
        return i2 == 0 ? super.onCreatePanelMenu(i2, menu) | this.f2687d.a(menu, getMenuInflater()) : super.onCreatePanelMenu(i2, menu);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View viewA = a(view, str, context, attributeSet);
        return viewA == null ? super.onCreateView(view, str, context, attributeSet) : viewA;
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View viewA = a((View) null, str, context, attributeSet);
        return viewA == null ? super.onCreateView(str, context, attributeSet) : viewA;
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (this.f2688e != null && !isChangingConfigurations()) {
            this.f2688e.a();
        }
        this.f2687d.c();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        this.f2687d.d();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i2, MenuItem menuItem) {
        if (super.onMenuItemSelected(i2, menuItem)) {
            return true;
        }
        if (i2 == 0) {
            return this.f2687d.b(menuItem);
        }
        if (i2 != 6) {
            return false;
        }
        return this.f2687d.a(menuItem);
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z) {
        this.f2687d.a(z);
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.f2687d.k();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i2, Menu menu) {
        if (i2 == 0) {
            this.f2687d.a(menu);
        }
        super.onPanelClosed(i2, menu);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.f2690g = false;
        if (this.f2686c.hasMessages(2)) {
            this.f2686c.removeMessages(2);
            q();
        }
        this.f2687d.e();
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z) {
        this.f2687d.b(z);
    }

    @Override // android.app.Activity
    protected void onPostResume() {
        super.onPostResume();
        this.f2686c.removeMessages(2);
        q();
        this.f2687d.i();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i2, View view, Menu menu) {
        return (i2 != 0 || menu == null) ? super.onPreparePanel(i2, view, menu) : a(view, menu) | this.f2687d.b(menu);
    }

    @Override // android.app.Activity, androidx.core.app.a.b
    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        this.f2687d.k();
        int i3 = (i2 >> 16) & 65535;
        if (i3 != 0) {
            int i4 = i3 - 1;
            String strB = this.m.b(i4);
            this.m.e(i4);
            if (strB == null) {
                Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
                return;
            }
            d dVarA = this.f2687d.a(strB);
            if (dVarA != null) {
                dVarA.onRequestPermissionsResult(i2 & 65535, strArr, iArr);
                return;
            }
            Log.w("FragmentActivity", "Activity result no fragment exists for who: " + strB);
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.f2686c.sendEmptyMessage(2);
        this.f2690g = true;
        this.f2687d.i();
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        Object objR = r();
        k kVarL = this.f2687d.l();
        if (kVarL == null && this.f2688e == null && objR == null) {
            return null;
        }
        c cVar = new c();
        cVar.f2697a = this.f2688e;
        cVar.f2698b = kVarL;
        return cVar;
    }

    @Override // androidx.core.app.e, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        t();
        Parcelable parcelableM = this.f2687d.m();
        if (parcelableM != null) {
            bundle.putParcelable("android:support:fragments", parcelableM);
        }
        if (this.m.b() > 0) {
            bundle.putInt("android:support:next_request_index", this.l);
            int[] iArr = new int[this.m.b()];
            String[] strArr = new String[this.m.b()];
            for (int i2 = 0; i2 < this.m.b(); i2++) {
                iArr[i2] = this.m.d(i2);
                strArr[i2] = this.m.f(i2);
            }
            bundle.putIntArray("android:support:request_indicies", iArr);
            bundle.putStringArray("android:support:request_fragment_who", strArr);
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        this.f2691h = false;
        if (!this.f2689f) {
            this.f2689f = true;
            this.f2687d.a();
        }
        this.f2687d.k();
        this.f2687d.i();
        this.f2687d.g();
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.f2687d.k();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        this.f2691h = true;
        t();
        this.f2687d.h();
    }

    public i p() {
        return this.f2687d.j();
    }

    protected void q() {
        this.f2687d.f();
    }

    public Object r() {
        return null;
    }

    @Deprecated
    public void s() {
        invalidateOptionsMenu();
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i2) {
        if (!this.f2694k && i2 != -1) {
            g(i2);
        }
        super.startActivityForResult(intent, i2);
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i2, Bundle bundle) {
        if (!this.f2694k && i2 != -1) {
            g(i2);
        }
        super.startActivityForResult(intent, i2, bundle);
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(IntentSender intentSender, int i2, Intent intent, int i3, int i4, int i5) throws IntentSender.SendIntentException {
        if (!this.f2693j && i2 != -1) {
            g(i2);
        }
        super.startIntentSenderForResult(intentSender, i2, intent, i3, i4, i5);
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(IntentSender intentSender, int i2, Intent intent, int i3, int i4, int i5, Bundle bundle) throws IntentSender.SendIntentException {
        if (!this.f2693j && i2 != -1) {
            g(i2);
        }
        super.startIntentSenderForResult(intentSender, i2, intent, i3, i4, i5, bundle);
    }
}
