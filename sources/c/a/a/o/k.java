package c.a.a.o;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.os.Build;
import android.util.Log;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class k extends Fragment {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c.a.a.o.a f3212b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final m f3213c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Set<k> f3214d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private c.a.a.k f3215e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private k f3216f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Fragment f3217g;

    private class a implements m {
        a() {
        }

        public String toString() {
            return super.toString() + "{fragment=" + k.this + "}";
        }
    }

    public k() {
        this(new c.a.a.o.a());
    }

    @SuppressLint({"ValidFragment"})
    k(c.a.a.o.a aVar) {
        this.f3213c = new a();
        this.f3214d = new HashSet();
        this.f3212b = aVar;
    }

    private void a(Activity activity) {
        e();
        this.f3216f = c.a.a.c.b(activity).h().b(activity);
        if (equals(this.f3216f)) {
            return;
        }
        this.f3216f.a(this);
    }

    private void a(k kVar) {
        this.f3214d.add(kVar);
    }

    private void b(k kVar) {
        this.f3214d.remove(kVar);
    }

    @TargetApi(17)
    private Fragment d() {
        Fragment parentFragment = Build.VERSION.SDK_INT >= 17 ? getParentFragment() : null;
        return parentFragment != null ? parentFragment : this.f3217g;
    }

    private void e() {
        k kVar = this.f3216f;
        if (kVar != null) {
            kVar.b(this);
            this.f3216f = null;
        }
    }

    c.a.a.o.a a() {
        return this.f3212b;
    }

    void a(Fragment fragment) {
        this.f3217g = fragment;
        if (fragment == null || fragment.getActivity() == null) {
            return;
        }
        a(fragment.getActivity());
    }

    public void a(c.a.a.k kVar) {
        this.f3215e = kVar;
    }

    public c.a.a.k b() {
        return this.f3215e;
    }

    public m c() {
        return this.f3213c;
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            a(activity);
        } catch (IllegalStateException e2) {
            if (Log.isLoggable("RMFragment", 5)) {
                Log.w("RMFragment", "Unable to register fragment with root", e2);
            }
        }
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f3212b.a();
        e();
    }

    @Override // android.app.Fragment
    public void onDetach() {
        super.onDetach();
        e();
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.f3212b.b();
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        this.f3212b.c();
    }

    @Override // android.app.Fragment
    public String toString() {
        return super.toString() + "{parent=" + d() + "}";
    }
}
