package h;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class q extends b0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final v f4890c = v.a("application/x-www-form-urlencoded");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<String> f4891a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<String> f4892b;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<String> f4893a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final List<String> f4894b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Charset f4895c;

        public a() {
            this(null);
        }

        public a(Charset charset) {
            this.f4893a = new ArrayList();
            this.f4894b = new ArrayList();
            this.f4895c = charset;
        }

        public a a(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (str2 == null) {
                throw new NullPointerException("value == null");
            }
            this.f4893a.add(t.a(str, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, true, this.f4895c));
            this.f4894b.add(t.a(str2, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, true, this.f4895c));
            return this;
        }

        public q a() {
            return new q(this.f4893a, this.f4894b);
        }

        public a b(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (str2 == null) {
                throw new NullPointerException("value == null");
            }
            this.f4893a.add(t.a(str, " \"':;<=>@[]^`{}|/\\?#&!$(),~", true, false, true, true, this.f4895c));
            this.f4894b.add(t.a(str2, " \"':;<=>@[]^`{}|/\\?#&!$(),~", true, false, true, true, this.f4895c));
            return this;
        }
    }

    q(List<String> list, List<String> list2) {
        this.f4891a = h.h0.c.a(list);
        this.f4892b = h.h0.c.a(list2);
    }

    private long a(i.d dVar, boolean z) {
        i.c cVar = z ? new i.c() : dVar.a();
        int size = this.f4891a.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (i2 > 0) {
                cVar.writeByte(38);
            }
            cVar.a(this.f4891a.get(i2));
            cVar.writeByte(61);
            cVar.a(this.f4892b.get(i2));
        }
        if (!z) {
            return 0L;
        }
        long jS = cVar.s();
        cVar.l();
        return jS;
    }

    @Override // h.b0
    public long a() {
        return a((i.d) null, true);
    }

    @Override // h.b0
    public void a(i.d dVar) {
        a(dVar, false);
    }

    @Override // h.b0
    public v b() {
        return f4890c;
    }
}
