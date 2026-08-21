package com.bumptech.glide.load.n;

import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
final class x implements com.bumptech.glide.load.g {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final c.a.a.t.g<Class<?>, byte[]> f3676j = new c.a.a.t.g<>(50);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.bumptech.glide.load.n.a0.b f3677b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.bumptech.glide.load.g f3678c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.bumptech.glide.load.g f3679d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f3680e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f3681f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Class<?> f3682g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final com.bumptech.glide.load.i f3683h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final com.bumptech.glide.load.l<?> f3684i;

    x(com.bumptech.glide.load.n.a0.b bVar, com.bumptech.glide.load.g gVar, com.bumptech.glide.load.g gVar2, int i2, int i3, com.bumptech.glide.load.l<?> lVar, Class<?> cls, com.bumptech.glide.load.i iVar) {
        this.f3677b = bVar;
        this.f3678c = gVar;
        this.f3679d = gVar2;
        this.f3680e = i2;
        this.f3681f = i3;
        this.f3684i = lVar;
        this.f3682g = cls;
        this.f3683h = iVar;
    }

    private byte[] a() {
        byte[] bArrA = f3676j.a(this.f3682g);
        if (bArrA != null) {
            return bArrA;
        }
        byte[] bytes = this.f3682g.getName().getBytes(com.bumptech.glide.load.g.f3378a);
        f3676j.b(this.f3682g, bytes);
        return bytes;
    }

    @Override // com.bumptech.glide.load.g
    public void a(MessageDigest messageDigest) {
        byte[] bArr = (byte[]) this.f3677b.a(8, byte[].class);
        ByteBuffer.wrap(bArr).putInt(this.f3680e).putInt(this.f3681f).array();
        this.f3679d.a(messageDigest);
        this.f3678c.a(messageDigest);
        messageDigest.update(bArr);
        com.bumptech.glide.load.l<?> lVar = this.f3684i;
        if (lVar != null) {
            lVar.a(messageDigest);
        }
        this.f3683h.a(messageDigest);
        messageDigest.update(a());
        this.f3677b.a(bArr);
    }

    @Override // com.bumptech.glide.load.g
    public boolean equals(Object obj) {
        if (!(obj instanceof x)) {
            return false;
        }
        x xVar = (x) obj;
        return this.f3681f == xVar.f3681f && this.f3680e == xVar.f3680e && c.a.a.t.k.b(this.f3684i, xVar.f3684i) && this.f3682g.equals(xVar.f3682g) && this.f3678c.equals(xVar.f3678c) && this.f3679d.equals(xVar.f3679d) && this.f3683h.equals(xVar.f3683h);
    }

    @Override // com.bumptech.glide.load.g
    public int hashCode() {
        int iHashCode = (((((this.f3678c.hashCode() * 31) + this.f3679d.hashCode()) * 31) + this.f3680e) * 31) + this.f3681f;
        com.bumptech.glide.load.l<?> lVar = this.f3684i;
        if (lVar != null) {
            iHashCode = (iHashCode * 31) + lVar.hashCode();
        }
        return (((iHashCode * 31) + this.f3682g.hashCode()) * 31) + this.f3683h.hashCode();
    }

    public String toString() {
        return "ResourceCacheKey{sourceKey=" + this.f3678c + ", signature=" + this.f3679d + ", width=" + this.f3680e + ", height=" + this.f3681f + ", decodedResourceClass=" + this.f3682g + ", transformation='" + this.f3684i + "', options=" + this.f3683h + '}';
    }
}
