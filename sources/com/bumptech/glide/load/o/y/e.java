package com.bumptech.glide.load.o.y;

import com.bumptech.glide.load.i;
import com.bumptech.glide.load.o.g;
import com.bumptech.glide.load.o.n;
import com.bumptech.glide.load.o.o;
import com.bumptech.glide.load.o.r;
import java.io.InputStream;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public class e implements n<URL, InputStream> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final n<g, InputStream> f3789a;

    public static class a implements o<URL, InputStream> {
        @Override // com.bumptech.glide.load.o.o
        public n<URL, InputStream> a(r rVar) {
            return new e(rVar.a(g.class, InputStream.class));
        }
    }

    public e(n<g, InputStream> nVar) {
        this.f3789a = nVar;
    }

    @Override // com.bumptech.glide.load.o.n
    public n.a<InputStream> a(URL url, int i2, int i3, i iVar) {
        return this.f3789a.a(new g(url), i2, i3, iVar);
    }

    @Override // com.bumptech.glide.load.o.n
    public boolean a(URL url) {
        return true;
    }
}
