package b.f.a.j;

import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    HashSet<o> f2440a = new HashSet<>(2);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f2441b = 0;

    public void a() {
        this.f2441b = 1;
        Iterator<o> it = this.f2440a.iterator();
        while (it.hasNext()) {
            it.next().e();
        }
    }

    public void a(o oVar) {
        this.f2440a.add(oVar);
    }

    public void b() {
        this.f2441b = 0;
        Iterator<o> it = this.f2440a.iterator();
        while (it.hasNext()) {
            it.next().b();
        }
    }

    public boolean c() {
        return this.f2441b == 1;
    }

    public void d() {
        this.f2441b = 0;
        this.f2440a.clear();
    }

    public void e() {
    }
}
