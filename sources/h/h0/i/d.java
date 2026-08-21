package h.h0.i;

import com.google.android.exoplayer2.extractor.MpegAudioHeader;
import com.google.firebase.analytics.FirebaseAnalytics;
import i.s;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final c[] f4670a = {new c(c.f4666i, ""), new c(c.f4663f, "GET"), new c(c.f4663f, "POST"), new c(c.f4664g, "/"), new c(c.f4664g, "/index.html"), new c(c.f4665h, "http"), new c(c.f4665h, "https"), new c(c.f4662e, "200"), new c(c.f4662e, "204"), new c(c.f4662e, "206"), new c(c.f4662e, "304"), new c(c.f4662e, "400"), new c(c.f4662e, "404"), new c(c.f4662e, "500"), new c("accept-charset", ""), new c("accept-encoding", "gzip, deflate"), new c("accept-language", ""), new c("accept-ranges", ""), new c("accept", ""), new c("access-control-allow-origin", ""), new c("age", ""), new c("allow", ""), new c("authorization", ""), new c("cache-control", ""), new c("content-disposition", ""), new c("content-encoding", ""), new c("content-language", ""), new c("content-length", ""), new c("content-location", ""), new c("content-range", ""), new c("content-type", ""), new c("cookie", ""), new c("date", ""), new c("etag", ""), new c("expect", ""), new c("expires", ""), new c("from", ""), new c("host", ""), new c("if-match", ""), new c("if-modified-since", ""), new c("if-none-match", ""), new c("if-range", ""), new c("if-unmodified-since", ""), new c("last-modified", ""), new c("link", ""), new c(FirebaseAnalytics.Param.LOCATION, ""), new c("max-forwards", ""), new c("proxy-authenticate", ""), new c("proxy-authorization", ""), new c("range", ""), new c("referer", ""), new c("refresh", ""), new c("retry-after", ""), new c("server", ""), new c("set-cookie", ""), new c("strict-transport-security", ""), new c("transfer-encoding", ""), new c("user-agent", ""), new c("vary", ""), new c("via", ""), new c("www-authenticate", "")};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final Map<i.f, Integer> f4671b = a();

    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<c> f4672a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final i.e f4673b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f4674c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f4675d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        c[] f4676e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f4677f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f4678g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f4679h;

        a(int i2, int i3, s sVar) {
            this.f4672a = new ArrayList();
            this.f4676e = new c[8];
            this.f4677f = this.f4676e.length - 1;
            this.f4678g = 0;
            this.f4679h = 0;
            this.f4674c = i2;
            this.f4675d = i3;
            this.f4673b = i.l.a(sVar);
        }

        a(int i2, s sVar) {
            this(i2, i2, sVar);
        }

        private int a(int i2) {
            return this.f4677f + 1 + i2;
        }

        private void a(int i2, c cVar) {
            this.f4672a.add(cVar);
            int i3 = cVar.f4669c;
            if (i2 != -1) {
                i3 -= this.f4676e[a(i2)].f4669c;
            }
            int i4 = this.f4675d;
            if (i3 > i4) {
                e();
                return;
            }
            int iB = b((this.f4679h + i3) - i4);
            if (i2 == -1) {
                int i5 = this.f4678g + 1;
                c[] cVarArr = this.f4676e;
                if (i5 > cVarArr.length) {
                    c[] cVarArr2 = new c[cVarArr.length * 2];
                    System.arraycopy(cVarArr, 0, cVarArr2, cVarArr.length, cVarArr.length);
                    this.f4677f = this.f4676e.length - 1;
                    this.f4676e = cVarArr2;
                }
                int i6 = this.f4677f;
                this.f4677f = i6 - 1;
                this.f4676e[i6] = cVar;
                this.f4678g++;
            } else {
                this.f4676e[i2 + a(i2) + iB] = cVar;
            }
            this.f4679h += i3;
        }

        private int b(int i2) {
            int i3 = 0;
            if (i2 > 0) {
                int length = this.f4676e.length;
                while (true) {
                    length--;
                    if (length < this.f4677f || i2 <= 0) {
                        break;
                    }
                    c[] cVarArr = this.f4676e;
                    i2 -= cVarArr[length].f4669c;
                    this.f4679h -= cVarArr[length].f4669c;
                    this.f4678g--;
                    i3++;
                }
                c[] cVarArr2 = this.f4676e;
                int i4 = this.f4677f;
                System.arraycopy(cVarArr2, i4 + 1, cVarArr2, i4 + 1 + i3, this.f4678g);
                this.f4677f += i3;
            }
            return i3;
        }

        private i.f c(int i2) throws IOException {
            c cVar;
            if (!d(i2)) {
                int iA = a(i2 - d.f4670a.length);
                if (iA >= 0) {
                    c[] cVarArr = this.f4676e;
                    if (iA < cVarArr.length) {
                        cVar = cVarArr[iA];
                    }
                }
                throw new IOException("Header index too large " + (i2 + 1));
            }
            cVar = d.f4670a[i2];
            return cVar.f4667a;
        }

        private void d() {
            int i2 = this.f4675d;
            int i3 = this.f4679h;
            if (i2 < i3) {
                if (i2 == 0) {
                    e();
                } else {
                    b(i3 - i2);
                }
            }
        }

        private boolean d(int i2) {
            return i2 >= 0 && i2 <= d.f4670a.length - 1;
        }

        private void e() {
            Arrays.fill(this.f4676e, (Object) null);
            this.f4677f = this.f4676e.length - 1;
            this.f4678g = 0;
            this.f4679h = 0;
        }

        private void e(int i2) throws IOException {
            if (d(i2)) {
                this.f4672a.add(d.f4670a[i2]);
                return;
            }
            int iA = a(i2 - d.f4670a.length);
            if (iA >= 0) {
                c[] cVarArr = this.f4676e;
                if (iA < cVarArr.length) {
                    this.f4672a.add(cVarArr[iA]);
                    return;
                }
            }
            throw new IOException("Header index too large " + (i2 + 1));
        }

        private int f() {
            return this.f4673b.readByte() & 255;
        }

        private void f(int i2) {
            a(-1, new c(c(i2), b()));
        }

        private void g() throws IOException {
            i.f fVarB = b();
            d.a(fVarB);
            a(-1, new c(fVarB, b()));
        }

        private void g(int i2) throws IOException {
            this.f4672a.add(new c(c(i2), b()));
        }

        private void h() throws IOException {
            i.f fVarB = b();
            d.a(fVarB);
            this.f4672a.add(new c(fVarB, b()));
        }

        int a(int i2, int i3) {
            int i4 = i2 & i3;
            if (i4 < i3) {
                return i4;
            }
            int i5 = 0;
            while (true) {
                int iF = f();
                if ((iF & 128) == 0) {
                    return i3 + (iF << i5);
                }
                i3 += (iF & 127) << i5;
                i5 += 7;
            }
        }

        public List<c> a() {
            ArrayList arrayList = new ArrayList(this.f4672a);
            this.f4672a.clear();
            return arrayList;
        }

        i.f b() {
            int iF = f();
            boolean z = (iF & 128) == 128;
            int iA = a(iF, 127);
            return z ? i.f.a(k.b().a(this.f4673b.d(iA))) : this.f4673b.b(iA);
        }

        void c() throws IOException {
            while (!this.f4673b.c()) {
                int i2 = this.f4673b.readByte() & 255;
                if (i2 == 128) {
                    throw new IOException("index == 0");
                }
                if ((i2 & 128) == 128) {
                    e(a(i2, 127) - 1);
                } else if (i2 == 64) {
                    g();
                } else if ((i2 & 64) == 64) {
                    f(a(i2, 63) - 1);
                } else if ((i2 & 32) == 32) {
                    this.f4675d = a(i2, 31);
                    int i3 = this.f4675d;
                    if (i3 < 0 || i3 > this.f4674c) {
                        throw new IOException("Invalid dynamic table size update " + this.f4675d);
                    }
                    d();
                } else if (i2 == 16 || i2 == 0) {
                    h();
                } else {
                    g(a(i2, 15) - 1);
                }
            }
        }
    }

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final i.c f4680a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f4681b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f4682c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f4683d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f4684e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        c[] f4685f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f4686g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f4687h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        int f4688i;

        b(int i2, boolean z, i.c cVar) {
            this.f4682c = Integer.MAX_VALUE;
            this.f4685f = new c[8];
            this.f4686g = this.f4685f.length - 1;
            this.f4687h = 0;
            this.f4688i = 0;
            this.f4684e = i2;
            this.f4681b = z;
            this.f4680a = cVar;
        }

        b(i.c cVar) {
            this(MpegAudioHeader.MAX_FRAME_SIZE_BYTES, true, cVar);
        }

        private void a() {
            int i2 = this.f4684e;
            int i3 = this.f4688i;
            if (i2 < i3) {
                if (i2 == 0) {
                    b();
                } else {
                    b(i3 - i2);
                }
            }
        }

        private void a(c cVar) {
            int i2 = cVar.f4669c;
            int i3 = this.f4684e;
            if (i2 > i3) {
                b();
                return;
            }
            b((this.f4688i + i2) - i3);
            int i4 = this.f4687h + 1;
            c[] cVarArr = this.f4685f;
            if (i4 > cVarArr.length) {
                c[] cVarArr2 = new c[cVarArr.length * 2];
                System.arraycopy(cVarArr, 0, cVarArr2, cVarArr.length, cVarArr.length);
                this.f4686g = this.f4685f.length - 1;
                this.f4685f = cVarArr2;
            }
            int i5 = this.f4686g;
            this.f4686g = i5 - 1;
            this.f4685f[i5] = cVar;
            this.f4687h++;
            this.f4688i += i2;
        }

        private int b(int i2) {
            int i3 = 0;
            if (i2 > 0) {
                int length = this.f4685f.length;
                while (true) {
                    length--;
                    if (length < this.f4686g || i2 <= 0) {
                        break;
                    }
                    c[] cVarArr = this.f4685f;
                    i2 -= cVarArr[length].f4669c;
                    this.f4688i -= cVarArr[length].f4669c;
                    this.f4687h--;
                    i3++;
                }
                c[] cVarArr2 = this.f4685f;
                int i4 = this.f4686g;
                System.arraycopy(cVarArr2, i4 + 1, cVarArr2, i4 + 1 + i3, this.f4687h);
                c[] cVarArr3 = this.f4685f;
                int i5 = this.f4686g;
                Arrays.fill(cVarArr3, i5 + 1, i5 + 1 + i3, (Object) null);
                this.f4686g += i3;
            }
            return i3;
        }

        private void b() {
            Arrays.fill(this.f4685f, (Object) null);
            this.f4686g = this.f4685f.length - 1;
            this.f4687h = 0;
            this.f4688i = 0;
        }

        void a(int i2) {
            int iMin = Math.min(i2, 16384);
            int i3 = this.f4684e;
            if (i3 == iMin) {
                return;
            }
            if (iMin < i3) {
                this.f4682c = Math.min(this.f4682c, iMin);
            }
            this.f4683d = true;
            this.f4684e = iMin;
            a();
        }

        void a(int i2, int i3, int i4) {
            int i5;
            i.c cVar;
            if (i2 < i3) {
                cVar = this.f4680a;
                i5 = i2 | i4;
            } else {
                this.f4680a.writeByte(i4 | i3);
                i5 = i2 - i3;
                while (i5 >= 128) {
                    this.f4680a.writeByte(128 | (i5 & 127));
                    i5 >>>= 7;
                }
                cVar = this.f4680a;
            }
            cVar.writeByte(i5);
        }

        void a(i.f fVar) {
            int iE;
            int i2;
            if (!this.f4681b || k.b().a(fVar) >= fVar.e()) {
                iE = fVar.e();
                i2 = 0;
            } else {
                i.c cVar = new i.c();
                k.b().a(fVar, cVar);
                fVar = cVar.p();
                iE = fVar.e();
                i2 = 128;
            }
            a(iE, 127, i2);
            this.f4680a.a(fVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x006c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void a(java.util.List<h.h0.i.c> r14) {
            /*
                Method dump skipped, instruction units count: 233
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: h.h0.i.d.b.a(java.util.List):void");
        }
    }

    static i.f a(i.f fVar) throws IOException {
        int iE = fVar.e();
        for (int i2 = 0; i2 < iE; i2++) {
            byte bA = fVar.a(i2);
            if (bA >= 65 && bA <= 90) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + fVar.h());
            }
        }
        return fVar;
    }

    private static Map<i.f, Integer> a() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(f4670a.length);
        int i2 = 0;
        while (true) {
            c[] cVarArr = f4670a;
            if (i2 >= cVarArr.length) {
                return Collections.unmodifiableMap(linkedHashMap);
            }
            if (!linkedHashMap.containsKey(cVarArr[i2].f4667a)) {
                linkedHashMap.put(f4670a[i2].f4667a, Integer.valueOf(i2));
            }
            i2++;
        }
    }
}
