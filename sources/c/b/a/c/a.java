package c.b.a.c;

import android.os.Bundle;
import c.b.a.c.c;
import c.b.a.c.e;

/* JADX INFO: loaded from: classes.dex */
public abstract class a<V extends e, P extends c<V>> extends androidx.appcompat.app.d implements e, c.b.a.c.f.e<V, P> {
    protected c.b.a.c.f.a q;
    protected P r;

    @Override // c.b.a.c.f.e
    public void a(P p) {
        this.r = p;
    }

    @Override // c.b.a.c.f.e
    public P m() {
        return this.r;
    }

    @Override // c.b.a.c.f.e
    public V n() {
        return this;
    }

    @Override // androidx.appcompat.app.d, android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        super.onContentChanged();
        x().onContentChanged();
    }

    @Override // androidx.appcompat.app.d, b.k.a.e, androidx.core.app.e, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        x().onCreate(bundle);
    }

    @Override // androidx.appcompat.app.d, b.k.a.e, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        x().onDestroy();
    }

    @Override // b.k.a.e, android.app.Activity
    protected void onPause() {
        super.onPause();
        x().onPause();
    }

    @Override // androidx.appcompat.app.d, android.app.Activity
    protected void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        x().a(bundle);
    }

    @Override // android.app.Activity
    protected void onRestart() {
        super.onRestart();
        x().onRestart();
    }

    @Override // b.k.a.e, android.app.Activity
    protected void onResume() {
        super.onResume();
        x().onResume();
    }

    @Override // androidx.appcompat.app.d, b.k.a.e, androidx.core.app.e, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        x().onSaveInstanceState(bundle);
    }

    @Override // androidx.appcompat.app.d, b.k.a.e, android.app.Activity
    protected void onStart() {
        super.onStart();
        x().onStart();
    }

    @Override // androidx.appcompat.app.d, b.k.a.e, android.app.Activity
    protected void onStop() {
        super.onStop();
        x().onStop();
    }

    protected c.b.a.c.f.a<V, P> x() {
        if (this.q == null) {
            this.q = new c.b.a.c.f.b(this, this, true);
        }
        return this.q;
    }
}
