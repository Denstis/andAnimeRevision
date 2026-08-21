package com.bumptech.glide.load;

import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public final class i implements g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b.e.a<h<?>, Object> f3384b = new c.a.a.t.b();

    /* JADX WARN: Multi-variable type inference failed */
    private static <T> void a(h<T> hVar, Object obj, MessageDigest messageDigest) {
        hVar.a(obj, messageDigest);
    }

    public <T> i a(h<T> hVar, T t) {
        this.f3384b.put(hVar, t);
        return this;
    }

    public <T> T a(h<T> hVar) {
        return this.f3384b.containsKey(hVar) ? (T) this.f3384b.get(hVar) : hVar.a();
    }

    public void a(i iVar) {
        this.f3384b.a((b.e.g<? extends h<?>, ? extends Object>) iVar.f3384b);
    }

    @Override // com.bumptech.glide.load.g
    public void a(MessageDigest messageDigest) {
        for (int i2 = 0; i2 < this.f3384b.size(); i2++) {
            a(this.f3384b.b(i2), this.f3384b.d(i2), messageDigest);
        }
    }

    @Override // com.bumptech.glide.load.g
    public boolean equals(Object obj) {
        if (obj instanceof i) {
            return this.f3384b.equals(((i) obj).f3384b);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.g
    public int hashCode() {
        return this.f3384b.hashCode();
    }

    public String toString() {
        return "Options{values=" + this.f3384b + '}';
    }
}
