package com.bumptech.glide.load.o;

import android.net.Uri;
import android.text.TextUtils;
import java.net.URL;
import java.security.MessageDigest;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class g implements com.bumptech.glide.load.g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h f3713b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final URL f3714c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f3715d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f3716e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private URL f3717f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile byte[] f3718g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f3719h;

    public g(String str) {
        this(str, h.f3720a);
    }

    public g(String str, h hVar) {
        this.f3714c = null;
        c.a.a.t.j.a(str);
        this.f3715d = str;
        c.a.a.t.j.a(hVar);
        this.f3713b = hVar;
    }

    public g(URL url) {
        this(url, h.f3720a);
    }

    public g(URL url, h hVar) {
        c.a.a.t.j.a(url);
        this.f3714c = url;
        this.f3715d = null;
        c.a.a.t.j.a(hVar);
        this.f3713b = hVar;
    }

    private byte[] d() {
        if (this.f3718g == null) {
            this.f3718g = a().getBytes(com.bumptech.glide.load.g.f3378a);
        }
        return this.f3718g;
    }

    private String e() {
        if (TextUtils.isEmpty(this.f3716e)) {
            String string = this.f3715d;
            if (TextUtils.isEmpty(string)) {
                URL url = this.f3714c;
                c.a.a.t.j.a(url);
                string = url.toString();
            }
            this.f3716e = Uri.encode(string, "@#&=*+-_.,:!?()/~'%;$");
        }
        return this.f3716e;
    }

    private URL f() {
        if (this.f3717f == null) {
            this.f3717f = new URL(e());
        }
        return this.f3717f;
    }

    public String a() {
        String str = this.f3715d;
        if (str != null) {
            return str;
        }
        URL url = this.f3714c;
        c.a.a.t.j.a(url);
        return url.toString();
    }

    @Override // com.bumptech.glide.load.g
    public void a(MessageDigest messageDigest) {
        messageDigest.update(d());
    }

    public Map<String, String> b() {
        return this.f3713b.a();
    }

    public URL c() {
        return f();
    }

    @Override // com.bumptech.glide.load.g
    public boolean equals(Object obj) {
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return a().equals(gVar.a()) && this.f3713b.equals(gVar.f3713b);
    }

    @Override // com.bumptech.glide.load.g
    public int hashCode() {
        if (this.f3719h == 0) {
            this.f3719h = a().hashCode();
            this.f3719h = (this.f3719h * 31) + this.f3713b.hashCode();
        }
        return this.f3719h;
    }

    public String toString() {
        return a();
    }
}
