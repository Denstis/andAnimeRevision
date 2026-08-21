package com.bumptech.glide.load.n;

import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
final class d implements com.bumptech.glide.load.g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.bumptech.glide.load.g f3534b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.bumptech.glide.load.g f3535c;

    d(com.bumptech.glide.load.g gVar, com.bumptech.glide.load.g gVar2) {
        this.f3534b = gVar;
        this.f3535c = gVar2;
    }

    @Override // com.bumptech.glide.load.g
    public void a(MessageDigest messageDigest) {
        this.f3534b.a(messageDigest);
        this.f3535c.a(messageDigest);
    }

    @Override // com.bumptech.glide.load.g
    public boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f3534b.equals(dVar.f3534b) && this.f3535c.equals(dVar.f3535c);
    }

    @Override // com.bumptech.glide.load.g
    public int hashCode() {
        return (this.f3534b.hashCode() * 31) + this.f3535c.hashCode();
    }

    public String toString() {
        return "DataCacheKey{sourceKey=" + this.f3534b + ", signature=" + this.f3535c + '}';
    }
}
