package androidx.lifecycle;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.content.ComponentCallbacks2;
import android.os.Bundle;
import androidx.lifecycle.e;

/* JADX INFO: loaded from: classes.dex */
public class o extends Fragment {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f1075b;

    interface a {
        void a();

        void onResume();

        void onStart();
    }

    public static void a(Activity activity) {
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new o(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }

    private void a(e.a aVar) {
        ComponentCallbacks2 activity = getActivity();
        if (activity instanceof i) {
            ((i) activity).getLifecycle().a(aVar);
        } else if (activity instanceof g) {
            e lifecycle = ((g) activity).getLifecycle();
            if (lifecycle instanceof h) {
                ((h) lifecycle).a(aVar);
            }
        }
    }

    private void a(a aVar) {
        if (aVar != null) {
            aVar.a();
        }
    }

    private void b(a aVar) {
        if (aVar != null) {
            aVar.onResume();
        }
    }

    private void c(a aVar) {
        if (aVar != null) {
            aVar.onStart();
        }
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        a(this.f1075b);
        a(e.a.ON_CREATE);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        a(e.a.ON_DESTROY);
        this.f1075b = null;
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        a(e.a.ON_PAUSE);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        b(this.f1075b);
        a(e.a.ON_RESUME);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        c(this.f1075b);
        a(e.a.ON_START);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        a(e.a.ON_STOP);
    }
}
