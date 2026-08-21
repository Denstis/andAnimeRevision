package com.bumptech.glide.load.p.c;

import android.graphics.Bitmap;
import com.bumptech.glide.load.p.c.l;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class v implements com.bumptech.glide.load.j<InputStream, Bitmap> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l f3850a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.bumptech.glide.load.n.a0.b f3851b;

    static class a implements l.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final s f3852a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final c.a.a.t.d f3853b;

        a(s sVar, c.a.a.t.d dVar) {
            this.f3852a = sVar;
            this.f3853b = dVar;
        }

        @Override // com.bumptech.glide.load.p.c.l.b
        public void a() {
            this.f3852a.j();
        }

        @Override // com.bumptech.glide.load.p.c.l.b
        public void a(com.bumptech.glide.load.n.a0.e eVar, Bitmap bitmap) throws IOException {
            IOException iOExceptionJ = this.f3853b.j();
            if (iOExceptionJ != null) {
                if (bitmap == null) {
                    throw iOExceptionJ;
                }
                eVar.a(bitmap);
                throw iOExceptionJ;
            }
        }
    }

    public v(l lVar, com.bumptech.glide.load.n.a0.b bVar) {
        this.f3850a = lVar;
        this.f3851b = bVar;
    }

    @Override // com.bumptech.glide.load.j
    public com.bumptech.glide.load.n.v<Bitmap> a(InputStream inputStream, int i2, int i3, com.bumptech.glide.load.i iVar) {
        s sVar;
        boolean z;
        if (inputStream instanceof s) {
            sVar = (s) inputStream;
            z = false;
        } else {
            sVar = new s(inputStream, this.f3851b);
            z = true;
        }
        c.a.a.t.d dVarB = c.a.a.t.d.b(sVar);
        try {
            return this.f3850a.a(new c.a.a.t.h(dVarB), i2, i3, iVar, new a(sVar, dVarB));
        } finally {
            dVarB.k();
            if (z) {
                sVar.k();
            }
        }
    }

    @Override // com.bumptech.glide.load.j
    public boolean a(InputStream inputStream, com.bumptech.glide.load.i iVar) {
        return this.f3850a.a(inputStream);
    }
}
