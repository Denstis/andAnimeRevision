package g.q;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public class h extends g {
    public static int a(int i2, int i3) {
        return i2 < i3 ? i3 : i2;
    }

    public static int a(int i2, int i3, int i4) {
        if (i3 <= i4) {
            return i2 < i3 ? i3 : i2 > i4 ? i4 : i2;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i4 + " is less than minimum " + i3 + '.');
    }

    public static int b(int i2, int i3) {
        return i2 > i3 ? i3 : i2;
    }

    public static b c(int i2, int i3) {
        return b.f4391e.a(i2, i3, -1);
    }

    public static d d(int i2, int i3) {
        return i3 <= Integer.MIN_VALUE ? d.f4400g.a() : new d(i2, i3 - 1);
    }
}
