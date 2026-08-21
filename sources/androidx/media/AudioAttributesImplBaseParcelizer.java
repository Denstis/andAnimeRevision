package androidx.media;

/* JADX INFO: loaded from: classes.dex */
public final class AudioAttributesImplBaseParcelizer {
    public static c read(androidx.versionedparcelable.a aVar) {
        c cVar = new c();
        cVar.f1083a = aVar.a(cVar.f1083a, 1);
        cVar.f1084b = aVar.a(cVar.f1084b, 2);
        cVar.f1085c = aVar.a(cVar.f1085c, 3);
        cVar.f1086d = aVar.a(cVar.f1086d, 4);
        return cVar;
    }

    public static void write(c cVar, androidx.versionedparcelable.a aVar) {
        aVar.a(false, false);
        aVar.b(cVar.f1083a, 1);
        aVar.b(cVar.f1084b, 2);
        aVar.b(cVar.f1085c, 3);
        aVar.b(cVar.f1086d, 4);
    }
}
