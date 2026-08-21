package k.q.a;

import e.a.n;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes.dex */
final class g<R> implements k.c<R, Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Type f5176a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final n f5177b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f5178c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f5179d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f5180e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f5181f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f5182g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f5183h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f5184i;

    g(Type type, n nVar, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        this.f5176a = type;
        this.f5177b = nVar;
        this.f5178c = z;
        this.f5179d = z2;
        this.f5180e = z3;
        this.f5181f = z4;
        this.f5182g = z5;
        this.f5183h = z6;
        this.f5184i = z7;
    }

    @Override // k.c
    public Object a(k.b<R> bVar) {
        e.a.h bVar2 = this.f5178c ? new b(bVar) : new c(bVar);
        e.a.h fVar = this.f5179d ? new f(bVar2) : this.f5180e ? new a(bVar2) : bVar2;
        n nVar = this.f5177b;
        if (nVar != null) {
            fVar = fVar.b(nVar);
        }
        return this.f5181f ? fVar.a(e.a.a.LATEST) : this.f5182g ? fVar.d() : this.f5183h ? fVar.c() : this.f5184i ? fVar.b() : fVar;
    }

    @Override // k.c
    public Type a() {
        return this.f5176a;
    }
}
