package com.bumptech.glide.load.n;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<com.bumptech.glide.load.g, l<?>> f3656a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<com.bumptech.glide.load.g, l<?>> f3657b = new HashMap();

    s() {
    }

    private Map<com.bumptech.glide.load.g, l<?>> a(boolean z) {
        return z ? this.f3657b : this.f3656a;
    }

    l<?> a(com.bumptech.glide.load.g gVar, boolean z) {
        return a(z).get(gVar);
    }

    void a(com.bumptech.glide.load.g gVar, l<?> lVar) {
        a(lVar.f()).put(gVar, lVar);
    }

    void b(com.bumptech.glide.load.g gVar, l<?> lVar) {
        Map<com.bumptech.glide.load.g, l<?>> mapA = a(lVar.f());
        if (lVar.equals(mapA.get(gVar))) {
            mapA.remove(gVar);
        }
    }
}
