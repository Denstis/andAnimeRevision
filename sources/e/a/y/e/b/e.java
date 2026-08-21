package e.a.y.e.b;

/* JADX INFO: loaded from: classes.dex */
public final class e<T> extends a<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e.a.x.d<? super e.a.v.b> f4181c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final e.a.x.a f4182d;

    public e(e.a.h<T> hVar, e.a.x.d<? super e.a.v.b> dVar, e.a.x.a aVar) {
        super(hVar);
        this.f4181c = dVar;
        this.f4182d = aVar;
    }

    @Override // e.a.h
    protected void b(e.a.m<? super T> mVar) {
        this.f4161b.a(new e.a.y.d.e(mVar, this.f4181c, this.f4182d));
    }
}
