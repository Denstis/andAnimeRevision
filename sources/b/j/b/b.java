package b.j.b;

import android.graphics.Rect;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
class b {

    public interface a<T> {
        void a(T t, Rect rect);
    }

    /* JADX INFO: renamed from: b.j.b.b$b, reason: collision with other inner class name */
    public interface InterfaceC0112b<T, V> {
        int a(T t);

        V a(T t, int i2);
    }

    private static class c<T> implements Comparator<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Rect f2628b = new Rect();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Rect f2629c = new Rect();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f2630d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final a<T> f2631e;

        c(boolean z, a<T> aVar) {
            this.f2630d = z;
            this.f2631e = aVar;
        }

        @Override // java.util.Comparator
        public int compare(T t, T t2) {
            Rect rect = this.f2628b;
            Rect rect2 = this.f2629c;
            this.f2631e.a(t, rect);
            this.f2631e.a(t2, rect2);
            int i2 = rect.top;
            int i3 = rect2.top;
            if (i2 < i3) {
                return -1;
            }
            if (i2 > i3) {
                return 1;
            }
            int i4 = rect.left;
            int i5 = rect2.left;
            if (i4 < i5) {
                return this.f2630d ? 1 : -1;
            }
            if (i4 > i5) {
                return this.f2630d ? -1 : 1;
            }
            int i6 = rect.bottom;
            int i7 = rect2.bottom;
            if (i6 < i7) {
                return -1;
            }
            if (i6 > i7) {
                return 1;
            }
            int i8 = rect.right;
            int i9 = rect2.right;
            if (i8 < i9) {
                return this.f2630d ? 1 : -1;
            }
            if (i8 > i9) {
                return this.f2630d ? -1 : 1;
            }
            return 0;
        }
    }

    private static int a(int i2, int i3) {
        return (i2 * 13 * i2) + (i3 * i3);
    }

    public static <L, T> T a(L l, InterfaceC0112b<L, T> interfaceC0112b, a<T> aVar, T t, int i2, boolean z, boolean z2) {
        int iA = interfaceC0112b.a(l);
        ArrayList arrayList = new ArrayList(iA);
        for (int i3 = 0; i3 < iA; i3++) {
            arrayList.add(interfaceC0112b.a(l, i3));
        }
        Collections.sort(arrayList, new c(z, aVar));
        if (i2 == 1) {
            return (T) b(t, arrayList, z2);
        }
        if (i2 == 2) {
            return (T) a(t, arrayList, z2);
        }
        throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}.");
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x004d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static <L, T> T a(L r7, b.j.b.b.InterfaceC0112b<L, T> r8, b.j.b.b.a<T> r9, T r10, android.graphics.Rect r11, int r12) {
        /*
            android.graphics.Rect r0 = new android.graphics.Rect
            r0.<init>(r11)
            r1 = 17
            r2 = 0
            if (r12 == r1) goto L38
            r1 = 33
            if (r12 == r1) goto L2e
            r1 = 66
            if (r12 == r1) goto L26
            r1 = 130(0x82, float:1.82E-43)
            if (r12 != r1) goto L1e
            int r1 = r11.height()
            int r1 = r1 + 1
            int r1 = -r1
            goto L34
        L1e:
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
            java.lang.String r8 = "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."
            r7.<init>(r8)
            throw r7
        L26:
            int r1 = r11.width()
            int r1 = r1 + 1
            int r1 = -r1
            goto L3e
        L2e:
            int r1 = r11.height()
            int r1 = r1 + 1
        L34:
            r0.offset(r2, r1)
            goto L41
        L38:
            int r1 = r11.width()
            int r1 = r1 + 1
        L3e:
            r0.offset(r1, r2)
        L41:
            r1 = 0
            int r3 = r8.a(r7)
            android.graphics.Rect r4 = new android.graphics.Rect
            r4.<init>()
        L4b:
            if (r2 >= r3) goto L64
            java.lang.Object r5 = r8.a(r7, r2)
            if (r5 != r10) goto L54
            goto L61
        L54:
            r9.a(r5, r4)
            boolean r6 = b(r12, r11, r4, r0)
            if (r6 == 0) goto L61
            r0.set(r4)
            r1 = r5
        L61:
            int r2 = r2 + 1
            goto L4b
        L64:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: b.j.b.b.a(java.lang.Object, b.j.b.b$b, b.j.b.b$a, java.lang.Object, android.graphics.Rect, int):java.lang.Object");
    }

    private static <T> T a(T t, ArrayList<T> arrayList, boolean z) {
        int size = arrayList.size();
        int iLastIndexOf = (t == null ? -1 : arrayList.lastIndexOf(t)) + 1;
        if (iLastIndexOf < size) {
            return arrayList.get(iLastIndexOf);
        }
        if (!z || size <= 0) {
            return null;
        }
        return arrayList.get(0);
    }

    private static boolean a(int i2, Rect rect, Rect rect2) {
        if (i2 != 17) {
            if (i2 != 33) {
                if (i2 != 66) {
                    if (i2 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            return rect2.right >= rect.left && rect2.left <= rect.right;
        }
        return rect2.bottom >= rect.top && rect2.top <= rect.bottom;
    }

    private static boolean a(int i2, Rect rect, Rect rect2, Rect rect3) {
        boolean zA = a(i2, rect, rect2);
        if (a(i2, rect, rect3) || !zA) {
            return false;
        }
        return !b(i2, rect, rect3) || i2 == 17 || i2 == 66 || c(i2, rect, rect2) < e(i2, rect, rect3);
    }

    private static boolean a(Rect rect, Rect rect2, int i2) {
        if (i2 == 17) {
            int i3 = rect.right;
            int i4 = rect2.right;
            return (i3 > i4 || rect.left >= i4) && rect.left > rect2.left;
        }
        if (i2 == 33) {
            int i5 = rect.bottom;
            int i6 = rect2.bottom;
            return (i5 > i6 || rect.top >= i6) && rect.top > rect2.top;
        }
        if (i2 == 66) {
            int i7 = rect.left;
            int i8 = rect2.left;
            return (i7 < i8 || rect.right <= i8) && rect.right < rect2.right;
        }
        if (i2 != 130) {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        int i9 = rect.top;
        int i10 = rect2.top;
        return (i9 < i10 || rect.bottom <= i10) && rect.bottom < rect2.bottom;
    }

    private static <T> T b(T t, ArrayList<T> arrayList, boolean z) {
        int size = arrayList.size();
        int iIndexOf = (t == null ? size : arrayList.indexOf(t)) - 1;
        if (iIndexOf >= 0) {
            return arrayList.get(iIndexOf);
        }
        if (!z || size <= 0) {
            return null;
        }
        return arrayList.get(size - 1);
    }

    private static boolean b(int i2, Rect rect, Rect rect2) {
        if (i2 == 17) {
            return rect.left >= rect2.right;
        }
        if (i2 == 33) {
            return rect.top >= rect2.bottom;
        }
        if (i2 == 66) {
            return rect.right <= rect2.left;
        }
        if (i2 == 130) {
            return rect.bottom <= rect2.top;
        }
        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
    }

    private static boolean b(int i2, Rect rect, Rect rect2, Rect rect3) {
        if (!a(rect, rect2, i2)) {
            return false;
        }
        if (a(rect, rect3, i2) && !a(i2, rect, rect2, rect3)) {
            return !a(i2, rect, rect3, rect2) && a(c(i2, rect, rect2), g(i2, rect, rect2)) < a(c(i2, rect, rect3), g(i2, rect, rect3));
        }
        return true;
    }

    private static int c(int i2, Rect rect, Rect rect2) {
        return Math.max(0, d(i2, rect, rect2));
    }

    private static int d(int i2, Rect rect, Rect rect2) {
        int i3;
        int i4;
        if (i2 == 17) {
            i3 = rect.left;
            i4 = rect2.right;
        } else if (i2 == 33) {
            i3 = rect.top;
            i4 = rect2.bottom;
        } else if (i2 == 66) {
            i3 = rect2.left;
            i4 = rect.right;
        } else {
            if (i2 != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            i3 = rect2.top;
            i4 = rect.bottom;
        }
        return i3 - i4;
    }

    private static int e(int i2, Rect rect, Rect rect2) {
        return Math.max(1, f(i2, rect, rect2));
    }

    private static int f(int i2, Rect rect, Rect rect2) {
        int i3;
        int i4;
        if (i2 == 17) {
            i3 = rect.left;
            i4 = rect2.left;
        } else if (i2 == 33) {
            i3 = rect.top;
            i4 = rect2.top;
        } else if (i2 == 66) {
            i3 = rect2.right;
            i4 = rect.right;
        } else {
            if (i2 != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            i3 = rect2.bottom;
            i4 = rect.bottom;
        }
        return i3 - i4;
    }

    private static int g(int i2, Rect rect, Rect rect2) {
        int iHeight;
        int i3;
        int iHeight2;
        if (i2 == 17) {
            iHeight = rect.top + (rect.height() / 2);
            i3 = rect2.top;
            iHeight2 = rect2.height();
        } else {
            if (i2 != 33) {
                if (i2 != 66) {
                    if (i2 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
                iHeight = rect.top + (rect.height() / 2);
                i3 = rect2.top;
                iHeight2 = rect2.height();
            }
            iHeight = rect.left + (rect.width() / 2);
            i3 = rect2.left;
            iHeight2 = rect2.width();
        }
        return Math.abs(iHeight - (i3 + (iHeight2 / 2)));
    }
}
