package h.h0.i;

import h.a0;
import h.c0;
import h.d0;
import h.s;
import h.u;
import h.x;
import h.y;
import i.r;
import i.s;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class f implements h.h0.g.c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final i.f f4693e = i.f.c("connection");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final i.f f4694f = i.f.c("host");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final i.f f4695g = i.f.c("keep-alive");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final i.f f4696h = i.f.c("proxy-connection");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final i.f f4697i = i.f.c("transfer-encoding");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final i.f f4698j = i.f.c("te");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final i.f f4699k = i.f.c("encoding");
    private static final i.f l = i.f.c("upgrade");
    private static final List<i.f> m = h.h0.c.a(f4693e, f4694f, f4695g, f4696h, f4698j, f4697i, f4699k, l, c.f4663f, c.f4664g, c.f4665h, c.f4666i);
    private static final List<i.f> n = h.h0.c.a(f4693e, f4694f, f4695g, f4696h, f4698j, f4697i, f4699k, l);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final u.a f4700a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final h.h0.f.g f4701b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final g f4702c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private i f4703d;

    class a extends i.h {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f4704c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        long f4705d;

        a(s sVar) {
            super(sVar);
            this.f4704c = false;
            this.f4705d = 0L;
        }

        private void a(IOException iOException) {
            if (this.f4704c) {
                return;
            }
            this.f4704c = true;
            f fVar = f.this;
            fVar.f4701b.a(false, fVar, this.f4705d, iOException);
        }

        @Override // i.h, i.s
        public long a(i.c cVar, long j2) throws IOException {
            try {
                long jA = i().a(cVar, j2);
                if (jA > 0) {
                    this.f4705d += jA;
                }
                return jA;
            } catch (IOException e2) {
                a(e2);
                throw e2;
            }
        }

        @Override // i.h, i.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            super.close();
            a(null);
        }
    }

    public f(x xVar, u.a aVar, h.h0.f.g gVar, g gVar2) {
        this.f4700a = aVar;
        this.f4701b = gVar;
        this.f4702c = gVar2;
    }

    public static c0.a a(List<c> list) throws ProtocolException {
        s.a aVar = new s.a();
        int size = list.size();
        s.a aVar2 = aVar;
        h.h0.g.k kVarA = null;
        for (int i2 = 0; i2 < size; i2++) {
            c cVar = list.get(i2);
            if (cVar != null) {
                i.f fVar = cVar.f4667a;
                String strH = cVar.f4668b.h();
                if (fVar.equals(c.f4662e)) {
                    kVarA = h.h0.g.k.a("HTTP/1.1 " + strH);
                } else if (!n.contains(fVar)) {
                    h.h0.a.f4527a.a(aVar2, fVar.h(), strH);
                }
            } else if (kVarA != null && kVarA.f4626b == 100) {
                aVar2 = new s.a();
                kVarA = null;
            }
        }
        if (kVarA == null) {
            throw new ProtocolException("Expected ':status' header not present");
        }
        c0.a aVar3 = new c0.a();
        aVar3.a(y.HTTP_2);
        aVar3.a(kVarA.f4626b);
        aVar3.a(kVarA.f4627c);
        aVar3.a(aVar2.a());
        return aVar3;
    }

    public static List<c> b(a0 a0Var) {
        h.s sVarC = a0Var.c();
        ArrayList arrayList = new ArrayList(sVarC.b() + 4);
        arrayList.add(new c(c.f4663f, a0Var.e()));
        arrayList.add(new c(c.f4664g, h.h0.g.i.a(a0Var.g())));
        String strA = a0Var.a("Host");
        if (strA != null) {
            arrayList.add(new c(c.f4666i, strA));
        }
        arrayList.add(new c(c.f4665h, a0Var.g().n()));
        int iB = sVarC.b();
        for (int i2 = 0; i2 < iB; i2++) {
            i.f fVarC = i.f.c(sVarC.a(i2).toLowerCase(Locale.US));
            if (!m.contains(fVarC)) {
                arrayList.add(new c(fVarC, sVarC.b(i2)));
            }
        }
        return arrayList;
    }

    @Override // h.h0.g.c
    public c0.a a(boolean z) throws ProtocolException {
        c0.a aVarA = a(this.f4703d.j());
        if (z && h.h0.a.f4527a.a(aVarA) == 100) {
            return null;
        }
        return aVarA;
    }

    @Override // h.h0.g.c
    public d0 a(c0 c0Var) {
        h.h0.f.g gVar = this.f4701b;
        gVar.f4593f.e(gVar.f4592e);
        return new h.h0.g.h(c0Var.b("Content-Type"), h.h0.g.e.a(c0Var), i.l.a(new a(this.f4703d.e())));
    }

    @Override // h.h0.g.c
    public r a(a0 a0Var, long j2) {
        return this.f4703d.d();
    }

    @Override // h.h0.g.c
    public void a() {
        this.f4703d.d().close();
    }

    @Override // h.h0.g.c
    public void a(a0 a0Var) {
        if (this.f4703d != null) {
            return;
        }
        this.f4703d = this.f4702c.a(b(a0Var), a0Var.a() != null);
        this.f4703d.h().a(this.f4700a.a(), TimeUnit.MILLISECONDS);
        this.f4703d.l().a(this.f4700a.b(), TimeUnit.MILLISECONDS);
    }

    @Override // h.h0.g.c
    public void b() {
        this.f4702c.flush();
    }

    @Override // h.h0.g.c
    public void cancel() {
        i iVar = this.f4703d;
        if (iVar != null) {
            iVar.b(b.CANCEL);
        }
    }
}
