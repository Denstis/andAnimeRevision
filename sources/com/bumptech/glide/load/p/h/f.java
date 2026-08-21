package com.bumptech.glide.load.p.h;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<a<?, ?>> f3923a = new ArrayList();

    private static final class a<Z, R> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Class<Z> f3924a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Class<R> f3925b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final e<Z, R> f3926c;

        a(Class<Z> cls, Class<R> cls2, e<Z, R> eVar) {
            this.f3924a = cls;
            this.f3925b = cls2;
            this.f3926c = eVar;
        }

        public boolean a(Class<?> cls, Class<?> cls2) {
            return this.f3924a.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f3925b);
        }
    }

    public synchronized <Z, R> e<Z, R> a(Class<Z> cls, Class<R> cls2) {
        if (cls2.isAssignableFrom(cls)) {
            return g.a();
        }
        for (a<?, ?> aVar : this.f3923a) {
            if (aVar.a(cls, cls2)) {
                return (e<Z, R>) aVar.f3926c;
            }
        }
        throw new IllegalArgumentException("No transcoder registered to transcode from " + cls + " to " + cls2);
    }

    public synchronized <Z, R> void a(Class<Z> cls, Class<R> cls2, e<Z, R> eVar) {
        this.f3923a.add(new a<>(cls, cls2, eVar));
    }

    public synchronized <Z, R> List<Class<R>> b(Class<Z> cls, Class<R> cls2) {
        ArrayList arrayList = new ArrayList();
        if (cls2.isAssignableFrom(cls)) {
            arrayList.add(cls2);
            return arrayList;
        }
        Iterator<a<?, ?>> it = this.f3923a.iterator();
        while (it.hasNext()) {
            if (it.next().a(cls, cls2)) {
                arrayList.add(cls2);
            }
        }
        return arrayList;
    }
}
