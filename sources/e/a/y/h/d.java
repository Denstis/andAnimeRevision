package e.a.y.h;

/* JADX INFO: loaded from: classes.dex */
public final class d {
    public static int a(int i2) {
        return 1 << (32 - Integer.numberOfLeadingZeros(i2 - 1));
    }
}
