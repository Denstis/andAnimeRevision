package k;

import h.a0;
import h.b0;
import h.q;
import h.s;
import h.t;
import h.v;
import h.w;

/* JADX INFO: loaded from: classes.dex */
final class l {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final char[] f5102k = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f5103a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final t f5104b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f5105c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private t.a f5106d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a0.a f5107e = new a0.a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private v f5108f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f5109g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private w.a f5110h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private q.a f5111i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private b0 f5112j;

    private static class a extends b0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final b0 f5113a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final v f5114b;

        a(b0 b0Var, v vVar) {
            this.f5113a = b0Var;
            this.f5114b = vVar;
        }

        @Override // h.b0
        public long a() {
            return this.f5113a.a();
        }

        @Override // h.b0
        public void a(i.d dVar) {
            this.f5113a.a(dVar);
        }

        @Override // h.b0
        public v b() {
            return this.f5114b;
        }
    }

    l(String str, t tVar, String str2, s sVar, v vVar, boolean z, boolean z2, boolean z3) {
        this.f5103a = str;
        this.f5104b = tVar;
        this.f5105c = str2;
        this.f5108f = vVar;
        this.f5109g = z;
        if (sVar != null) {
            this.f5107e.a(sVar);
        }
        if (z2) {
            this.f5111i = new q.a();
        } else if (z3) {
            this.f5110h = new w.a();
            this.f5110h.a(w.f4932f);
        }
    }

    private static String a(String str, boolean z) {
        int length = str.length();
        int iCharCount = 0;
        while (iCharCount < length) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (iCodePointAt < 32 || iCodePointAt >= 127 || " \"<>^`{}|\\?#".indexOf(iCodePointAt) != -1 || (!z && (iCodePointAt == 47 || iCodePointAt == 37))) {
                i.c cVar = new i.c();
                cVar.a(str, 0, iCharCount);
                a(cVar, str, iCharCount, length, z);
                return cVar.q();
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
        return str;
    }

    private static void a(i.c cVar, String str, int i2, int i3, boolean z) {
        i.c cVar2 = null;
        while (i2 < i3) {
            int iCodePointAt = str.codePointAt(i2);
            if (!z || (iCodePointAt != 9 && iCodePointAt != 10 && iCodePointAt != 12 && iCodePointAt != 13)) {
                if (iCodePointAt < 32 || iCodePointAt >= 127 || " \"<>^`{}|\\?#".indexOf(iCodePointAt) != -1 || (!z && (iCodePointAt == 47 || iCodePointAt == 37))) {
                    if (cVar2 == null) {
                        cVar2 = new i.c();
                    }
                    cVar2.c(iCodePointAt);
                    while (!cVar2.c()) {
                        int i4 = cVar2.readByte() & 255;
                        cVar.writeByte(37);
                        cVar.writeByte((int) f5102k[(i4 >> 4) & 15]);
                        cVar.writeByte((int) f5102k[i4 & 15]);
                    }
                } else {
                    cVar.c(iCodePointAt);
                }
            }
            i2 += Character.charCount(iCodePointAt);
        }
    }

    a0 a() {
        t tVarB;
        t.a aVar = this.f5106d;
        if (aVar != null) {
            tVarB = aVar.a();
        } else {
            tVarB = this.f5104b.b(this.f5105c);
            if (tVarB == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.f5104b + ", Relative: " + this.f5105c);
            }
        }
        b0 aVar2 = this.f5112j;
        if (aVar2 == null) {
            q.a aVar3 = this.f5111i;
            if (aVar3 != null) {
                aVar2 = aVar3.a();
            } else {
                w.a aVar4 = this.f5110h;
                if (aVar4 != null) {
                    aVar2 = aVar4.a();
                } else if (this.f5109g) {
                    aVar2 = b0.a((v) null, new byte[0]);
                }
            }
        }
        v vVar = this.f5108f;
        if (vVar != null) {
            if (aVar2 != null) {
                aVar2 = new a(aVar2, vVar);
            } else {
                this.f5107e.a("Content-Type", vVar.toString());
            }
        }
        a0.a aVar5 = this.f5107e;
        aVar5.a(tVarB);
        aVar5.a(this.f5103a, aVar2);
        return aVar5.a();
    }

    void a(b0 b0Var) {
        this.f5112j = b0Var;
    }

    void a(s sVar, b0 b0Var) {
        this.f5110h.a(sVar, b0Var);
    }

    void a(w.b bVar) {
        this.f5110h.a(bVar);
    }

    void a(String str, String str2) {
        if (!"Content-Type".equalsIgnoreCase(str)) {
            this.f5107e.a(str, str2);
            return;
        }
        v vVarA = v.a(str2);
        if (vVarA != null) {
            this.f5108f = vVarA;
            return;
        }
        throw new IllegalArgumentException("Malformed content type: " + str2);
    }

    void a(String str, String str2, boolean z) {
        if (z) {
            this.f5111i.b(str, str2);
        } else {
            this.f5111i.a(str, str2);
        }
    }

    void b(String str, String str2, boolean z) {
        String str3 = this.f5105c;
        if (str3 == null) {
            throw new AssertionError();
        }
        this.f5105c = str3.replace("{" + str + "}", a(str2, z));
    }

    void c(String str, String str2, boolean z) {
        String str3 = this.f5105c;
        if (str3 != null) {
            this.f5106d = this.f5104b.a(str3);
            if (this.f5106d == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.f5104b + ", Relative: " + this.f5105c);
            }
            this.f5105c = null;
        }
        if (z) {
            this.f5106d.a(str, str2);
        } else {
            this.f5106d.b(str, str2);
        }
    }
}
