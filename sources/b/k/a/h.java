package b.k.a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public abstract class h<E> extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Activity f2700a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f2701b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Handler f2702c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final j f2703d;

    h(Activity activity, Context context, Handler handler, int i2) {
        this.f2703d = new j();
        this.f2700a = activity;
        b.h.n.g.a(context, "context == null");
        this.f2701b = context;
        b.h.n.g.a(handler, "handler == null");
        this.f2702c = handler;
    }

    h(e eVar) {
        this(eVar, eVar, eVar.f2686c, 0);
    }

    abstract void a(d dVar);

    public abstract void a(d dVar, Intent intent, int i2, Bundle bundle);

    public abstract void a(d dVar, IntentSender intentSender, int i2, Intent intent, int i3, int i4, int i5, Bundle bundle);

    public abstract void a(d dVar, String[] strArr, int i2);

    public abstract void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract boolean a(String str);

    Activity b() {
        return this.f2700a;
    }

    public abstract boolean b(d dVar);

    Context c() {
        return this.f2701b;
    }

    j d() {
        return this.f2703d;
    }

    Handler e() {
        return this.f2702c;
    }

    public abstract E f();

    public abstract LayoutInflater g();

    public abstract int h();

    public abstract boolean i();

    public abstract void j();
}
