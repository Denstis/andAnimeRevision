package g.m;

import java.util.Arrays;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public class g extends f {

    public static final class a extends b<Byte> implements RandomAccess {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ byte[] f4378c;

        a(byte[] bArr) {
            this.f4378c = bArr;
        }

        @Override // g.m.a
        public int a() {
            return this.f4378c.length;
        }

        public boolean a(byte b2) {
            return h.a(this.f4378c, b2);
        }

        public int b(byte b2) {
            return h.b(this.f4378c, b2);
        }

        public int c(byte b2) {
            return h.c(this.f4378c, b2);
        }

        @Override // g.m.a, java.util.Collection
        public final /* bridge */ boolean contains(Object obj) {
            if (obj instanceof Byte) {
                return a(((Number) obj).byteValue());
            }
            return false;
        }

        @Override // g.m.b, java.util.List
        public Byte get(int i2) {
            return Byte.valueOf(this.f4378c[i2]);
        }

        @Override // g.m.b, java.util.List
        public final /* bridge */ int indexOf(Object obj) {
            if (obj instanceof Byte) {
                return b(((Number) obj).byteValue());
            }
            return -1;
        }

        @Override // g.m.a, java.util.Collection
        public boolean isEmpty() {
            return this.f4378c.length == 0;
        }

        @Override // g.m.b, java.util.List
        public final /* bridge */ int lastIndexOf(Object obj) {
            if (obj instanceof Byte) {
                return c(((Number) obj).byteValue());
            }
            return -1;
        }
    }

    public static final List<Byte> a(byte[] bArr) {
        g.p.b.f.b(bArr, "receiver$0");
        return new a(bArr);
    }

    public static <T> List<T> a(T[] tArr) {
        g.p.b.f.b(tArr, "receiver$0");
        List<T> listA = i.a(tArr);
        g.p.b.f.a((Object) listA, "ArraysUtilJVM.asList(this)");
        return listA;
    }

    public static final byte[] a(byte[] bArr, int i2, int i3) {
        g.p.b.f.b(bArr, "receiver$0");
        e.a(i3, bArr.length);
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i2, i3);
        g.p.b.f.a((Object) bArrCopyOfRange, "java.util.Arrays.copyOfR…this, fromIndex, toIndex)");
        return bArrCopyOfRange;
    }
}
