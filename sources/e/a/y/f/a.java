package e.a.y.f;

import com.google.android.exoplayer2.extractor.MpegAudioHeader;
import e.a.y.c.g;
import e.a.y.h.d;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: loaded from: classes.dex */
public final class a<T> implements g<T> {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    static final int f4268j = Integer.getInteger("jctools.spsc.max.lookahead.step", MpegAudioHeader.MAX_FRAME_SIZE_BYTES).intValue();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Object f4269k = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f4271c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long f4272d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final int f4273e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    AtomicReferenceArray<Object> f4274f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final int f4275g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    AtomicReferenceArray<Object> f4276h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final AtomicLong f4270b = new AtomicLong();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final AtomicLong f4277i = new AtomicLong();

    public a(int i2) {
        int iA = d.a(Math.max(8, i2));
        int i3 = iA - 1;
        AtomicReferenceArray<Object> atomicReferenceArray = new AtomicReferenceArray<>(iA + 1);
        this.f4274f = atomicReferenceArray;
        this.f4273e = i3;
        a(iA);
        this.f4276h = atomicReferenceArray;
        this.f4275g = i3;
        this.f4272d = i3 - 1;
        b(0L);
    }

    private static int a(long j2, int i2) {
        int i3 = ((int) j2) & i2;
        b(i3);
        return i3;
    }

    private long a() {
        return this.f4277i.get();
    }

    private static <E> Object a(AtomicReferenceArray<Object> atomicReferenceArray, int i2) {
        return atomicReferenceArray.get(i2);
    }

    private T a(AtomicReferenceArray<Object> atomicReferenceArray, long j2, int i2) {
        this.f4276h = atomicReferenceArray;
        int iA = a(j2, i2);
        T t = (T) a(atomicReferenceArray, iA);
        if (t != null) {
            a(atomicReferenceArray, iA, (Object) null);
            a(j2 + 1);
        }
        return t;
    }

    private void a(int i2) {
        this.f4271c = Math.min(i2 / 4, f4268j);
    }

    private void a(long j2) {
        this.f4277i.lazySet(j2);
    }

    private static void a(AtomicReferenceArray<Object> atomicReferenceArray, int i2, Object obj) {
        atomicReferenceArray.lazySet(i2, obj);
    }

    private void a(AtomicReferenceArray<Object> atomicReferenceArray, long j2, int i2, T t, long j3) {
        AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(atomicReferenceArray.length());
        this.f4274f = atomicReferenceArray2;
        this.f4272d = (j3 + j2) - 1;
        a(atomicReferenceArray2, i2, t);
        a(atomicReferenceArray, atomicReferenceArray2);
        a(atomicReferenceArray, i2, f4269k);
        b(j2 + 1);
    }

    private void a(AtomicReferenceArray<Object> atomicReferenceArray, AtomicReferenceArray<Object> atomicReferenceArray2) {
        int length = atomicReferenceArray.length() - 1;
        b(length);
        a(atomicReferenceArray, length, atomicReferenceArray2);
    }

    private boolean a(AtomicReferenceArray<Object> atomicReferenceArray, T t, long j2, int i2) {
        a(atomicReferenceArray, i2, t);
        b(j2 + 1);
        return true;
    }

    private static int b(int i2) {
        return i2;
    }

    private long b() {
        return this.f4270b.get();
    }

    private AtomicReferenceArray<Object> b(AtomicReferenceArray<Object> atomicReferenceArray, int i2) {
        b(i2);
        AtomicReferenceArray<Object> atomicReferenceArray2 = (AtomicReferenceArray) a(atomicReferenceArray, i2);
        a(atomicReferenceArray, i2, (Object) null);
        return atomicReferenceArray2;
    }

    private void b(long j2) {
        this.f4270b.lazySet(j2);
    }

    private long d() {
        return this.f4277i.get();
    }

    private long e() {
        return this.f4270b.get();
    }

    @Override // e.a.y.c.h
    public boolean b(T t) {
        if (t == null) {
            throw new NullPointerException("Null is not a valid element");
        }
        AtomicReferenceArray<Object> atomicReferenceArray = this.f4274f;
        long jB = b();
        int i2 = this.f4273e;
        int iA = a(jB, i2);
        if (jB < this.f4272d) {
            return a(atomicReferenceArray, t, jB, iA);
        }
        long j2 = ((long) this.f4271c) + jB;
        if (a(atomicReferenceArray, a(j2, i2)) == null) {
            this.f4272d = j2 - 1;
            return a(atomicReferenceArray, t, jB, iA);
        }
        if (a(atomicReferenceArray, a(1 + jB, i2)) == null) {
            return a(atomicReferenceArray, t, jB, iA);
        }
        a(atomicReferenceArray, jB, iA, t, i2);
        return true;
    }

    @Override // e.a.y.c.h
    public T c() {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f4276h;
        long jA = a();
        int i2 = this.f4275g;
        int iA = a(jA, i2);
        T t = (T) a(atomicReferenceArray, iA);
        boolean z = t == f4269k;
        if (t == null || z) {
            if (z) {
                return a(b(atomicReferenceArray, i2 + 1), jA, i2);
            }
            return null;
        }
        a(atomicReferenceArray, iA, (Object) null);
        a(jA + 1);
        return t;
    }

    @Override // e.a.y.c.h
    public void clear() {
        while (true) {
            if (c() == null && isEmpty()) {
                return;
            }
        }
    }

    @Override // e.a.y.c.h
    public boolean isEmpty() {
        return e() == d();
    }
}
