package com.bumptech.glide.load.n.b0;

import c.a.a.t.k;
import c.a.a.t.l.a;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c.a.a.t.g<com.bumptech.glide.load.g, String> f3510a = new c.a.a.t.g<>(1000);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b.h.n.d<b> f3511b = c.a.a.t.l.a.a(10, new a(this));

    class a implements a.d<b> {
        a(j jVar) {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // c.a.a.t.l.a.d
        public b a() {
            try {
                return new b(MessageDigest.getInstance("SHA-256"));
            } catch (NoSuchAlgorithmException e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    private static final class b implements a.f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final MessageDigest f3512b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final c.a.a.t.l.c f3513c = c.a.a.t.l.c.b();

        b(MessageDigest messageDigest) {
            this.f3512b = messageDigest;
        }

        @Override // c.a.a.t.l.a.f
        public c.a.a.t.l.c d() {
            return this.f3513c;
        }
    }

    private String b(com.bumptech.glide.load.g gVar) {
        b bVarA = this.f3511b.a();
        c.a.a.t.j.a(bVarA);
        b bVar = bVarA;
        try {
            gVar.a(bVar.f3512b);
            return k.a(bVar.f3512b.digest());
        } finally {
            this.f3511b.a(bVar);
        }
    }

    public String a(com.bumptech.glide.load.g gVar) {
        String strA;
        synchronized (this.f3510a) {
            strA = this.f3510a.a(gVar);
        }
        if (strA == null) {
            strA = b(gVar);
        }
        synchronized (this.f3510a) {
            this.f3510a.b(gVar, strA);
        }
        return strA;
    }
}
