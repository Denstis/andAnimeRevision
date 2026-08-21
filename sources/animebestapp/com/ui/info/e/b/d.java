package animebestapp.com.ui.info.e.b;

import animebestapp.com.models.Anime;
import g.p.b.f;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
public interface d extends animebestapp.com.ui.a.f.a {

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f1810a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f1811b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f1812c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f1813d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final boolean f1814e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final boolean f1815f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final boolean f1816g;

        public a(int i2, boolean z, int i3, String str, boolean z2, boolean z3, boolean z4) {
            f.b(str, "adUrl");
            this.f1810a = i2;
            this.f1811b = z;
            this.f1812c = i3;
            this.f1813d = str;
            this.f1814e = z2;
            this.f1815f = z3;
            this.f1816g = z4;
        }

        public /* synthetic */ a(int i2, boolean z, int i3, String str, boolean z2, boolean z3, boolean z4, int i4, g.p.b.d dVar) {
            this((i4 & 1) != 0 ? -1 : i2, (i4 & 2) != 0 ? false : z, (i4 & 4) != 0 ? -1 : i3, (i4 & 8) != 0 ? "https://animebestapp.org/donate.html" : str, (i4 & 16) != 0 ? false : z2, z3, z4);
        }

        public static /* synthetic */ a a(a aVar, int i2, boolean z, int i3, String str, boolean z2, boolean z3, boolean z4, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                i2 = aVar.f1810a;
            }
            if ((i4 & 2) != 0) {
                z = aVar.f1811b;
            }
            boolean z5 = z;
            if ((i4 & 4) != 0) {
                i3 = aVar.f1812c;
            }
            int i5 = i3;
            if ((i4 & 8) != 0) {
                str = aVar.f1813d;
            }
            String str2 = str;
            if ((i4 & 16) != 0) {
                z2 = aVar.f1814e;
            }
            boolean z6 = z2;
            if ((i4 & 32) != 0) {
                z3 = aVar.f1815f;
            }
            boolean z7 = z3;
            if ((i4 & 64) != 0) {
                z4 = aVar.f1816g;
            }
            return aVar.a(i2, z5, i5, str2, z6, z7, z4);
        }

        public final a a(int i2, boolean z, int i3, String str, boolean z2, boolean z3, boolean z4) {
            f.b(str, "adUrl");
            return new a(i2, z, i3, str, z2, z3, z4);
        }

        public final String a() {
            return this.f1813d;
        }

        public final int b() {
            return this.f1810a;
        }

        public final int c() {
            return this.f1812c;
        }

        public final boolean d() {
            return this.f1814e;
        }

        public final boolean e() {
            return this.f1816g;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof a) {
                    a aVar = (a) obj;
                    if (this.f1810a == aVar.f1810a) {
                        if (this.f1811b == aVar.f1811b) {
                            if ((this.f1812c == aVar.f1812c) && f.a((Object) this.f1813d, (Object) aVar.f1813d)) {
                                if (this.f1814e == aVar.f1814e) {
                                    if (this.f1815f == aVar.f1815f) {
                                        if (this.f1816g == aVar.f1816g) {
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                return false;
            }
            return true;
        }

        public final boolean f() {
            return this.f1815f;
        }

        public final boolean g() {
            return this.f1811b;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v1, types: [int] */
        /* JADX WARN: Type inference failed for: r1v11, types: [int] */
        /* JADX WARN: Type inference failed for: r1v12 */
        /* JADX WARN: Type inference failed for: r1v13 */
        /* JADX WARN: Type inference failed for: r1v14 */
        /* JADX WARN: Type inference failed for: r1v16 */
        /* JADX WARN: Type inference failed for: r1v17 */
        /* JADX WARN: Type inference failed for: r1v18 */
        /* JADX WARN: Type inference failed for: r1v19 */
        /* JADX WARN: Type inference failed for: r1v20 */
        /* JADX WARN: Type inference failed for: r1v7, types: [int] */
        /* JADX WARN: Type inference failed for: r1v9, types: [int] */
        public int hashCode() {
            int i2 = this.f1810a * 31;
            boolean z = this.f1811b;
            ?? r1 = z;
            if (z) {
                r1 = 1;
            }
            int i3 = (((i2 + r1) * 31) + this.f1812c) * 31;
            String str = this.f1813d;
            int iHashCode = (i3 + (str != null ? str.hashCode() : 0)) * 31;
            boolean z2 = this.f1814e;
            ?? r12 = z2;
            if (z2) {
                r12 = 1;
            }
            int i4 = (iHashCode + r12) * 31;
            boolean z3 = this.f1815f;
            ?? r13 = z3;
            if (z3) {
                r13 = 1;
            }
            int i5 = (i4 + r13) * 31;
            boolean z4 = this.f1816g;
            ?? r14 = z4;
            if (z4) {
                r14 = 1;
            }
            return i5 + r14;
        }

        public String toString() {
            return "State(player=" + this.f1810a + ", isShowPanel=" + this.f1811b + ", position=" + this.f1812c + ", adUrl=" + this.f1813d + ", isEnabled=" + this.f1814e + ", isShowNewWeb=" + this.f1815f + ", isShow1080p=" + this.f1816g + ")";
        }
    }

    void a(a aVar);

    void a(String str, Anime anime, int i2);

    void a(String str, boolean z);

    void a(LinkedHashMap<String, String> linkedHashMap, int i2);

    void b(String str);

    void e(int i2);

    void e(String str);

    void i();
}
