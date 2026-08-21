package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.q;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class a implements q.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b.h.n.d<b> f1235a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ArrayList<b> f1236b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final ArrayList<b> f1237c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final InterfaceC0022a f1238d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Runnable f1239e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final boolean f1240f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final q f1241g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f1242h;

    /* JADX INFO: renamed from: androidx.recyclerview.widget.a$a, reason: collision with other inner class name */
    interface InterfaceC0022a {
        RecyclerView.d0 a(int i2);

        void a(int i2, int i3);

        void a(int i2, int i3, Object obj);

        void a(b bVar);

        void b(int i2, int i3);

        void b(b bVar);

        void c(int i2, int i3);

        void d(int i2, int i3);
    }

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f1243a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f1244b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Object f1245c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1246d;

        b(int i2, int i3, int i4, Object obj) {
            this.f1243a = i2;
            this.f1244b = i3;
            this.f1246d = i4;
            this.f1245c = obj;
        }

        String a() {
            int i2 = this.f1243a;
            return i2 != 1 ? i2 != 2 ? i2 != 4 ? i2 != 8 ? "??" : "mv" : "up" : "rm" : "add";
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || b.class != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            int i2 = this.f1243a;
            if (i2 != bVar.f1243a) {
                return false;
            }
            if (i2 == 8 && Math.abs(this.f1246d - this.f1244b) == 1 && this.f1246d == bVar.f1244b && this.f1244b == bVar.f1246d) {
                return true;
            }
            if (this.f1246d != bVar.f1246d || this.f1244b != bVar.f1244b) {
                return false;
            }
            Object obj2 = this.f1245c;
            Object obj3 = bVar.f1245c;
            if (obj2 != null) {
                if (!obj2.equals(obj3)) {
                    return false;
                }
            } else if (obj3 != null) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (((this.f1243a * 31) + this.f1244b) * 31) + this.f1246d;
        }

        public String toString() {
            return Integer.toHexString(System.identityHashCode(this)) + "[" + a() + ",s:" + this.f1244b + "c:" + this.f1246d + ",p:" + this.f1245c + "]";
        }
    }

    a(InterfaceC0022a interfaceC0022a) {
        this(interfaceC0022a, false);
    }

    a(InterfaceC0022a interfaceC0022a, boolean z) {
        this.f1235a = new b.h.n.e(30);
        this.f1236b = new ArrayList<>();
        this.f1237c = new ArrayList<>();
        this.f1242h = 0;
        this.f1238d = interfaceC0022a;
        this.f1240f = z;
        this.f1241g = new q(this);
    }

    private void b(b bVar) {
        g(bVar);
    }

    private void c(b bVar) {
        g(bVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int d(int r8, int r9) {
        /*
            r7 = this;
            java.util.ArrayList<androidx.recyclerview.widget.a$b> r0 = r7.f1237c
            int r0 = r0.size()
            r1 = 1
            int r0 = r0 - r1
        L8:
            r2 = 8
            if (r0 < 0) goto L84
            java.util.ArrayList<androidx.recyclerview.widget.a$b> r3 = r7.f1237c
            java.lang.Object r3 = r3.get(r0)
            androidx.recyclerview.widget.a$b r3 = (androidx.recyclerview.widget.a.b) r3
            int r4 = r3.f1243a
            r5 = 2
            if (r4 != r2) goto L65
            int r2 = r3.f1244b
            int r4 = r3.f1246d
            if (r2 >= r4) goto L20
            goto L23
        L20:
            r6 = r4
            r4 = r2
            r2 = r6
        L23:
            if (r8 < r2) goto L4b
            if (r8 > r4) goto L4b
            int r4 = r3.f1244b
            if (r2 != r4) goto L3c
            if (r9 != r1) goto L33
            int r2 = r3.f1246d
            int r2 = r2 + r1
        L30:
            r3.f1246d = r2
            goto L39
        L33:
            if (r9 != r5) goto L39
            int r2 = r3.f1246d
            int r2 = r2 - r1
            goto L30
        L39:
            int r8 = r8 + 1
            goto L81
        L3c:
            if (r9 != r1) goto L43
            int r4 = r4 + 1
        L40:
            r3.f1244b = r4
            goto L48
        L43:
            if (r9 != r5) goto L48
            int r4 = r4 + (-1)
            goto L40
        L48:
            int r8 = r8 + (-1)
            goto L81
        L4b:
            int r2 = r3.f1244b
            if (r8 >= r2) goto L81
            if (r9 != r1) goto L5b
            int r2 = r2 + 1
            r3.f1244b = r2
            int r2 = r3.f1246d
            int r2 = r2 + r1
        L58:
            r3.f1246d = r2
            goto L81
        L5b:
            if (r9 != r5) goto L81
            int r2 = r2 + (-1)
            r3.f1244b = r2
            int r2 = r3.f1246d
            int r2 = r2 - r1
            goto L58
        L65:
            int r2 = r3.f1244b
            if (r2 > r8) goto L75
            if (r4 != r1) goto L6f
            int r2 = r3.f1246d
            int r8 = r8 - r2
            goto L81
        L6f:
            if (r4 != r5) goto L81
            int r2 = r3.f1246d
            int r8 = r8 + r2
            goto L81
        L75:
            if (r9 != r1) goto L7c
            int r2 = r2 + 1
        L79:
            r3.f1244b = r2
            goto L81
        L7c:
            if (r9 != r5) goto L81
            int r2 = r2 + (-1)
            goto L79
        L81:
            int r0 = r0 + (-1)
            goto L8
        L84:
            java.util.ArrayList<androidx.recyclerview.widget.a$b> r9 = r7.f1237c
            int r9 = r9.size()
            int r9 = r9 - r1
        L8b:
            if (r9 < 0) goto Lb1
            java.util.ArrayList<androidx.recyclerview.widget.a$b> r0 = r7.f1237c
            java.lang.Object r0 = r0.get(r9)
            androidx.recyclerview.widget.a$b r0 = (androidx.recyclerview.widget.a.b) r0
            int r1 = r0.f1243a
            if (r1 != r2) goto La2
            int r1 = r0.f1246d
            int r3 = r0.f1244b
            if (r1 == r3) goto La6
            if (r1 >= 0) goto Lae
            goto La6
        La2:
            int r1 = r0.f1246d
            if (r1 > 0) goto Lae
        La6:
            java.util.ArrayList<androidx.recyclerview.widget.a$b> r1 = r7.f1237c
            r1.remove(r9)
            r7.a(r0)
        Lae:
            int r9 = r9 + (-1)
            goto L8b
        Lb1:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.a.d(int, int):int");
    }

    private void d(b bVar) {
        boolean z;
        byte b2;
        int i2 = bVar.f1244b;
        int i3 = bVar.f1246d + i2;
        int i4 = 0;
        byte b3 = -1;
        int i5 = i2;
        while (i5 < i3) {
            if (this.f1238d.a(i5) != null || d(i5)) {
                if (b3 == 0) {
                    f(a(2, i2, i4, null));
                    z = true;
                } else {
                    z = false;
                }
                b2 = 1;
            } else {
                if (b3 == 1) {
                    g(a(2, i2, i4, null));
                    z = true;
                } else {
                    z = false;
                }
                b2 = 0;
            }
            if (z) {
                i5 -= i4;
                i3 -= i4;
                i4 = 1;
            } else {
                i4++;
            }
            i5++;
            b3 = b2;
        }
        if (i4 != bVar.f1246d) {
            a(bVar);
            bVar = a(2, i2, i4, null);
        }
        if (b3 == 0) {
            f(bVar);
        } else {
            g(bVar);
        }
    }

    private boolean d(int i2) {
        int size = this.f1237c.size();
        for (int i3 = 0; i3 < size; i3++) {
            b bVar = this.f1237c.get(i3);
            int i4 = bVar.f1243a;
            if (i4 == 8) {
                if (a(bVar.f1246d, i3 + 1) == i2) {
                    return true;
                }
            } else if (i4 == 1) {
                int i5 = bVar.f1244b;
                int i6 = bVar.f1246d + i5;
                while (i5 < i6) {
                    if (a(i5, i3 + 1) == i2) {
                        return true;
                    }
                    i5++;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    private void e(b bVar) {
        int i2 = bVar.f1244b;
        int i3 = bVar.f1246d + i2;
        int i4 = i2;
        int i5 = 0;
        byte b2 = -1;
        while (i2 < i3) {
            if (this.f1238d.a(i2) != null || d(i2)) {
                if (b2 == 0) {
                    f(a(4, i4, i5, bVar.f1245c));
                    i4 = i2;
                    i5 = 0;
                }
                b2 = 1;
            } else {
                if (b2 == 1) {
                    g(a(4, i4, i5, bVar.f1245c));
                    i4 = i2;
                    i5 = 0;
                }
                b2 = 0;
            }
            i5++;
            i2++;
        }
        if (i5 != bVar.f1246d) {
            Object obj = bVar.f1245c;
            a(bVar);
            bVar = a(4, i4, i5, obj);
        }
        if (b2 == 0) {
            f(bVar);
        } else {
            g(bVar);
        }
    }

    private void f(b bVar) {
        int i2;
        int i3 = bVar.f1243a;
        if (i3 == 1 || i3 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int iD = d(bVar.f1244b, i3);
        int i4 = bVar.f1244b;
        int i5 = bVar.f1243a;
        if (i5 == 2) {
            i2 = 0;
        } else {
            if (i5 != 4) {
                throw new IllegalArgumentException("op should be remove or update." + bVar);
            }
            i2 = 1;
        }
        int i6 = iD;
        int i7 = i4;
        int i8 = 1;
        for (int i9 = 1; i9 < bVar.f1246d; i9++) {
            int iD2 = d(bVar.f1244b + (i2 * i9), bVar.f1243a);
            int i10 = bVar.f1243a;
            if (i10 == 2 ? iD2 == i6 : i10 == 4 && iD2 == i6 + 1) {
                i8++;
            } else {
                b bVarA = a(bVar.f1243a, i6, i8, bVar.f1245c);
                a(bVarA, i7);
                a(bVarA);
                if (bVar.f1243a == 4) {
                    i7 += i8;
                }
                i6 = iD2;
                i8 = 1;
            }
        }
        Object obj = bVar.f1245c;
        a(bVar);
        if (i8 > 0) {
            b bVarA2 = a(bVar.f1243a, i6, i8, obj);
            a(bVarA2, i7);
            a(bVarA2);
        }
    }

    private void g(b bVar) {
        this.f1237c.add(bVar);
        int i2 = bVar.f1243a;
        if (i2 == 1) {
            this.f1238d.c(bVar.f1244b, bVar.f1246d);
            return;
        }
        if (i2 == 2) {
            this.f1238d.b(bVar.f1244b, bVar.f1246d);
            return;
        }
        if (i2 == 4) {
            this.f1238d.a(bVar.f1244b, bVar.f1246d, bVar.f1245c);
        } else {
            if (i2 == 8) {
                this.f1238d.a(bVar.f1244b, bVar.f1246d);
                return;
            }
            throw new IllegalArgumentException("Unknown update op type for " + bVar);
        }
    }

    public int a(int i2) {
        int size = this.f1236b.size();
        for (int i3 = 0; i3 < size; i3++) {
            b bVar = this.f1236b.get(i3);
            int i4 = bVar.f1243a;
            if (i4 != 1) {
                if (i4 == 2) {
                    int i5 = bVar.f1244b;
                    if (i5 <= i2) {
                        int i6 = bVar.f1246d;
                        if (i5 + i6 > i2) {
                            return -1;
                        }
                        i2 -= i6;
                    } else {
                        continue;
                    }
                } else if (i4 == 8) {
                    int i7 = bVar.f1244b;
                    if (i7 == i2) {
                        i2 = bVar.f1246d;
                    } else {
                        if (i7 < i2) {
                            i2--;
                        }
                        if (bVar.f1246d <= i2) {
                            i2++;
                        }
                    }
                }
            } else if (bVar.f1244b <= i2) {
                i2 += bVar.f1246d;
            }
        }
        return i2;
    }

    int a(int i2, int i3) {
        int size = this.f1237c.size();
        while (i3 < size) {
            b bVar = this.f1237c.get(i3);
            int i4 = bVar.f1243a;
            if (i4 == 8) {
                int i5 = bVar.f1244b;
                if (i5 == i2) {
                    i2 = bVar.f1246d;
                } else {
                    if (i5 < i2) {
                        i2--;
                    }
                    if (bVar.f1246d <= i2) {
                        i2++;
                    }
                }
            } else {
                int i6 = bVar.f1244b;
                if (i6 > i2) {
                    continue;
                } else if (i4 == 2) {
                    int i7 = bVar.f1246d;
                    if (i2 < i6 + i7) {
                        return -1;
                    }
                    i2 -= i7;
                } else if (i4 == 1) {
                    i2 += bVar.f1246d;
                }
            }
            i3++;
        }
        return i2;
    }

    @Override // androidx.recyclerview.widget.q.a
    public b a(int i2, int i3, int i4, Object obj) {
        b bVarA = this.f1235a.a();
        if (bVarA == null) {
            return new b(i2, i3, i4, obj);
        }
        bVarA.f1243a = i2;
        bVarA.f1244b = i3;
        bVarA.f1246d = i4;
        bVarA.f1245c = obj;
        return bVarA;
    }

    void a() {
        int size = this.f1237c.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f1238d.b(this.f1237c.get(i2));
        }
        a(this.f1237c);
        this.f1242h = 0;
    }

    @Override // androidx.recyclerview.widget.q.a
    public void a(b bVar) {
        if (this.f1240f) {
            return;
        }
        bVar.f1245c = null;
        this.f1235a.a(bVar);
    }

    void a(b bVar, int i2) {
        this.f1238d.a(bVar);
        int i3 = bVar.f1243a;
        if (i3 == 2) {
            this.f1238d.d(i2, bVar.f1246d);
        } else {
            if (i3 != 4) {
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            }
            this.f1238d.a(i2, bVar.f1246d, bVar.f1245c);
        }
    }

    void a(List<b> list) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            a(list.get(i2));
        }
        list.clear();
    }

    boolean a(int i2, int i3, int i4) {
        if (i2 == i3) {
            return false;
        }
        if (i4 != 1) {
            throw new IllegalArgumentException("Moving more than 1 item is not supported yet");
        }
        this.f1236b.add(a(8, i2, i3, null));
        this.f1242h |= 8;
        return this.f1236b.size() == 1;
    }

    boolean a(int i2, int i3, Object obj) {
        if (i3 < 1) {
            return false;
        }
        this.f1236b.add(a(4, i2, i3, obj));
        this.f1242h |= 4;
        return this.f1236b.size() == 1;
    }

    int b(int i2) {
        return a(i2, 0);
    }

    void b() {
        a();
        int size = this.f1236b.size();
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = this.f1236b.get(i2);
            int i3 = bVar.f1243a;
            if (i3 == 1) {
                this.f1238d.b(bVar);
                this.f1238d.c(bVar.f1244b, bVar.f1246d);
            } else if (i3 == 2) {
                this.f1238d.b(bVar);
                this.f1238d.d(bVar.f1244b, bVar.f1246d);
            } else if (i3 == 4) {
                this.f1238d.b(bVar);
                this.f1238d.a(bVar.f1244b, bVar.f1246d, bVar.f1245c);
            } else if (i3 == 8) {
                this.f1238d.b(bVar);
                this.f1238d.a(bVar.f1244b, bVar.f1246d);
            }
            Runnable runnable = this.f1239e;
            if (runnable != null) {
                runnable.run();
            }
        }
        a(this.f1236b);
        this.f1242h = 0;
    }

    boolean b(int i2, int i3) {
        if (i3 < 1) {
            return false;
        }
        this.f1236b.add(a(1, i2, i3, null));
        this.f1242h |= 1;
        return this.f1236b.size() == 1;
    }

    boolean c() {
        return this.f1236b.size() > 0;
    }

    boolean c(int i2) {
        return (i2 & this.f1242h) != 0;
    }

    boolean c(int i2, int i3) {
        if (i3 < 1) {
            return false;
        }
        this.f1236b.add(a(2, i2, i3, null));
        this.f1242h |= 2;
        return this.f1236b.size() == 1;
    }

    boolean d() {
        return (this.f1237c.isEmpty() || this.f1236b.isEmpty()) ? false : true;
    }

    void e() {
        this.f1241g.a(this.f1236b);
        int size = this.f1236b.size();
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = this.f1236b.get(i2);
            int i3 = bVar.f1243a;
            if (i3 == 1) {
                b(bVar);
            } else if (i3 == 2) {
                d(bVar);
            } else if (i3 == 4) {
                e(bVar);
            } else if (i3 == 8) {
                c(bVar);
            }
            Runnable runnable = this.f1239e;
            if (runnable != null) {
                runnable.run();
            }
        }
        this.f1236b.clear();
    }

    void f() {
        a(this.f1236b);
        a(this.f1237c);
        this.f1242h = 0;
    }
}
