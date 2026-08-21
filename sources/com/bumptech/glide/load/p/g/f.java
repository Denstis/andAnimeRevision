package com.bumptech.glide.load.p.g;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.load.l;
import com.bumptech.glide.load.n.v;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public class f implements l<c> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final l<Bitmap> f3894b;

    public f(l<Bitmap> lVar) {
        c.a.a.t.j.a(lVar);
        this.f3894b = lVar;
    }

    @Override // com.bumptech.glide.load.l
    public v<c> a(Context context, v<c> vVar, int i2, int i3) {
        c cVar = vVar.get();
        v<Bitmap> dVar = new com.bumptech.glide.load.p.c.d(cVar.c(), c.a.a.c.b(context).c());
        v<Bitmap> vVarA = this.f3894b.a(context, dVar, i2, i3);
        if (!dVar.equals(vVarA)) {
            dVar.a();
        }
        cVar.a(this.f3894b, vVarA.get());
        return vVar;
    }

    @Override // com.bumptech.glide.load.g
    public void a(MessageDigest messageDigest) {
        this.f3894b.a(messageDigest);
    }

    @Override // com.bumptech.glide.load.g
    public boolean equals(Object obj) {
        if (obj instanceof f) {
            return this.f3894b.equals(((f) obj).f3894b);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.g
    public int hashCode() {
        return this.f3894b.hashCode();
    }
}
