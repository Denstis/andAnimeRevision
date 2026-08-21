package c.a.a.t;

/* JADX INFO: loaded from: classes.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Class<?> f3330a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Class<?> f3331b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Class<?> f3332c;

    public i() {
    }

    public i(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        a(cls, cls2, cls3);
    }

    public void a(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        this.f3330a = cls;
        this.f3331b = cls2;
        this.f3332c = cls3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || i.class != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        return this.f3330a.equals(iVar.f3330a) && this.f3331b.equals(iVar.f3331b) && k.b(this.f3332c, iVar.f3332c);
    }

    public int hashCode() {
        int iHashCode = ((this.f3330a.hashCode() * 31) + this.f3331b.hashCode()) * 31;
        Class<?> cls = this.f3332c;
        return iHashCode + (cls != null ? cls.hashCode() : 0);
    }

    public String toString() {
        return "MultiClassKey{first=" + this.f3330a + ", second=" + this.f3331b + '}';
    }
}
