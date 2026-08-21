package androidx.lifecycle;

import androidx.lifecycle.e;

/* JADX INFO: loaded from: classes.dex */
public class CompositeGeneratedAdaptersObserver implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c[] f1027a;

    CompositeGeneratedAdaptersObserver(c[] cVarArr) {
        this.f1027a = cVarArr;
    }

    @Override // androidx.lifecycle.d
    public void a(g gVar, e.a aVar) {
        k kVar = new k();
        for (c cVar : this.f1027a) {
            cVar.a(gVar, aVar, false, kVar);
        }
        for (c cVar2 : this.f1027a) {
            cVar2.a(gVar, aVar, true, kVar);
        }
    }
}
