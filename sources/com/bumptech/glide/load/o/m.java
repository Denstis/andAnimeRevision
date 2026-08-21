package com.bumptech.glide.load.o;

import java.util.Queue;

/* JADX INFO: loaded from: classes.dex */
public class m<A, B> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c.a.a.t.g<b<A>, B> f3732a;

    class a extends c.a.a.t.g<b<A>, B> {
        a(m mVar, long j2) {
            super(j2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // c.a.a.t.g
        public void a(b<A> bVar, B b2) {
            bVar.a();
        }
    }

    static final class b<A> {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final Queue<b<?>> f3733d = c.a.a.t.k.a(0);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f3734a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f3735b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private A f3736c;

        private b() {
        }

        static <A> b<A> a(A a2, int i2, int i3) {
            b<A> bVar;
            synchronized (f3733d) {
                bVar = (b) f3733d.poll();
            }
            if (bVar == null) {
                bVar = new b<>();
            }
            bVar.b(a2, i2, i3);
            return bVar;
        }

        private void b(A a2, int i2, int i3) {
            this.f3736c = a2;
            this.f3735b = i2;
            this.f3734a = i3;
        }

        public void a() {
            synchronized (f3733d) {
                f3733d.offer(this);
            }
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f3735b == bVar.f3735b && this.f3734a == bVar.f3734a && this.f3736c.equals(bVar.f3736c);
        }

        public int hashCode() {
            return (((this.f3734a * 31) + this.f3735b) * 31) + this.f3736c.hashCode();
        }
    }

    public m(long j2) {
        this.f3732a = new a(this, j2);
    }

    public B a(A a2, int i2, int i3) {
        b<A> bVarA = b.a(a2, i2, i3);
        B bA = this.f3732a.a(bVarA);
        bVarA.a();
        return bA;
    }

    public void a(A a2, int i2, int i3, B b2) {
        this.f3732a.b(b.a(a2, i2, i3), b2);
    }
}
