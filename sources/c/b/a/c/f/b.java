package c.b.a.c.f;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import c.b.a.c.c;
import c.b.a.c.e;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class b<V extends c.b.a.c.e, P extends c.b.a.c.c<V>> implements a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static boolean f3351e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private e<V, P> f3352a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected boolean f3353b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected Activity f3354c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected String f3355d = null;

    public b(Activity activity, e<V, P> eVar, boolean z) {
        if (activity == null) {
            throw new NullPointerException("Activity is null!");
        }
        if (eVar == null) {
            throw new NullPointerException("MvpDelegateCallback is null!");
        }
        this.f3352a = eVar;
        this.f3354c = activity;
        this.f3353b = z;
    }

    private P a() {
        P p = (P) this.f3352a.l();
        if (p != null) {
            if (this.f3353b) {
                this.f3355d = UUID.randomUUID().toString();
                c.b.a.b.a(this.f3354c, this.f3355d, p);
            }
            return p;
        }
        throw new NullPointerException("Presenter returned from createPresenter() is null. Activity is " + this.f3354c);
    }

    static boolean a(boolean z, Activity activity) {
        return z && (activity.isChangingConfigurations() || !activity.isFinishing());
    }

    private V b() {
        V v = (V) this.f3352a.n();
        if (v != null) {
            return v;
        }
        throw new NullPointerException("View returned from getMvpView() is null");
    }

    private P c() {
        P p = (P) this.f3352a.m();
        if (p != null) {
            return p;
        }
        throw new NullPointerException("Presenter returned from getPresenter() is null");
    }

    @Override // c.b.a.c.f.a
    public void a(Bundle bundle) {
    }

    @Override // c.b.a.c.f.a
    public void onContentChanged() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00db  */
    @Override // c.b.a.c.f.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onCreate(android.os.Bundle r5) {
        /*
            Method dump skipped, instruction units count: 229
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.a.c.f.b.onCreate(android.os.Bundle):void");
    }

    @Override // c.b.a.c.f.a
    public void onDestroy() {
        StringBuilder sb;
        String str;
        String str2;
        boolean zA = a(this.f3353b, this.f3354c);
        c().a();
        if (!zA) {
            c().destroy();
        }
        if (!zA && (str2 = this.f3355d) != null) {
            c.b.a.b.b(this.f3354c, str2);
        }
        if (f3351e) {
            if (zA) {
                sb = new StringBuilder();
                sb.append("View");
                sb.append(b());
                str = " destroyed temporarily. View detached from presenter ";
            } else {
                sb = new StringBuilder();
                sb.append("View");
                sb.append(b());
                str = " destroyed permanently. View detached permanently from presenter ";
            }
            sb.append(str);
            sb.append(c());
            Log.d("ActivityMvpDelegateImpl", sb.toString());
        }
    }

    @Override // c.b.a.c.f.a
    public void onPause() {
    }

    @Override // c.b.a.c.f.a
    public void onRestart() {
    }

    @Override // c.b.a.c.f.a
    public void onResume() {
    }

    @Override // c.b.a.c.f.a
    public void onSaveInstanceState(Bundle bundle) {
        if (!this.f3353b || bundle == null) {
            return;
        }
        bundle.putString("com.hannesdorfmann.mosby3.activity.mvp.id", this.f3355d);
        if (f3351e) {
            Log.d("ActivityMvpDelegateImpl", "Saving MosbyViewId into Bundle. ViewId: " + this.f3355d + " for view " + b());
        }
    }

    @Override // c.b.a.c.f.a
    public void onStart() {
    }

    @Override // c.b.a.c.f.a
    public void onStop() {
    }
}
