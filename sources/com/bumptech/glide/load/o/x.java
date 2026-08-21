package com.bumptech.glide.load.o;

import android.net.Uri;
import com.bumptech.glide.load.o.n;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class x<Data> implements n<Uri, Data> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Set<String> f3778b = Collections.unmodifiableSet(new HashSet(Arrays.asList("http", "https")));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final n<g, Data> f3779a;

    public static class a implements o<Uri, InputStream> {
        @Override // com.bumptech.glide.load.o.o
        public n<Uri, InputStream> a(r rVar) {
            return new x(rVar.a(g.class, InputStream.class));
        }
    }

    public x(n<g, Data> nVar) {
        this.f3779a = nVar;
    }

    @Override // com.bumptech.glide.load.o.n
    public n.a<Data> a(Uri uri, int i2, int i3, com.bumptech.glide.load.i iVar) {
        return this.f3779a.a(new g(uri.toString()), i2, i3, iVar);
    }

    @Override // com.bumptech.glide.load.o.n
    public boolean a(Uri uri) {
        return f3778b.contains(uri.getScheme());
    }
}
