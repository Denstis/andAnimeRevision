package com.bumptech.glide.load.o.y;

import android.content.Context;
import android.net.Uri;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.o.n;
import com.bumptech.glide.load.o.o;
import com.bumptech.glide.load.o.r;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class c implements n<Uri, InputStream> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f3785a;

    public static class a implements o<Uri, InputStream> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f3786a;

        public a(Context context) {
            this.f3786a = context;
        }

        @Override // com.bumptech.glide.load.o.o
        public n<Uri, InputStream> a(r rVar) {
            return new c(this.f3786a);
        }
    }

    public c(Context context) {
        this.f3785a = context.getApplicationContext();
    }

    @Override // com.bumptech.glide.load.o.n
    public n.a<InputStream> a(Uri uri, int i2, int i3, i iVar) {
        if (com.bumptech.glide.load.m.o.b.a(i2, i3)) {
            return new n.a<>(new c.a.a.s.b(uri), com.bumptech.glide.load.m.o.c.a(this.f3785a, uri));
        }
        return null;
    }

    @Override // com.bumptech.glide.load.o.n
    public boolean a(Uri uri) {
        return com.bumptech.glide.load.m.o.b.a(uri);
    }
}
