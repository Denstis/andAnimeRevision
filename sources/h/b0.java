package h;

/* JADX INFO: loaded from: classes.dex */
public abstract class b0 {

    final class a extends b0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ v f4443a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ i.f f4444b;

        a(v vVar, i.f fVar) {
            this.f4443a = vVar;
            this.f4444b = fVar;
        }

        @Override // h.b0
        public long a() {
            return this.f4444b.e();
        }

        @Override // h.b0
        public void a(i.d dVar) {
            dVar.a(this.f4444b);
        }

        @Override // h.b0
        public v b() {
            return this.f4443a;
        }
    }

    final class b extends b0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ v f4445a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f4446b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ byte[] f4447c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f4448d;

        b(v vVar, int i2, byte[] bArr, int i3) {
            this.f4445a = vVar;
            this.f4446b = i2;
            this.f4447c = bArr;
            this.f4448d = i3;
        }

        @Override // h.b0
        public long a() {
            return this.f4446b;
        }

        @Override // h.b0
        public void a(i.d dVar) {
            dVar.write(this.f4447c, this.f4448d, this.f4446b);
        }

        @Override // h.b0
        public v b() {
            return this.f4445a;
        }
    }

    public static b0 a(v vVar, i.f fVar) {
        return new a(vVar, fVar);
    }

    public static b0 a(v vVar, byte[] bArr) {
        return a(vVar, bArr, 0, bArr.length);
    }

    public static b0 a(v vVar, byte[] bArr, int i2, int i3) {
        if (bArr == null) {
            throw new NullPointerException("content == null");
        }
        h.h0.c.a(bArr.length, i2, i3);
        return new b(vVar, i3, bArr, i2);
    }

    public long a() {
        return -1L;
    }

    public abstract void a(i.d dVar);

    public abstract v b();
}
