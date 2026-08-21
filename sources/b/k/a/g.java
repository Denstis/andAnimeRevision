package b.k.a;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h<?> f2699a;

    private g(h<?> hVar) {
        this.f2699a = hVar;
    }

    public static g a(h<?> hVar) {
        return new g(hVar);
    }

    public View a(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f2699a.f2703d.onCreateView(view, str, context, attributeSet);
    }

    public d a(String str) {
        return this.f2699a.f2703d.b(str);
    }

    public void a() {
        this.f2699a.f2703d.g();
    }

    public void a(Configuration configuration) {
        this.f2699a.f2703d.a(configuration);
    }

    public void a(Parcelable parcelable, k kVar) {
        this.f2699a.f2703d.a(parcelable, kVar);
    }

    public void a(Menu menu) {
        this.f2699a.f2703d.a(menu);
    }

    public void a(d dVar) {
        h<?> hVar = this.f2699a;
        hVar.f2703d.a(hVar, hVar, dVar);
    }

    public void a(boolean z) {
        this.f2699a.f2703d.a(z);
    }

    public boolean a(Menu menu, MenuInflater menuInflater) {
        return this.f2699a.f2703d.a(menu, menuInflater);
    }

    public boolean a(MenuItem menuItem) {
        return this.f2699a.f2703d.a(menuItem);
    }

    public void b() {
        this.f2699a.f2703d.h();
    }

    public void b(boolean z) {
        this.f2699a.f2703d.b(z);
    }

    public boolean b(Menu menu) {
        return this.f2699a.f2703d.b(menu);
    }

    public boolean b(MenuItem menuItem) {
        return this.f2699a.f2703d.b(menuItem);
    }

    public void c() {
        this.f2699a.f2703d.i();
    }

    public void d() {
        this.f2699a.f2703d.k();
    }

    public void e() {
        this.f2699a.f2703d.l();
    }

    public void f() {
        this.f2699a.f2703d.m();
    }

    public void g() {
        this.f2699a.f2703d.n();
    }

    public void h() {
        this.f2699a.f2703d.o();
    }

    public boolean i() {
        return this.f2699a.f2703d.q();
    }

    public i j() {
        return this.f2699a.d();
    }

    public void k() {
        this.f2699a.f2703d.t();
    }

    public k l() {
        return this.f2699a.f2703d.v();
    }

    public Parcelable m() {
        return this.f2699a.f2703d.w();
    }
}
