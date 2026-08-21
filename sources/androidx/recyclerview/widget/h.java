package androidx.recyclerview.widget;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Comparator<g> f1324a = new a();

    static class a implements Comparator<g> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(g gVar, g gVar2) {
            int i2 = gVar.f1339a - gVar2.f1339a;
            return i2 == 0 ? gVar.f1340b - gVar2.f1340b : i2;
        }
    }

    public static abstract class b {
        public abstract int a();

        public abstract boolean a(int i2, int i3);

        public abstract int b();

        public abstract boolean b(int i2, int i3);

        public abstract Object c(int i2, int i3);
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<g> f1325a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int[] f1326b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int[] f1327c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final b f1328d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f1329e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f1330f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final boolean f1331g;

        c(b bVar, List<g> list, int[] iArr, int[] iArr2, boolean z) {
            this.f1325a = list;
            this.f1326b = iArr;
            this.f1327c = iArr2;
            Arrays.fill(this.f1326b, 0);
            Arrays.fill(this.f1327c, 0);
            this.f1328d = bVar;
            this.f1329e = bVar.b();
            this.f1330f = bVar.a();
            this.f1331g = z;
            a();
            b();
        }

        private static e a(List<e> list, int i2, boolean z) {
            int size = list.size() - 1;
            while (size >= 0) {
                e eVar = list.get(size);
                if (eVar.f1332a == i2 && eVar.f1334c == z) {
                    list.remove(size);
                    while (size < list.size()) {
                        list.get(size).f1333b += z ? 1 : -1;
                        size++;
                    }
                    return eVar;
                }
                size--;
            }
            return null;
        }

        private void a() {
            g gVar = this.f1325a.isEmpty() ? null : this.f1325a.get(0);
            if (gVar != null && gVar.f1339a == 0 && gVar.f1340b == 0) {
                return;
            }
            g gVar2 = new g();
            gVar2.f1339a = 0;
            gVar2.f1340b = 0;
            gVar2.f1342d = false;
            gVar2.f1341c = 0;
            gVar2.f1343e = false;
            this.f1325a.add(0, gVar2);
        }

        private void a(int i2, int i3, int i4) {
            if (this.f1326b[i2 - 1] != 0) {
                return;
            }
            a(i2, i3, i4, false);
        }

        private void a(List<e> list, p pVar, int i2, int i3, int i4) {
            if (!this.f1331g) {
                pVar.b(i2, i3);
                return;
            }
            for (int i5 = i3 - 1; i5 >= 0; i5--) {
                int i6 = i4 + i5;
                int i7 = this.f1327c[i6] & 31;
                if (i7 == 0) {
                    pVar.b(i2, 1);
                    Iterator<e> it = list.iterator();
                    while (it.hasNext()) {
                        it.next().f1333b++;
                    }
                } else if (i7 == 4 || i7 == 8) {
                    int i8 = this.f1327c[i6] >> 5;
                    pVar.a(a(list, i8, true).f1333b, i2);
                    if (i7 == 4) {
                        pVar.a(i2, 1, this.f1328d.c(i8, i6));
                    }
                } else {
                    if (i7 != 16) {
                        throw new IllegalStateException("unknown flag for pos " + i6 + " " + Long.toBinaryString(i7));
                    }
                    list.add(new e(i6, i2, false));
                }
            }
        }

        private boolean a(int i2, int i3, int i4, boolean z) {
            int i5;
            int i6;
            int i7;
            if (z) {
                i3--;
                i5 = i2;
                i6 = i3;
            } else {
                i5 = i2 - 1;
                i6 = i5;
            }
            while (i4 >= 0) {
                g gVar = this.f1325a.get(i4);
                int i8 = gVar.f1339a;
                int i9 = gVar.f1341c;
                int i10 = i8 + i9;
                int i11 = gVar.f1340b + i9;
                if (z) {
                    for (int i12 = i5 - 1; i12 >= i10; i12--) {
                        if (this.f1328d.b(i12, i6)) {
                            i7 = this.f1328d.a(i12, i6) ? 8 : 4;
                            this.f1327c[i6] = (i12 << 5) | 16;
                            this.f1326b[i12] = (i6 << 5) | i7;
                            return true;
                        }
                    }
                } else {
                    for (int i13 = i3 - 1; i13 >= i11; i13--) {
                        if (this.f1328d.b(i6, i13)) {
                            i7 = this.f1328d.a(i6, i13) ? 8 : 4;
                            int i14 = i2 - 1;
                            this.f1326b[i14] = (i13 << 5) | 16;
                            this.f1327c[i13] = (i14 << 5) | i7;
                            return true;
                        }
                    }
                }
                i5 = gVar.f1339a;
                i3 = gVar.f1340b;
                i4--;
            }
            return false;
        }

        private void b() {
            int i2 = this.f1329e;
            int i3 = this.f1330f;
            for (int size = this.f1325a.size() - 1; size >= 0; size--) {
                g gVar = this.f1325a.get(size);
                int i4 = gVar.f1339a;
                int i5 = gVar.f1341c;
                int i6 = i4 + i5;
                int i7 = gVar.f1340b + i5;
                if (this.f1331g) {
                    while (i2 > i6) {
                        a(i2, i3, size);
                        i2--;
                    }
                    while (i3 > i7) {
                        b(i2, i3, size);
                        i3--;
                    }
                }
                for (int i8 = 0; i8 < gVar.f1341c; i8++) {
                    int i9 = gVar.f1339a + i8;
                    int i10 = gVar.f1340b + i8;
                    int i11 = this.f1328d.a(i9, i10) ? 1 : 2;
                    this.f1326b[i9] = (i10 << 5) | i11;
                    this.f1327c[i10] = (i9 << 5) | i11;
                }
                i2 = gVar.f1339a;
                i3 = gVar.f1340b;
            }
        }

        private void b(int i2, int i3, int i4) {
            if (this.f1327c[i3 - 1] != 0) {
                return;
            }
            a(i2, i3, i4, true);
        }

        private void b(List<e> list, p pVar, int i2, int i3, int i4) {
            if (!this.f1331g) {
                pVar.c(i2, i3);
                return;
            }
            for (int i5 = i3 - 1; i5 >= 0; i5--) {
                int i6 = i4 + i5;
                int i7 = this.f1326b[i6] & 31;
                if (i7 == 0) {
                    pVar.c(i2 + i5, 1);
                    Iterator<e> it = list.iterator();
                    while (it.hasNext()) {
                        it.next().f1333b--;
                    }
                } else if (i7 == 4 || i7 == 8) {
                    int i8 = this.f1326b[i6] >> 5;
                    e eVarA = a(list, i8, false);
                    pVar.a(i2 + i5, eVarA.f1333b - 1);
                    if (i7 == 4) {
                        pVar.a(eVarA.f1333b - 1, 1, this.f1328d.c(i6, i8));
                    }
                } else {
                    if (i7 != 16) {
                        throw new IllegalStateException("unknown flag for pos " + i6 + " " + Long.toBinaryString(i7));
                    }
                    list.add(new e(i6, i2 + i5, true));
                }
            }
        }

        public void a(p pVar) {
            androidx.recyclerview.widget.e eVar = pVar instanceof androidx.recyclerview.widget.e ? (androidx.recyclerview.widget.e) pVar : new androidx.recyclerview.widget.e(pVar);
            List<e> arrayList = new ArrayList<>();
            int i2 = this.f1329e;
            int i3 = this.f1330f;
            for (int size = this.f1325a.size() - 1; size >= 0; size--) {
                g gVar = this.f1325a.get(size);
                int i4 = gVar.f1341c;
                int i5 = gVar.f1339a + i4;
                int i6 = gVar.f1340b + i4;
                if (i5 < i2) {
                    b(arrayList, eVar, i5, i2 - i5, i5);
                }
                if (i6 < i3) {
                    a(arrayList, eVar, i5, i3 - i6, i6);
                }
                for (int i7 = i4 - 1; i7 >= 0; i7--) {
                    int[] iArr = this.f1326b;
                    int i8 = gVar.f1339a;
                    if ((iArr[i8 + i7] & 31) == 2) {
                        eVar.a(i8 + i7, 1, this.f1328d.c(i8 + i7, gVar.f1340b + i7));
                    }
                }
                i2 = gVar.f1339a;
                i3 = gVar.f1340b;
            }
            eVar.a();
        }
    }

    public static abstract class d<T> {
        public abstract boolean a(T t, T t2);

        public abstract boolean b(T t, T t2);

        public Object c(T t, T t2) {
            return null;
        }
    }

    private static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f1332a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f1333b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f1334c;

        public e(int i2, int i3, boolean z) {
            this.f1332a = i2;
            this.f1333b = i3;
            this.f1334c = z;
        }
    }

    static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f1335a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f1336b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f1337c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1338d;

        public f() {
        }

        public f(int i2, int i3, int i4, int i5) {
            this.f1335a = i2;
            this.f1336b = i3;
            this.f1337c = i4;
            this.f1338d = i5;
        }
    }

    static class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f1339a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f1340b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f1341c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f1342d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f1343e;

        g() {
        }
    }

    public static c a(b bVar) {
        return a(bVar, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00c7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static androidx.recyclerview.widget.h.c a(androidx.recyclerview.widget.h.b r15, boolean r16) {
        /*
            Method dump skipped, instruction units count: 238
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.h.a(androidx.recyclerview.widget.h$b, boolean):androidx.recyclerview.widget.h$c");
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x004d  */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:52:0x00cf
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:226)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:196)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:63)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:96)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:125)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:125)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:102)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static androidx.recyclerview.widget.h.g a(androidx.recyclerview.widget.h.b r19, int r20, int r21, int r22, int r23, int[] r24, int[] r25, int r26) {
        /*
            Method dump skipped, instruction units count: 309
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.h.a(androidx.recyclerview.widget.h$b, int, int, int, int, int[], int[], int):androidx.recyclerview.widget.h$g");
    }
}
