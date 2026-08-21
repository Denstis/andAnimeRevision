package g.s;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public class n extends m {

    static final class a extends g.p.b.g implements g.p.a.c<CharSequence, Integer, g.f<? extends Integer, ? extends Integer>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f4417b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f4418c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(List list, boolean z) {
            super(2);
            this.f4417b = list;
            this.f4418c = z;
        }

        public final g.f<Integer, Integer> a(CharSequence charSequence, int i2) {
            g.p.b.f.b(charSequence, "receiver$0");
            g.f fVarB = n.b(charSequence, this.f4417b, i2, this.f4418c, false);
            if (fVarB != null) {
                return g.i.a(fVarB.c(), Integer.valueOf(((String) fVarB.d()).length()));
            }
            return null;
        }

        @Override // g.p.a.c
        public /* bridge */ /* synthetic */ g.f<? extends Integer, ? extends Integer> a(CharSequence charSequence, Integer num) {
            return a(charSequence, num.intValue());
        }
    }

    static final class b extends g.p.b.g implements g.p.a.b<g.q.d, String> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CharSequence f4419b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(CharSequence charSequence) {
            super(1);
            this.f4419b = charSequence;
        }

        @Override // g.p.a.b
        public final String a(g.q.d dVar) {
            g.p.b.f.b(dVar, "it");
            return n.a(this.f4419b, dVar);
        }
    }

    public static final int a(CharSequence charSequence, char c2, int i2, boolean z) {
        g.p.b.f.b(charSequence, "receiver$0");
        return (z || !(charSequence instanceof String)) ? a(charSequence, new char[]{c2}, i2, z) : ((String) charSequence).indexOf(c2, i2);
    }

    public static /* synthetic */ int a(CharSequence charSequence, char c2, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        return a(charSequence, c2, i2, z);
    }

    private static final int a(CharSequence charSequence, CharSequence charSequence2, int i2, int i3, boolean z, boolean z2) {
        g.q.b dVar = !z2 ? new g.q.d(g.q.h.a(i2, 0), g.q.h.b(i3, charSequence.length())) : g.q.h.c(g.q.h.b(i2, c(charSequence)), g.q.h.a(i3, 0));
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            int iA = dVar.a();
            int iB = dVar.b();
            int iC = dVar.c();
            if (iC > 0) {
                if (iA > iB) {
                    return -1;
                }
            } else if (iA < iB) {
                return -1;
            }
            while (!m.a((String) charSequence2, 0, (String) charSequence, iA, charSequence2.length(), z)) {
                if (iA == iB) {
                    return -1;
                }
                iA += iC;
            }
            return iA;
        }
        int iA2 = dVar.a();
        int iB2 = dVar.b();
        int iC2 = dVar.c();
        if (iC2 > 0) {
            if (iA2 > iB2) {
                return -1;
            }
        } else if (iA2 < iB2) {
            return -1;
        }
        while (!a(charSequence2, 0, charSequence, iA2, charSequence2.length(), z)) {
            if (iA2 == iB2) {
                return -1;
            }
            iA2 += iC2;
        }
        return iA2;
    }

    static /* synthetic */ int a(CharSequence charSequence, CharSequence charSequence2, int i2, int i3, boolean z, boolean z2, int i4, Object obj) {
        return a(charSequence, charSequence2, i2, i3, z, (i4 & 16) != 0 ? false : z2);
    }

    public static final int a(CharSequence charSequence, String str, int i2, boolean z) {
        g.p.b.f.b(charSequence, "receiver$0");
        g.p.b.f.b(str, "string");
        return (z || !(charSequence instanceof String)) ? a(charSequence, str, i2, charSequence.length(), z, false, 16, null) : ((String) charSequence).indexOf(str, i2);
    }

    public static /* synthetic */ int a(CharSequence charSequence, String str, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        return a(charSequence, str, i2, z);
    }

    public static final int a(CharSequence charSequence, char[] cArr, int i2, boolean z) {
        boolean z2;
        g.p.b.f.b(charSequence, "receiver$0");
        g.p.b.f.b(cArr, "chars");
        if (!z && cArr.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(g.m.h.a(cArr), i2);
        }
        int iA = g.q.h.a(i2, 0);
        int iC = c(charSequence);
        if (iA > iC) {
            return -1;
        }
        while (true) {
            char cCharAt = charSequence.charAt(iA);
            int length = cArr.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length) {
                    z2 = false;
                    break;
                }
                if (g.s.b.a(cArr[i3], cCharAt, z)) {
                    z2 = true;
                    break;
                }
                i3++;
            }
            if (z2) {
                return iA;
            }
            if (iA == iC) {
                return -1;
            }
            iA++;
        }
    }

    private static final g.r.a<g.q.d> a(CharSequence charSequence, String[] strArr, int i2, boolean z, int i3) {
        if (i3 >= 0) {
            return new d(charSequence, i2, i3, new a(g.m.g.a(strArr), z));
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i3 + '.').toString());
    }

    static /* synthetic */ g.r.a a(CharSequence charSequence, String[] strArr, int i2, boolean z, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        if ((i4 & 4) != 0) {
            z = false;
        }
        if ((i4 & 8) != 0) {
            i3 = 0;
        }
        return a(charSequence, strArr, i2, z, i3);
    }

    public static final String a(CharSequence charSequence, g.q.d dVar) {
        g.p.b.f.b(charSequence, "receiver$0");
        g.p.b.f.b(dVar, "range");
        return charSequence.subSequence(dVar.e().intValue(), dVar.d().intValue() + 1).toString();
    }

    private static final List<String> a(CharSequence charSequence, String str, boolean z, int i2) {
        int length = 0;
        if (!(i2 >= 0)) {
            throw new IllegalArgumentException(("Limit must be non-negative, but was " + i2 + '.').toString());
        }
        int iA = a(charSequence, str, 0, z);
        if (iA == -1 || i2 == 1) {
            return g.m.k.a(charSequence.toString());
        }
        boolean z2 = i2 > 0;
        ArrayList arrayList = new ArrayList(z2 ? g.q.h.b(i2, 10) : 10);
        do {
            arrayList.add(charSequence.subSequence(length, iA).toString());
            length = str.length() + iA;
            if (z2 && arrayList.size() == i2 - 1) {
                break;
            }
            iA = a(charSequence, str, length, z);
        } while (iA != -1);
        arrayList.add(charSequence.subSequence(length, charSequence.length()).toString());
        return arrayList;
    }

    public static final List<String> a(CharSequence charSequence, String[] strArr, boolean z, int i2) {
        g.p.b.f.b(charSequence, "receiver$0");
        g.p.b.f.b(strArr, "delimiters");
        if (strArr.length == 1) {
            String str = strArr[0];
            if (!(str.length() == 0)) {
                return a(charSequence, str, z, i2);
            }
        }
        Iterable iterableA = g.r.g.a(a(charSequence, strArr, 0, z, i2, 2, null));
        ArrayList arrayList = new ArrayList(g.m.m.a(iterableA, 10));
        Iterator it = iterableA.iterator();
        while (it.hasNext()) {
            arrayList.add(a(charSequence, (g.q.d) it.next()));
        }
        return arrayList;
    }

    public static /* synthetic */ List a(CharSequence charSequence, String[] strArr, boolean z, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            z = false;
        }
        if ((i3 & 4) != 0) {
            i2 = 0;
        }
        return a(charSequence, strArr, z, i2);
    }

    public static final boolean a(CharSequence charSequence, int i2, CharSequence charSequence2, int i3, int i4, boolean z) {
        g.p.b.f.b(charSequence, "receiver$0");
        g.p.b.f.b(charSequence2, "other");
        if (i3 < 0 || i2 < 0 || i2 > charSequence.length() - i4 || i3 > charSequence2.length() - i4) {
            return false;
        }
        for (int i5 = 0; i5 < i4; i5++) {
            if (!g.s.b.a(charSequence.charAt(i2 + i5), charSequence2.charAt(i3 + i5), z)) {
                return false;
            }
        }
        return true;
    }

    public static boolean a(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        g.p.b.f.b(charSequence, "receiver$0");
        g.p.b.f.b(charSequence2, "other");
        if (charSequence2 instanceof String) {
            if (a(charSequence, (String) charSequence2, 0, z, 2, (Object) null) >= 0) {
                return true;
            }
        } else if (a(charSequence, charSequence2, 0, charSequence.length(), z, false, 16, null) >= 0) {
            return true;
        }
        return false;
    }

    public static /* synthetic */ boolean a(CharSequence charSequence, CharSequence charSequence2, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        return a(charSequence, charSequence2, z);
    }

    public static final int b(CharSequence charSequence, String str, int i2, boolean z) {
        g.p.b.f.b(charSequence, "receiver$0");
        g.p.b.f.b(str, "string");
        return (z || !(charSequence instanceof String)) ? a(charSequence, (CharSequence) str, i2, 0, z, true) : ((String) charSequence).lastIndexOf(str, i2);
    }

    public static /* synthetic */ int b(CharSequence charSequence, String str, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = c(charSequence);
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        return b(charSequence, str, i2, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0090, code lost:
    
        return g.i.a(java.lang.Integer.valueOf(r12), r9);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final g.f<java.lang.Integer, java.lang.String> b(java.lang.CharSequence r10, java.util.Collection<java.lang.String> r11, int r12, boolean r13, boolean r14) {
        /*
            Method dump skipped, instruction units count: 211
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: g.s.n.b(java.lang.CharSequence, java.util.Collection, int, boolean, boolean):g.f");
    }

    public static final g.q.d b(CharSequence charSequence) {
        g.p.b.f.b(charSequence, "receiver$0");
        return new g.q.d(0, charSequence.length() - 1);
    }

    public static final g.r.a<String> b(CharSequence charSequence, String[] strArr, boolean z, int i2) {
        g.p.b.f.b(charSequence, "receiver$0");
        g.p.b.f.b(strArr, "delimiters");
        return g.r.g.a(a(charSequence, strArr, 0, z, i2, 2, null), new b(charSequence));
    }

    public static /* synthetic */ g.r.a b(CharSequence charSequence, String[] strArr, boolean z, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            z = false;
        }
        if ((i3 & 4) != 0) {
            i2 = 0;
        }
        return b(charSequence, strArr, z, i2);
    }

    public static final int c(CharSequence charSequence) {
        g.p.b.f.b(charSequence, "receiver$0");
        return charSequence.length() - 1;
    }

    public static CharSequence d(CharSequence charSequence) {
        g.p.b.f.b(charSequence, "receiver$0");
        int length = charSequence.length() - 1;
        int i2 = 0;
        boolean z = false;
        while (i2 <= length) {
            boolean zA = g.s.a.a(charSequence.charAt(!z ? i2 : length));
            if (z) {
                if (!zA) {
                    break;
                }
                length--;
            } else if (zA) {
                i2++;
            } else {
                z = true;
            }
        }
        return charSequence.subSequence(i2, length + 1);
    }
}
