package h.h0.i;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final i.f f4661d = i.f.c(":");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final i.f f4662e = i.f.c(":status");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final i.f f4663f = i.f.c(":method");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final i.f f4664g = i.f.c(":path");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final i.f f4665h = i.f.c(":scheme");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final i.f f4666i = i.f.c(":authority");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final i.f f4667a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final i.f f4668b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f4669c;

    public c(i.f fVar, i.f fVar2) {
        this.f4667a = fVar;
        this.f4668b = fVar2;
        this.f4669c = fVar.e() + 32 + fVar2.e();
    }

    public c(i.f fVar, String str) {
        this(fVar, i.f.c(str));
    }

    public c(String str, String str2) {
        this(i.f.c(str), i.f.c(str2));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f4667a.equals(cVar.f4667a) && this.f4668b.equals(cVar.f4668b);
    }

    public int hashCode() {
        return ((527 + this.f4667a.hashCode()) * 31) + this.f4668b.hashCode();
    }

    public String toString() {
        return h.h0.c.a("%s: %s", this.f4667a.h(), this.f4668b.h());
    }
}
