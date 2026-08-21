package h.i0;

import com.google.android.exoplayer2.C;
import h.a0;
import h.b0;
import h.c0;
import h.d0;
import h.h0.g.e;
import h.h0.j.f;
import h.i;
import h.s;
import h.u;
import h.v;
import i.c;
import java.io.EOFException;
import java.nio.charset.Charset;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class a implements u {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Charset f4839c = Charset.forName(C.UTF8_NAME);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f4840a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile EnumC0190a f4841b;

    /* JADX INFO: renamed from: h.i0.a$a, reason: collision with other inner class name */
    public enum EnumC0190a {
        NONE,
        BASIC,
        HEADERS,
        BODY
    }

    public interface b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f4847a = new C0191a();

        /* JADX INFO: renamed from: h.i0.a$b$a, reason: collision with other inner class name */
        final class C0191a implements b {
            C0191a() {
            }

            @Override // h.i0.a.b
            public void a(String str) {
                f.c().a(4, str, (Throwable) null);
            }
        }

        void a(String str);
    }

    public a() {
        this(b.f4847a);
    }

    public a(b bVar) {
        this.f4841b = EnumC0190a.NONE;
        this.f4840a = bVar;
    }

    private boolean a(s sVar) {
        String strA = sVar.a("Content-Encoding");
        return (strA == null || strA.equalsIgnoreCase("identity")) ? false : true;
    }

    static boolean a(c cVar) {
        try {
            c cVar2 = new c();
            cVar.a(cVar2, 0L, cVar.s() < 64 ? cVar.s() : 64L);
            for (int i2 = 0; i2 < 16; i2++) {
                if (cVar2.c()) {
                    return true;
                }
                int iR = cVar2.r();
                if (Character.isISOControl(iR) && !Character.isWhitespace(iR)) {
                    return false;
                }
            }
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    @Override // h.u
    public c0 a(u.a aVar) throws Exception {
        boolean z;
        long j2;
        char c2;
        String string;
        b bVar;
        String str;
        b bVar2;
        StringBuilder sb;
        String strE;
        boolean z2;
        EnumC0190a enumC0190a = this.f4841b;
        a0 a0VarE = aVar.e();
        if (enumC0190a == EnumC0190a.NONE) {
            return aVar.a(a0VarE);
        }
        boolean z3 = enumC0190a == EnumC0190a.BODY;
        boolean z4 = z3 || enumC0190a == EnumC0190a.HEADERS;
        b0 b0VarA = a0VarE.a();
        boolean z5 = b0VarA != null;
        i iVarC = aVar.c();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("--> ");
        sb2.append(a0VarE.e());
        sb2.append(' ');
        sb2.append(a0VarE.g());
        sb2.append(iVarC != null ? " " + iVarC.a() : "");
        String string2 = sb2.toString();
        if (!z4 && z5) {
            string2 = string2 + " (" + b0VarA.a() + "-byte body)";
        }
        this.f4840a.a(string2);
        if (z4) {
            if (z5) {
                if (b0VarA.b() != null) {
                    this.f4840a.a("Content-Type: " + b0VarA.b());
                }
                if (b0VarA.a() != -1) {
                    this.f4840a.a("Content-Length: " + b0VarA.a());
                }
            }
            s sVarC = a0VarE.c();
            int iB = sVarC.b();
            int i2 = 0;
            while (i2 < iB) {
                String strA = sVarC.a(i2);
                int i3 = iB;
                if ("Content-Type".equalsIgnoreCase(strA) || "Content-Length".equalsIgnoreCase(strA)) {
                    z2 = z4;
                } else {
                    z2 = z4;
                    this.f4840a.a(strA + ": " + sVarC.b(i2));
                }
                i2++;
                iB = i3;
                z4 = z2;
            }
            z = z4;
            if (!z3 || !z5) {
                bVar2 = this.f4840a;
                sb = new StringBuilder();
                sb.append("--> END ");
                strE = a0VarE.e();
            } else if (a(a0VarE.c())) {
                bVar2 = this.f4840a;
                sb = new StringBuilder();
                sb.append("--> END ");
                sb.append(a0VarE.e());
                strE = " (encoded body omitted)";
            } else {
                c cVar = new c();
                b0VarA.a(cVar);
                Charset charsetA = f4839c;
                v vVarB = b0VarA.b();
                if (vVarB != null) {
                    charsetA = vVarB.a(f4839c);
                }
                this.f4840a.a("");
                if (a(cVar)) {
                    this.f4840a.a(cVar.a(charsetA));
                    bVar2 = this.f4840a;
                    sb = new StringBuilder();
                    sb.append("--> END ");
                    sb.append(a0VarE.e());
                    sb.append(" (");
                    sb.append(b0VarA.a());
                    sb.append("-byte body)");
                } else {
                    bVar2 = this.f4840a;
                    sb = new StringBuilder();
                    sb.append("--> END ");
                    sb.append(a0VarE.e());
                    sb.append(" (binary ");
                    sb.append(b0VarA.a());
                    sb.append("-byte body omitted)");
                }
                bVar2.a(sb.toString());
            }
            sb.append(strE);
            bVar2.a(sb.toString());
        } else {
            z = z4;
        }
        long jNanoTime = System.nanoTime();
        try {
            c0 c0VarA = aVar.a(a0VarE);
            long millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - jNanoTime);
            d0 d0VarJ = c0VarA.j();
            long jK = d0VarJ.k();
            String str2 = jK != -1 ? jK + "-byte" : "unknown-length";
            b bVar3 = this.f4840a;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("<-- ");
            sb3.append(c0VarA.l());
            if (c0VarA.p().isEmpty()) {
                j2 = jK;
                string = "";
                c2 = ' ';
            } else {
                StringBuilder sb4 = new StringBuilder();
                j2 = jK;
                c2 = ' ';
                sb4.append(' ');
                sb4.append(c0VarA.p());
                string = sb4.toString();
            }
            sb3.append(string);
            sb3.append(c2);
            sb3.append(c0VarA.t().g());
            sb3.append(" (");
            sb3.append(millis);
            sb3.append("ms");
            sb3.append(z ? "" : ", " + str2 + " body");
            sb3.append(')');
            bVar3.a(sb3.toString());
            if (z) {
                s sVarN = c0VarA.n();
                int iB2 = sVarN.b();
                for (int i4 = 0; i4 < iB2; i4++) {
                    this.f4840a.a(sVarN.a(i4) + ": " + sVarN.b(i4));
                }
                if (!z3 || !e.b(c0VarA)) {
                    bVar = this.f4840a;
                    str = "<-- END HTTP";
                } else if (a(c0VarA.n())) {
                    bVar = this.f4840a;
                    str = "<-- END HTTP (encoded body omitted)";
                } else {
                    i.e eVarM = d0VarJ.m();
                    eVarM.a(Long.MAX_VALUE);
                    c cVarA = eVarM.a();
                    Charset charsetA2 = f4839c;
                    v vVarL = d0VarJ.l();
                    if (vVarL != null) {
                        charsetA2 = vVarL.a(f4839c);
                    }
                    if (!a(cVarA)) {
                        this.f4840a.a("");
                        this.f4840a.a("<-- END HTTP (binary " + cVarA.s() + "-byte body omitted)");
                        return c0VarA;
                    }
                    if (j2 != 0) {
                        this.f4840a.a("");
                        this.f4840a.a(cVarA.m8clone().a(charsetA2));
                    }
                    this.f4840a.a("<-- END HTTP (" + cVarA.s() + "-byte body)");
                }
                bVar.a(str);
            }
            return c0VarA;
        } catch (Exception e2) {
            this.f4840a.a("<-- HTTP FAILED: " + e2);
            throw e2;
        }
    }

    public a a(EnumC0190a enumC0190a) {
        if (enumC0190a == null) {
            throw new NullPointerException("level == null. Use Level.NONE instead.");
        }
        this.f4841b = enumC0190a;
        return this;
    }
}
