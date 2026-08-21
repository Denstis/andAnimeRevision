package b.k.a;

import android.util.Log;
import b.k.a.d;
import b.k.a.i;
import b.k.a.j;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
final class a extends o implements i.a, j.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final j f2644a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f2646c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f2647d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f2648e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f2649f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f2650g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f2651h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    boolean f2652i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    String f2654k;
    boolean l;
    int n;
    CharSequence o;
    int p;
    CharSequence q;
    ArrayList<String> r;
    ArrayList<String> s;
    ArrayList<Runnable> u;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ArrayList<C0114a> f2645b = new ArrayList<>();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    boolean f2653j = true;
    int m = -1;
    boolean t = false;

    /* JADX INFO: renamed from: b.k.a.a$a, reason: collision with other inner class name */
    static final class C0114a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f2655a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        d f2656b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f2657c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f2658d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f2659e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f2660f;

        C0114a() {
        }

        C0114a(int i2, d dVar) {
            this.f2655a = i2;
            this.f2656b = dVar;
        }
    }

    public a(j jVar) {
        this.f2644a = jVar;
    }

    private void a(int i2, d dVar, String str, int i3) {
        Class<?> cls = dVar.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        dVar.mFragmentManager = this.f2644a;
        if (str != null) {
            String str2 = dVar.mTag;
            if (str2 != null && !str.equals(str2)) {
                throw new IllegalStateException("Can't change tag of fragment " + dVar + ": was " + dVar.mTag + " now " + str);
            }
            dVar.mTag = str;
        }
        if (i2 != 0) {
            if (i2 == -1) {
                throw new IllegalArgumentException("Can't add fragment " + dVar + " with tag " + str + " to container view with no id");
            }
            int i4 = dVar.mFragmentId;
            if (i4 != 0 && i4 != i2) {
                throw new IllegalStateException("Can't change container ID of fragment " + dVar + ": was " + dVar.mFragmentId + " now " + i2);
            }
            dVar.mFragmentId = i2;
            dVar.mContainerId = i2;
        }
        a(new C0114a(i3, dVar));
    }

    private static boolean b(C0114a c0114a) {
        d dVar = c0114a.f2656b;
        return (dVar == null || !dVar.mAdded || dVar.mView == null || dVar.mDetached || dVar.mHidden || !dVar.isPostponed()) ? false : true;
    }

    @Override // b.k.a.o
    public int a() {
        return a(false);
    }

    int a(boolean z) {
        if (this.l) {
            throw new IllegalStateException("commit already called");
        }
        if (j.F) {
            Log.v("FragmentManager", "Commit: " + this);
            PrintWriter printWriter = new PrintWriter(new b.h.n.b("FragmentManager"));
            a("  ", (FileDescriptor) null, printWriter, (String[]) null);
            printWriter.close();
        }
        this.l = true;
        this.m = this.f2652i ? this.f2644a.b(this) : -1;
        this.f2644a.a(this, z);
        return this.m;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00b6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    b.k.a.d a(java.util.ArrayList<b.k.a.d> r17, b.k.a.d r18) {
        /*
            r16 = this;
            r0 = r16
            r1 = r17
            r4 = r18
            r3 = 0
        L7:
            java.util.ArrayList<b.k.a.a$a> r5 = r0.f2645b
            int r5 = r5.size()
            if (r3 >= r5) goto Lbe
            java.util.ArrayList<b.k.a.a$a> r5 = r0.f2645b
            java.lang.Object r5 = r5.get(r3)
            b.k.a.a$a r5 = (b.k.a.a.C0114a) r5
            int r6 = r5.f2655a
            r7 = 0
            r8 = 1
            if (r6 == r8) goto Lb6
            r9 = 2
            r10 = 3
            r11 = 9
            if (r6 == r9) goto L58
            if (r6 == r10) goto L41
            r9 = 6
            if (r6 == r9) goto L41
            r7 = 7
            if (r6 == r7) goto Lb6
            r7 = 8
            if (r6 == r7) goto L31
            goto Lbb
        L31:
            java.util.ArrayList<b.k.a.a$a> r6 = r0.f2645b
            b.k.a.a$a r7 = new b.k.a.a$a
            r7.<init>(r11, r4)
            r6.add(r3, r7)
            int r3 = r3 + 1
            b.k.a.d r4 = r5.f2656b
            goto Lbb
        L41:
            b.k.a.d r6 = r5.f2656b
            r1.remove(r6)
            b.k.a.d r5 = r5.f2656b
            if (r5 != r4) goto Lbb
            java.util.ArrayList<b.k.a.a$a> r4 = r0.f2645b
            b.k.a.a$a r6 = new b.k.a.a$a
            r6.<init>(r11, r5)
            r4.add(r3, r6)
            int r3 = r3 + 1
            r4 = r7
            goto Lbb
        L58:
            b.k.a.d r6 = r5.f2656b
            int r9 = r6.mContainerId
            int r12 = r17.size()
            int r12 = r12 - r8
            r13 = r4
            r4 = r3
            r3 = 0
        L64:
            if (r12 < 0) goto La4
            java.lang.Object r14 = r1.get(r12)
            b.k.a.d r14 = (b.k.a.d) r14
            int r15 = r14.mContainerId
            if (r15 != r9) goto La1
            if (r14 != r6) goto L74
            r3 = 1
            goto La1
        L74:
            if (r14 != r13) goto L83
            java.util.ArrayList<b.k.a.a$a> r13 = r0.f2645b
            b.k.a.a$a r15 = new b.k.a.a$a
            r15.<init>(r11, r14)
            r13.add(r4, r15)
            int r4 = r4 + 1
            r13 = r7
        L83:
            b.k.a.a$a r15 = new b.k.a.a$a
            r15.<init>(r10, r14)
            int r2 = r5.f2657c
            r15.f2657c = r2
            int r2 = r5.f2659e
            r15.f2659e = r2
            int r2 = r5.f2658d
            r15.f2658d = r2
            int r2 = r5.f2660f
            r15.f2660f = r2
            java.util.ArrayList<b.k.a.a$a> r2 = r0.f2645b
            r2.add(r4, r15)
            r1.remove(r14)
            int r4 = r4 + r8
        La1:
            int r12 = r12 + (-1)
            goto L64
        La4:
            if (r3 == 0) goto Lae
            java.util.ArrayList<b.k.a.a$a> r2 = r0.f2645b
            r2.remove(r4)
            int r4 = r4 + (-1)
            goto Lb3
        Lae:
            r5.f2655a = r8
            r1.add(r6)
        Lb3:
            r3 = r4
            r4 = r13
            goto Lbb
        Lb6:
            b.k.a.d r2 = r5.f2656b
            r1.add(r2)
        Lbb:
            int r3 = r3 + r8
            goto L7
        Lbe:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: b.k.a.a.a(java.util.ArrayList, b.k.a.d):b.k.a.d");
    }

    @Override // b.k.a.o
    public o a(int i2, d dVar, String str) {
        a(i2, dVar, str, 1);
        return this;
    }

    @Override // b.k.a.o
    public o a(d dVar) {
        a(new C0114a(7, dVar));
        return this;
    }

    @Override // b.k.a.o
    public o a(d dVar, String str) {
        a(0, dVar, str, 1);
        return this;
    }

    @Override // b.k.a.o
    public o a(String str) {
        if (!this.f2653j) {
            throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
        }
        this.f2652i = true;
        this.f2654k = str;
        return this;
    }

    void a(int i2) {
        if (this.f2652i) {
            if (j.F) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i2);
            }
            int size = this.f2645b.size();
            for (int i3 = 0; i3 < size; i3++) {
                C0114a c0114a = this.f2645b.get(i3);
                d dVar = c0114a.f2656b;
                if (dVar != null) {
                    dVar.mBackStackNesting += i2;
                    if (j.F) {
                        Log.v("FragmentManager", "Bump nesting of " + c0114a.f2656b + " to " + c0114a.f2656b.mBackStackNesting);
                    }
                }
            }
        }
    }

    void a(C0114a c0114a) {
        this.f2645b.add(c0114a);
        c0114a.f2657c = this.f2646c;
        c0114a.f2658d = this.f2647d;
        c0114a.f2659e = this.f2648e;
        c0114a.f2660f = this.f2649f;
    }

    void a(d.f fVar) {
        for (int i2 = 0; i2 < this.f2645b.size(); i2++) {
            C0114a c0114a = this.f2645b.get(i2);
            if (b(c0114a)) {
                c0114a.f2656b.setOnStartEnterTransitionListener(fVar);
            }
        }
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        a(str, printWriter, true);
    }

    public void a(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.f2654k);
            printWriter.print(" mIndex=");
            printWriter.print(this.m);
            printWriter.print(" mCommitted=");
            printWriter.println(this.l);
            if (this.f2650g != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f2650g));
                printWriter.print(" mTransitionStyle=#");
                printWriter.println(Integer.toHexString(this.f2651h));
            }
            if (this.f2646c != 0 || this.f2647d != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f2646c));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f2647d));
            }
            if (this.f2648e != 0 || this.f2649f != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f2648e));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f2649f));
            }
            if (this.n != 0 || this.o != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.n));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.o);
            }
            if (this.p != 0 || this.q != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.p));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.q);
            }
        }
        if (this.f2645b.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        String str3 = str + "    ";
        int size = this.f2645b.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0114a c0114a = this.f2645b.get(i2);
            switch (c0114a.f2655a) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case 7:
                    str2 = "ATTACH";
                    break;
                case 8:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                default:
                    str2 = "cmd=" + c0114a.f2655a;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i2);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(c0114a.f2656b);
            if (z) {
                if (c0114a.f2657c != 0 || c0114a.f2658d != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(c0114a.f2657c));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(c0114a.f2658d));
                }
                if (c0114a.f2659e != 0 || c0114a.f2660f != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(c0114a.f2659e));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(c0114a.f2660f));
                }
            }
        }
    }

    boolean a(ArrayList<a> arrayList, int i2, int i3) {
        if (i3 == i2) {
            return false;
        }
        int size = this.f2645b.size();
        int i4 = -1;
        for (int i5 = 0; i5 < size; i5++) {
            d dVar = this.f2645b.get(i5).f2656b;
            int i6 = dVar != null ? dVar.mContainerId : 0;
            if (i6 != 0 && i6 != i4) {
                for (int i7 = i2; i7 < i3; i7++) {
                    a aVar = arrayList.get(i7);
                    int size2 = aVar.f2645b.size();
                    for (int i8 = 0; i8 < size2; i8++) {
                        d dVar2 = aVar.f2645b.get(i8).f2656b;
                        if ((dVar2 != null ? dVar2.mContainerId : 0) == i6) {
                            return true;
                        }
                    }
                }
                i4 = i6;
            }
        }
        return false;
    }

    @Override // b.k.a.j.l
    public boolean a(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2) {
        if (j.F) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(false);
        if (!this.f2652i) {
            return true;
        }
        this.f2644a.a(this);
        return true;
    }

    @Override // b.k.a.o
    public int b() {
        return a(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    b.k.a.d b(java.util.ArrayList<b.k.a.d> r5, b.k.a.d r6) {
        /*
            r4 = this;
            r0 = 0
        L1:
            java.util.ArrayList<b.k.a.a$a> r1 = r4.f2645b
            int r1 = r1.size()
            if (r0 >= r1) goto L30
            java.util.ArrayList<b.k.a.a$a> r1 = r4.f2645b
            java.lang.Object r1 = r1.get(r0)
            b.k.a.a$a r1 = (b.k.a.a.C0114a) r1
            int r2 = r1.f2655a
            r3 = 1
            if (r2 == r3) goto L28
            r3 = 3
            if (r2 == r3) goto L22
            switch(r2) {
                case 6: goto L22;
                case 7: goto L28;
                case 8: goto L20;
                case 9: goto L1d;
                default: goto L1c;
            }
        L1c:
            goto L2d
        L1d:
            b.k.a.d r6 = r1.f2656b
            goto L2d
        L20:
            r6 = 0
            goto L2d
        L22:
            b.k.a.d r1 = r1.f2656b
            r5.add(r1)
            goto L2d
        L28:
            b.k.a.d r1 = r1.f2656b
            r5.remove(r1)
        L2d:
            int r0 = r0 + 1
            goto L1
        L30:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: b.k.a.a.b(java.util.ArrayList, b.k.a.d):b.k.a.d");
    }

    @Override // b.k.a.o
    public o b(int i2, d dVar, String str) {
        if (i2 == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        a(i2, dVar, str, 2);
        return this;
    }

    @Override // b.k.a.o
    public o b(d dVar) {
        a(new C0114a(6, dVar));
        return this;
    }

    void b(boolean z) {
        for (int size = this.f2645b.size() - 1; size >= 0; size--) {
            C0114a c0114a = this.f2645b.get(size);
            d dVar = c0114a.f2656b;
            if (dVar != null) {
                dVar.setNextTransition(j.e(this.f2650g), this.f2651h);
            }
            switch (c0114a.f2655a) {
                case 1:
                    dVar.setNextAnim(c0114a.f2660f);
                    this.f2644a.k(dVar);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + c0114a.f2655a);
                case 3:
                    dVar.setNextAnim(c0114a.f2659e);
                    this.f2644a.a(dVar, false);
                    break;
                case 4:
                    dVar.setNextAnim(c0114a.f2659e);
                    this.f2644a.o(dVar);
                    break;
                case 5:
                    dVar.setNextAnim(c0114a.f2660f);
                    this.f2644a.e(dVar);
                    break;
                case 6:
                    dVar.setNextAnim(c0114a.f2659e);
                    this.f2644a.a(dVar);
                    break;
                case 7:
                    dVar.setNextAnim(c0114a.f2660f);
                    this.f2644a.c(dVar);
                    break;
                case 8:
                    this.f2644a.n(null);
                    break;
                case 9:
                    this.f2644a.n(dVar);
                    break;
            }
            if (!this.t && c0114a.f2655a != 3 && dVar != null) {
                this.f2644a.h(dVar);
            }
        }
        if (this.t || !z) {
            return;
        }
        j jVar = this.f2644a;
        jVar.a(jVar.m, true);
    }

    boolean b(int i2) {
        int size = this.f2645b.size();
        for (int i3 = 0; i3 < size; i3++) {
            d dVar = this.f2645b.get(i3).f2656b;
            int i4 = dVar != null ? dVar.mContainerId : 0;
            if (i4 != 0 && i4 == i2) {
                return true;
            }
        }
        return false;
    }

    @Override // b.k.a.o
    public o c(d dVar) {
        a(new C0114a(3, dVar));
        return this;
    }

    @Override // b.k.a.o
    public void c() {
        e();
        this.f2644a.b((j.l) this, false);
    }

    @Override // b.k.a.o
    public void d() {
        e();
        this.f2644a.b((j.l) this, true);
    }

    public o e() {
        if (this.f2652i) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        this.f2653j = false;
        return this;
    }

    void f() {
        int size = this.f2645b.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0114a c0114a = this.f2645b.get(i2);
            d dVar = c0114a.f2656b;
            if (dVar != null) {
                dVar.setNextTransition(this.f2650g, this.f2651h);
            }
            switch (c0114a.f2655a) {
                case 1:
                    dVar.setNextAnim(c0114a.f2657c);
                    this.f2644a.a(dVar, false);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + c0114a.f2655a);
                case 3:
                    dVar.setNextAnim(c0114a.f2658d);
                    this.f2644a.k(dVar);
                    break;
                case 4:
                    dVar.setNextAnim(c0114a.f2658d);
                    this.f2644a.e(dVar);
                    break;
                case 5:
                    dVar.setNextAnim(c0114a.f2657c);
                    this.f2644a.o(dVar);
                    break;
                case 6:
                    dVar.setNextAnim(c0114a.f2658d);
                    this.f2644a.c(dVar);
                    break;
                case 7:
                    dVar.setNextAnim(c0114a.f2657c);
                    this.f2644a.a(dVar);
                    break;
                case 8:
                    this.f2644a.n(dVar);
                    break;
                case 9:
                    this.f2644a.n(null);
                    break;
            }
            if (!this.t && c0114a.f2655a != 1 && dVar != null) {
                this.f2644a.h(dVar);
            }
        }
        if (this.t) {
            return;
        }
        j jVar = this.f2644a;
        jVar.a(jVar.m, true);
    }

    public String g() {
        return this.f2654k;
    }

    boolean h() {
        for (int i2 = 0; i2 < this.f2645b.size(); i2++) {
            if (b(this.f2645b.get(i2))) {
                return true;
            }
        }
        return false;
    }

    public void i() {
        ArrayList<Runnable> arrayList = this.u;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.u.get(i2).run();
            }
            this.u = null;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.m >= 0) {
            sb.append(" #");
            sb.append(this.m);
        }
        if (this.f2654k != null) {
            sb.append(" ");
            sb.append(this.f2654k);
        }
        sb.append("}");
        return sb.toString();
    }
}
