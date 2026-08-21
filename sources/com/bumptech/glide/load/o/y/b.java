package com.bumptech.glide.load.o.y;

import android.net.Uri;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.o.g;
import com.bumptech.glide.load.o.n;
import com.bumptech.glide.load.o.o;
import com.bumptech.glide.load.o.r;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class b implements n<Uri, InputStream> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Set<String> f3783b = Collections.unmodifiableSet(new HashSet(Arrays.asList("http", "https")));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final n<g, InputStream> f3784a;

    public static class a implements o<Uri, InputStream> {
        @Override // com.bumptech.glide.load.o.o
        public n<Uri, InputStream> a(r rVar) {
            return new b(rVar.a(g.class, InputStream.class));
        }
    }

    public b(n<g, InputStream> nVar) {
        this.f3784a = nVar;
    }

    @Override // com.bumptech.glide.load.o.n
    public n.a<InputStream> a(Uri uri, int i2, int i3, i iVar) {
        return this.f3784a.a(new g(uri.toString()), i2, i3, iVar);
    }

    @Override // com.bumptech.glide.load.o.n
    public boolean a(Uri uri) {
        return f3783b.contains(uri.getScheme());
    }
}
