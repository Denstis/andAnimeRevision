package androidx.lifecycle;

import androidx.lifecycle.a;
import androidx.lifecycle.e;

/* JADX INFO: loaded from: classes.dex */
class ReflectiveGenericLifecycleObserver implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f1046a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a.C0020a f1047b;

    ReflectiveGenericLifecycleObserver(Object obj) {
        this.f1046a = obj;
        this.f1047b = a.f1049c.a(this.f1046a.getClass());
    }

    @Override // androidx.lifecycle.d
    public void a(g gVar, e.a aVar) {
        this.f1047b.a(gVar, aVar, this.f1046a);
    }
}
