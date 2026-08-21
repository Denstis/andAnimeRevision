package c.a.a.o;

import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<c.a.a.r.c> f3228a = Collections.newSetFromMap(new WeakHashMap());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<c.a.a.r.c> f3229b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f3230c;

    private boolean a(c.a.a.r.c cVar, boolean z) {
        boolean z2 = true;
        if (cVar == null) {
            return true;
        }
        boolean zRemove = this.f3228a.remove(cVar);
        if (!this.f3229b.remove(cVar) && !zRemove) {
            z2 = false;
        }
        if (z2) {
            cVar.clear();
            if (z) {
                cVar.a();
            }
        }
        return z2;
    }

    public void a() {
        Iterator it = c.a.a.t.k.a(this.f3228a).iterator();
        while (it.hasNext()) {
            a((c.a.a.r.c) it.next(), false);
        }
        this.f3229b.clear();
    }

    public boolean a(c.a.a.r.c cVar) {
        return a(cVar, true);
    }

    public void b() {
        this.f3230c = true;
        for (c.a.a.r.c cVar : c.a.a.t.k.a(this.f3228a)) {
            if (cVar.isRunning()) {
                cVar.clear();
                this.f3229b.add(cVar);
            }
        }
    }

    public void b(c.a.a.r.c cVar) {
        this.f3228a.add(cVar);
        if (!this.f3230c) {
            cVar.begin();
            return;
        }
        cVar.clear();
        if (Log.isLoggable("RequestTracker", 2)) {
            Log.v("RequestTracker", "Paused, delaying request");
        }
        this.f3229b.add(cVar);
    }

    public void c() {
        for (c.a.a.r.c cVar : c.a.a.t.k.a(this.f3228a)) {
            if (!cVar.f() && !cVar.e()) {
                cVar.clear();
                if (this.f3230c) {
                    this.f3229b.add(cVar);
                } else {
                    cVar.begin();
                }
            }
        }
    }

    public void d() {
        this.f3230c = false;
        for (c.a.a.r.c cVar : c.a.a.t.k.a(this.f3228a)) {
            if (!cVar.f() && !cVar.isRunning()) {
                cVar.begin();
            }
        }
        this.f3229b.clear();
    }

    public String toString() {
        return super.toString() + "{numRequests=" + this.f3228a.size() + ", isPaused=" + this.f3230c + "}";
    }
}
