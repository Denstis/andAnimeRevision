package com.bumptech.glide.load.p.c;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public class n implements com.bumptech.glide.load.l<Drawable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.bumptech.glide.load.l<Bitmap> f3831b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f3832c;

    public n(com.bumptech.glide.load.l<Bitmap> lVar, boolean z) {
        this.f3831b = lVar;
        this.f3832c = z;
    }

    private com.bumptech.glide.load.n.v<Drawable> a(Context context, com.bumptech.glide.load.n.v<Bitmap> vVar) {
        return r.a(context.getResources(), vVar);
    }

    public com.bumptech.glide.load.l<BitmapDrawable> a() {
        return this;
    }

    @Override // com.bumptech.glide.load.l
    public com.bumptech.glide.load.n.v<Drawable> a(Context context, com.bumptech.glide.load.n.v<Drawable> vVar, int i2, int i3) {
        com.bumptech.glide.load.n.a0.e eVarC = c.a.a.c.b(context).c();
        Drawable drawable = vVar.get();
        com.bumptech.glide.load.n.v<Bitmap> vVarA = m.a(eVarC, drawable, i2, i3);
        if (vVarA != null) {
            com.bumptech.glide.load.n.v<Bitmap> vVarA2 = this.f3831b.a(context, vVarA, i2, i3);
            if (!vVarA2.equals(vVarA)) {
                return a(context, vVarA2);
            }
            vVarA2.a();
            return vVar;
        }
        if (!this.f3832c) {
            return vVar;
        }
        throw new IllegalArgumentException("Unable to convert " + drawable + " to a Bitmap");
    }

    @Override // com.bumptech.glide.load.g
    public void a(MessageDigest messageDigest) {
        this.f3831b.a(messageDigest);
    }

    @Override // com.bumptech.glide.load.g
    public boolean equals(Object obj) {
        if (obj instanceof n) {
            return this.f3831b.equals(((n) obj).f3831b);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.g
    public int hashCode() {
        return this.f3831b.hashCode();
    }
}
