package c.b.a.c;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import c.b.a.c.c;
import c.b.a.c.e;

/* JADX INFO: loaded from: classes.dex */
public abstract class b<V extends e, P extends c<V>> extends b.k.a.d implements c.b.a.c.f.e<V, P>, e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected c.b.a.c.f.c<V, P> f3347b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected P f3348c;

    @Override // c.b.a.c.f.e
    public void a(P p) {
        this.f3348c = p;
    }

    @Override // c.b.a.c.f.e
    public P m() {
        return this.f3348c;
    }

    @Override // c.b.a.c.f.e
    public V n() {
        return this;
    }

    protected c.b.a.c.f.c<V, P> o() {
        if (this.f3347b == null) {
            this.f3347b = new c.b.a.c.f.d(this, this, true, true);
        }
        return this.f3347b;
    }

    @Override // b.k.a.d
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        o().a(bundle);
    }

    @Override // b.k.a.d
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        o().a(activity);
    }

    @Override // b.k.a.d
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        o().onCreate(bundle);
    }

    @Override // b.k.a.d
    public void onDestroy() {
        super.onDestroy();
        o().onDestroy();
    }

    @Override // b.k.a.d
    public void onDestroyView() {
        super.onDestroyView();
        o().onDestroyView();
    }

    @Override // b.k.a.d
    public void onDetach() {
        super.onDetach();
        o().a();
    }

    @Override // b.k.a.d
    public void onPause() {
        super.onPause();
        o().onPause();
    }

    @Override // b.k.a.d
    public void onResume() {
        super.onResume();
        o().onResume();
    }

    @Override // b.k.a.d
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        o().onSaveInstanceState(bundle);
    }

    @Override // b.k.a.d
    public void onStart() {
        super.onStart();
        o().onStart();
    }

    @Override // b.k.a.d
    public void onStop() {
        super.onStop();
        o().onStop();
    }

    @Override // b.k.a.d
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        o().a(view, bundle);
    }
}
