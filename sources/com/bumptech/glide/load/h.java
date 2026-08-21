package com.bumptech.glide.load;

import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public final class h<T> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final b<Object> f3379e = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final T f3380a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b<T> f3381b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f3382c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile byte[] f3383d;

    class a implements b<Object> {
        a() {
        }

        @Override // com.bumptech.glide.load.h.b
        public void a(byte[] bArr, Object obj, MessageDigest messageDigest) {
        }
    }

    public interface b<T> {
        void a(byte[] bArr, T t, MessageDigest messageDigest);
    }

    private h(String str, T t, b<T> bVar) {
        c.a.a.t.j.a(str);
        this.f3382c = str;
        this.f3380a = t;
        c.a.a.t.j.a(bVar);
        this.f3381b = bVar;
    }

    public static <T> h<T> a(String str) {
        return new h<>(str, null, b());
    }

    public static <T> h<T> a(String str, T t) {
        return new h<>(str, t, b());
    }

    public static <T> h<T> a(String str, T t, b<T> bVar) {
        return new h<>(str, t, bVar);
    }

    private static <T> b<T> b() {
        return (b<T>) f3379e;
    }

    private byte[] c() {
        if (this.f3383d == null) {
            this.f3383d = this.f3382c.getBytes(g.f3378a);
        }
        return this.f3383d;
    }

    public T a() {
        return this.f3380a;
    }

    public void a(T t, MessageDigest messageDigest) {
        this.f3381b.a(c(), t, messageDigest);
    }

    public boolean equals(Object obj) {
        if (obj instanceof h) {
            return this.f3382c.equals(((h) obj).f3382c);
        }
        return false;
    }

    public int hashCode() {
        return this.f3382c.hashCode();
    }

    public String toString() {
        return "Option{key='" + this.f3382c + "'}";
    }
}
