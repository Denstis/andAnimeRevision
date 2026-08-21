package com.bumptech.glide.load.n.b0;

import android.annotation.SuppressLint;
import com.bumptech.glide.load.n.b0.h;
import com.bumptech.glide.load.n.v;

/* JADX INFO: loaded from: classes.dex */
public class g extends c.a.a.t.g<com.bumptech.glide.load.g, v<?>> implements h {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private h.a f3495d;

    public g(long j2) {
        super(j2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // c.a.a.t.g
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int b(v<?> vVar) {
        return vVar == null ? super.b(null) : vVar.b();
    }

    @Override // com.bumptech.glide.load.n.b0.h
    public /* bridge */ /* synthetic */ v a(com.bumptech.glide.load.g gVar) {
        return (v) super.c(gVar);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.bumptech.glide.load.n.b0.h
    public /* bridge */ /* synthetic */ v a(com.bumptech.glide.load.g gVar, v vVar) {
        return (v) super.b(gVar, vVar);
    }

    @Override // com.bumptech.glide.load.n.b0.h
    @SuppressLint({"InlinedApi"})
    public void a(int i2) {
        if (i2 >= 40) {
            a();
        } else if (i2 >= 20 || i2 == 15) {
            a(b() / 2);
        }
    }

    @Override // com.bumptech.glide.load.n.b0.h
    public void a(h.a aVar) {
        this.f3495d = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // c.a.a.t.g
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(com.bumptech.glide.load.g gVar, v<?> vVar) {
        h.a aVar = this.f3495d;
        if (aVar == null || vVar == null) {
            return;
        }
        aVar.a(vVar);
    }
}
