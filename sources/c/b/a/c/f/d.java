package c.b.a.c.f;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import c.b.a.c.c;
import c.b.a.c.e;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class d<V extends c.b.a.c.e, P extends c.b.a.c.c<V>> implements c<V, P> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static boolean f3356g = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private e<V, P> f3357a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected b.k.a.d f3358b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final boolean f3359c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final boolean f3360d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f3361e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected String f3362f;

    public d(b.k.a.d dVar, e<V, P> eVar, boolean z, boolean z2) {
        if (eVar == null) {
            throw new NullPointerException("MvpDelegateCallback is null!");
        }
        if (dVar == null) {
            throw new NullPointerException("Fragment is null!");
        }
        if (!z && z2) {
            throw new IllegalArgumentException("It is not possible to keep the presenter on backstack, but NOT keep presenter through screen orientation changes. Keep presenter on backstack also requires keep presenter through screen orientation changes to be enabled");
        }
        this.f3358b = dVar;
        this.f3357a = eVar;
        this.f3359c = z;
        this.f3360d = z2;
    }

    static boolean a(Activity activity, b.k.a.d dVar, boolean z, boolean z2) {
        if (activity.isChangingConfigurations()) {
            return z;
        }
        if (activity.isFinishing()) {
            return false;
        }
        if (z2 && androidx.core.app.c.a(dVar)) {
            return true;
        }
        return true ^ dVar.isRemoving();
    }

    private P b() {
        P p = (P) this.f3357a.l();
        if (p != null) {
            if (this.f3359c) {
                this.f3362f = UUID.randomUUID().toString();
                c.b.a.b.a(c(), this.f3362f, p);
            }
            return p;
        }
        throw new NullPointerException("Presenter returned from createPresenter() is null. Activity is " + c());
    }

    private Activity c() {
        b.k.a.e activity = this.f3358b.getActivity();
        if (activity != null) {
            return activity;
        }
        throw new NullPointerException("Activity returned by Fragment.getActivity() is null. Fragment is " + this.f3358b);
    }

    private V d() {
        V v = (V) this.f3357a.n();
        if (v != null) {
            return v;
        }
        throw new NullPointerException("View returned from getMvpView() is null");
    }

    private P e() {
        P p = (P) this.f3357a.m();
        if (p != null) {
            return p;
        }
        throw new NullPointerException("Presenter returned from getPresenter() is null");
    }

    @Override // c.b.a.c.f.c
    public void a() {
    }

    @Override // c.b.a.c.f.c
    public void a(Activity activity) {
    }

    @Override // c.b.a.c.f.c
    public void a(Bundle bundle) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // c.b.a.c.f.c
    public void a(View view, Bundle bundle) {
        c.b.a.c.c cVarE = e();
        cVarE.a(d());
        if (f3356g) {
            Log.d("FragmentMvpVSDelegate", "View" + d() + " attached to Presenter " + cVarE);
        }
        this.f3361e = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b0  */
    @Override // c.b.a.c.f.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onCreate(android.os.Bundle r5) {
        /*
            r4 = this;
            java.lang.String r0 = " for view "
            java.lang.String r1 = "FragmentMvpVSDelegate"
            if (r5 == 0) goto L98
            boolean r2 = r4.f3359c
            if (r2 == 0) goto L98
            java.lang.String r2 = "com.hannesdorfmann.mosby3.fragment.mvp.id"
            java.lang.String r5 = r5.getString(r2)
            r4.f3362f = r5
            boolean r5 = c.b.a.c.f.d.f3356g
            if (r5 == 0) goto L3a
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r2 = "MosbyView ID = "
            r5.append(r2)
            java.lang.String r2 = r4.f3362f
            r5.append(r2)
            java.lang.String r2 = " for MvpView: "
            r5.append(r2)
            c.b.a.c.f.e<V extends c.b.a.c.e, P extends c.b.a.c.c<V>> r2 = r4.f3357a
            c.b.a.c.e r2 = r2.n()
            r5.append(r2)
            java.lang.String r5 = r5.toString()
            android.util.Log.d(r1, r5)
        L3a:
            java.lang.String r5 = r4.f3362f
            if (r5 == 0) goto L71
            android.app.Activity r5 = r4.c()
            java.lang.String r2 = r4.f3362f
            java.lang.Object r5 = c.b.a.b.a(r5, r2)
            c.b.a.c.c r5 = (c.b.a.c.c) r5
            if (r5 == 0) goto L71
            boolean r2 = c.b.a.c.f.d.f3356g
            if (r2 == 0) goto La8
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Reused presenter "
            r2.append(r3)
            r2.append(r5)
            r2.append(r0)
            c.b.a.c.f.e<V extends c.b.a.c.e, P extends c.b.a.c.c<V>> r0 = r4.f3357a
            c.b.a.c.e r0 = r0.n()
        L66:
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            android.util.Log.d(r1, r0)
            goto La8
        L71:
            c.b.a.c.c r5 = r4.b()
            boolean r2 = c.b.a.c.f.d.f3356g
            if (r2 == 0) goto La8
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "No presenter found although view Id was here: "
            r2.append(r3)
            java.lang.String r3 = r4.f3362f
            r2.append(r3)
            java.lang.String r3 = ". Most likely this was caused by a process death. New Presenter created"
        L8a:
            r2.append(r3)
            r2.append(r5)
            r2.append(r0)
            c.b.a.c.e r0 = r4.d()
            goto L66
        L98:
            c.b.a.c.c r5 = r4.b()
            boolean r2 = c.b.a.c.f.d.f3356g
            if (r2 == 0) goto La8
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "New presenter "
            goto L8a
        La8:
            if (r5 == 0) goto Lb0
            c.b.a.c.f.e<V extends c.b.a.c.e, P extends c.b.a.c.c<V>> r0 = r4.f3357a
            r0.a(r5)
            return
        Lb0:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "Oops, Presenter is null. This seems to be a Mosby internal bug. Please report this issue here: https://github.com/sockeqwe/mosby/issues"
            r5.<init>(r0)
            goto Lb9
        Lb8:
            throw r5
        Lb9:
            goto Lb8
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.a.c.f.d.onCreate(android.os.Bundle):void");
    }

    @Override // c.b.a.c.f.c
    public void onDestroy() {
        String str;
        Activity activityC = c();
        boolean zA = a(activityC, this.f3358b, this.f3359c, this.f3360d);
        c.b.a.c.c cVarE = e();
        if (!zA) {
            cVarE.destroy();
            if (f3356g) {
                Log.d("FragmentMvpVSDelegate", "Presenter destroyed. MvpView " + this.f3357a.n() + "   Presenter: " + cVarE);
            }
        }
        if (zA || (str = this.f3362f) == null) {
            return;
        }
        c.b.a.b.b(activityC, str);
    }

    @Override // c.b.a.c.f.c
    public void onDestroyView() {
        this.f3361e = false;
        e().a();
        if (f3356g) {
            Log.d("FragmentMvpVSDelegate", "detached MvpView from Presenter. MvpView " + this.f3357a.n() + "   Presenter: " + e());
        }
    }

    @Override // c.b.a.c.f.c
    public void onPause() {
    }

    @Override // c.b.a.c.f.c
    public void onResume() {
    }

    @Override // c.b.a.c.f.c
    public void onSaveInstanceState(Bundle bundle) {
        if ((this.f3359c || this.f3360d) && bundle != null) {
            bundle.putString("com.hannesdorfmann.mosby3.fragment.mvp.id", this.f3362f);
            if (f3356g) {
                Log.d("FragmentMvpVSDelegate", "Saving MosbyViewId into Bundle. ViewId: " + this.f3362f);
            }
        }
    }

    @Override // c.b.a.c.f.c
    public void onStart() {
        if (this.f3361e) {
            return;
        }
        throw new IllegalStateException("It seems that you are using " + this.f3357a.getClass().getCanonicalName() + " as headless (UI less) fragment (because onViewCreated() has not been called or maybe delegation misses that part). Having a Presenter without a View (UI) doesn't make sense. Simply use an usual fragment instead of an MvpFragment if you want to use a UI less Fragment");
    }

    @Override // c.b.a.c.f.c
    public void onStop() {
    }
}
