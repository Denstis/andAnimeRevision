package com.bumptech.glide.load.p;

import android.content.Context;
import com.bumptech.glide.load.l;
import com.bumptech.glide.load.n.v;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public final class b<T> implements l<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final l<?> f3791b = new b();

    private b() {
    }

    public static <T> b<T> a() {
        return (b) f3791b;
    }

    @Override // com.bumptech.glide.load.l
    public v<T> a(Context context, v<T> vVar, int i2, int i3) {
        return vVar;
    }

    @Override // com.bumptech.glide.load.g
    public void a(MessageDigest messageDigest) {
    }
}
