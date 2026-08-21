package b.h.m;

import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b.h.m.d f2546a = new C0104e(null, false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b.h.m.d f2547b = new C0104e(null, true);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final b.h.m.d f2548c = new C0104e(b.f2552a, false);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final b.h.m.d f2549d = new C0104e(b.f2552a, true);

    private static class a implements c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final a f2550b = new a(true);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final boolean f2551a;

        static {
            new a(false);
        }

        private a(boolean z) {
            this.f2551a = z;
        }

        @Override // b.h.m.e.c
        public int a(CharSequence charSequence, int i2, int i3) {
            int i4 = i3 + i2;
            boolean z = false;
            while (i2 < i4) {
                int iA = e.a(Character.getDirectionality(charSequence.charAt(i2)));
                if (iA != 0) {
                    if (iA != 1) {
                        continue;
                        i2++;
                    } else if (!this.f2551a) {
                        return 1;
                    }
                } else if (this.f2551a) {
                    return 0;
                }
                z = true;
                i2++;
            }
            if (z) {
                return this.f2551a ? 1 : 0;
            }
            return 2;
        }
    }

    private static class b implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final b f2552a = new b();

        private b() {
        }

        @Override // b.h.m.e.c
        public int a(CharSequence charSequence, int i2, int i3) {
            int i4 = i3 + i2;
            int iB = 2;
            while (i2 < i4 && iB == 2) {
                iB = e.b(Character.getDirectionality(charSequence.charAt(i2)));
                i2++;
            }
            return iB;
        }
    }

    private interface c {
        int a(CharSequence charSequence, int i2, int i3);
    }

    private static abstract class d implements b.h.m.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c f2553a;

        d(c cVar) {
            this.f2553a = cVar;
        }

        private boolean b(CharSequence charSequence, int i2, int i3) {
            int iA = this.f2553a.a(charSequence, i2, i3);
            if (iA == 0) {
                return true;
            }
            if (iA != 1) {
                return a();
            }
            return false;
        }

        protected abstract boolean a();

        @Override // b.h.m.d
        public boolean a(CharSequence charSequence, int i2, int i3) {
            if (charSequence == null || i2 < 0 || i3 < 0 || charSequence.length() - i3 < i2) {
                throw new IllegalArgumentException();
            }
            return this.f2553a == null ? a() : b(charSequence, i2, i3);
        }
    }

    /* JADX INFO: renamed from: b.h.m.e$e, reason: collision with other inner class name */
    private static class C0104e extends d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f2554b;

        C0104e(c cVar, boolean z) {
            super(cVar);
            this.f2554b = z;
        }

        @Override // b.h.m.e.d
        protected boolean a() {
            return this.f2554b;
        }
    }

    private static class f extends d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final f f2555b = new f();

        f() {
            super(null);
        }

        @Override // b.h.m.e.d
        protected boolean a() {
            return b.h.m.f.b(Locale.getDefault()) == 1;
        }
    }

    static {
        new C0104e(a.f2550b, false);
        f fVar = f.f2555b;
    }

    static int a(int i2) {
        if (i2 != 0) {
            return (i2 == 1 || i2 == 2) ? 0 : 2;
        }
        return 1;
    }

    static int b(int i2) {
        if (i2 != 0) {
            if (i2 == 1 || i2 == 2) {
                return 0;
            }
            switch (i2) {
                case 14:
                case 15:
                    break;
                case 16:
                case 17:
                    return 0;
                default:
                    return 2;
            }
        }
        return 1;
    }
}
