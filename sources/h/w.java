package h;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class w extends b0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final v f4931e = v.a("multipart/mixed");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final v f4932f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final byte[] f4933g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final byte[] f4934h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final byte[] f4935i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i.f f4936a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v f4937b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<b> f4938c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f4939d = -1;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final i.f f4940a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private v f4941b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final List<b> f4942c;

        public a() {
            this(UUID.randomUUID().toString());
        }

        public a(String str) {
            this.f4941b = w.f4931e;
            this.f4942c = new ArrayList();
            this.f4940a = i.f.c(str);
        }

        public a a(s sVar, b0 b0Var) {
            a(b.a(sVar, b0Var));
            return this;
        }

        public a a(v vVar) {
            if (vVar == null) {
                throw new NullPointerException("type == null");
            }
            if (vVar.a().equals("multipart")) {
                this.f4941b = vVar;
                return this;
            }
            throw new IllegalArgumentException("multipart != " + vVar);
        }

        public a a(b bVar) {
            if (bVar == null) {
                throw new NullPointerException("part == null");
            }
            this.f4942c.add(bVar);
            return this;
        }

        public w a() {
            if (this.f4942c.isEmpty()) {
                throw new IllegalStateException("Multipart body must have at least one part.");
            }
            return new w(this.f4940a, this.f4941b, this.f4942c);
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final s f4943a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final b0 f4944b;

        private b(s sVar, b0 b0Var) {
            this.f4943a = sVar;
            this.f4944b = b0Var;
        }

        public static b a(s sVar, b0 b0Var) {
            if (b0Var == null) {
                throw new NullPointerException("body == null");
            }
            if (sVar != null && sVar.a("Content-Type") != null) {
                throw new IllegalArgumentException("Unexpected header: Content-Type");
            }
            if (sVar == null || sVar.a("Content-Length") == null) {
                return new b(sVar, b0Var);
            }
            throw new IllegalArgumentException("Unexpected header: Content-Length");
        }
    }

    static {
        v.a("multipart/alternative");
        v.a("multipart/digest");
        v.a("multipart/parallel");
        f4932f = v.a("multipart/form-data");
        f4933g = new byte[]{58, 32};
        f4934h = new byte[]{13, 10};
        f4935i = new byte[]{45, 45};
    }

    w(i.f fVar, v vVar, List<b> list) {
        this.f4936a = fVar;
        this.f4937b = v.a(vVar + "; boundary=" + fVar.h());
        this.f4938c = h.h0.c.a(list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private long a(i.d dVar, boolean z) {
        i.c cVar;
        if (z) {
            dVar = new i.c();
            cVar = dVar;
        } else {
            cVar = 0;
        }
        int size = this.f4938c.size();
        long j2 = 0;
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = this.f4938c.get(i2);
            s sVar = bVar.f4943a;
            b0 b0Var = bVar.f4944b;
            dVar.write(f4935i);
            dVar.a(this.f4936a);
            dVar.write(f4934h);
            if (sVar != null) {
                int iB = sVar.b();
                for (int i3 = 0; i3 < iB; i3++) {
                    dVar.a(sVar.a(i3)).write(f4933g).a(sVar.b(i3)).write(f4934h);
                }
            }
            v vVarB = b0Var.b();
            if (vVarB != null) {
                dVar.a("Content-Type: ").a(vVarB.toString()).write(f4934h);
            }
            long jA = b0Var.a();
            if (jA != -1) {
                dVar.a("Content-Length: ").g(jA).write(f4934h);
            } else if (z) {
                cVar.l();
                return -1L;
            }
            dVar.write(f4934h);
            if (z) {
                j2 += jA;
            } else {
                b0Var.a(dVar);
            }
            dVar.write(f4934h);
        }
        dVar.write(f4935i);
        dVar.a(this.f4936a);
        dVar.write(f4935i);
        dVar.write(f4934h);
        if (!z) {
            return j2;
        }
        long jS = j2 + cVar.s();
        cVar.l();
        return jS;
    }

    @Override // h.b0
    public long a() {
        long j2 = this.f4939d;
        if (j2 != -1) {
            return j2;
        }
        long jA = a((i.d) null, true);
        this.f4939d = jA;
        return jA;
    }

    @Override // h.b0
    public void a(i.d dVar) {
        a(dVar, false);
    }

    @Override // h.b0
    public v b() {
        return this.f4937b;
    }
}
