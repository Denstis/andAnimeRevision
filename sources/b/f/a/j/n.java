package b.f.a.j;

/* JADX INFO: loaded from: classes.dex */
public class n extends o {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    float f2439c = 0.0f;

    public void a(int i2) {
        if (this.f2441b == 0 || this.f2439c != i2) {
            this.f2439c = i2;
            if (this.f2441b == 1) {
                b();
            }
            a();
        }
    }

    @Override // b.f.a.j.o
    public void d() {
        super.d();
        this.f2439c = 0.0f;
    }

    public void f() {
        this.f2441b = 2;
    }
}
