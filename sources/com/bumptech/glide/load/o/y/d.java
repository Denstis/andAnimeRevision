package com.bumptech.glide.load.o.y;

import android.content.Context;
import android.net.Uri;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.o.n;
import com.bumptech.glide.load.o.o;
import com.bumptech.glide.load.o.r;
import com.bumptech.glide.load.p.c.y;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class d implements n<Uri, InputStream> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f3787a;

    public static class a implements o<Uri, InputStream> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f3788a;

        public a(Context context) {
            this.f3788a = context;
        }

        @Override // com.bumptech.glide.load.o.o
        public n<Uri, InputStream> a(r rVar) {
            return new d(this.f3788a);
        }
    }

    public d(Context context) {
        this.f3787a = context.getApplicationContext();
    }

    private boolean a(i iVar) {
        Long l = (Long) iVar.a(y.f3860d);
        return l != null && l.longValue() == -1;
    }

    @Override // com.bumptech.glide.load.o.n
    public n.a<InputStream> a(Uri uri, int i2, int i3, i iVar) {
        if (com.bumptech.glide.load.m.o.b.a(i2, i3) && a(iVar)) {
            return new n.a<>(new c.a.a.s.b(uri), com.bumptech.glide.load.m.o.c.b(this.f3787a, uri));
        }
        return null;
    }

    @Override // com.bumptech.glide.load.o.n
    public boolean a(Uri uri) {
        return com.bumptech.glide.load.m.o.b.c(uri);
    }
}
